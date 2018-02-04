package farm3.spring.controller;

import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.persistence.Entity;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import farm3.spring.service.MedicineService;
import farm3.spring.service.UnitMedicineService;
import farm3.string.Util;
import farm3.spring.model.Medicine;
import farm3.spring.model.MedicineImport;
import farm3.spring.model.MedicineOrder;
import farm3.spring.model.MedicineRelease;
import farm3.spring.model.RawMaterial;
import farm3.spring.service.GroupMedicineService;
import farm3.spring.service.MedicineImportService;
import farm3.spring.service.MedicineOrderService;
import farm3.spring.service.MedicineReleaseService;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;


@Controller
public class StorehouseMedicineController {
	@Autowired
	private MedicineImportService medicineimportservice;
	@Autowired
	private MedicineReleaseService medicinereleaseservice;
	@Autowired
	private MedicineOrderService medicineorderservice;
	@Autowired
	private MemberService memberService;
	@Autowired
	private PrivilegeService privilegeService;
	@Autowired
	private MedicineService medicineservice;
	@Autowired
	private GroupMedicineService groupmedicineservice;
	@Autowired
	private UnitMedicineService unitmedicineservice;
	
	@RequestMapping("/stock_medicine")//�٤�ѧ��
	public ModelAndView stock_medicine(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Medicine medicine = new Medicine();
		map.put("medicine", medicineservice.getAllMedicine());
		ModelAndView model = new ModelAndView("Storehouse/page/medicine/stock_medicine");
		return model;
	}
	@RequestMapping("/import_medicine") //�������
	public ModelAndView import_medicine(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("medicine", medicineservice.getAllMedicine());
		map.put("medimport", medicineimportservice.getAllMedicineImport());
		
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String day = sdfDate.format(date);
		map.put("day", day);
		ModelAndView model = new ModelAndView("Storehouse/page/medicine/import_medicine");
		return model;
	}
	@RequestMapping(value="imported_medicine",method = RequestMethod.POST)
	public String imported_medicine(@RequestParam("memberid") int memberid,
			@RequestParam("Medicineid") int Medicineid,
			@RequestParam("beforeQuantity") int beforeQuantity,
			@RequestParam("quantity") int quantity,
			@RequestParam("day") String day,
			@RequestParam("dayMFD") String dayMFD,
			@RequestParam("dayEXP") String dayEXP,
			@RequestParam("import") String import_,
			@RequestParam("place") String place,
			Map<String, Object> map) {
		
		int total = beforeQuantity + quantity;
		Medicine med = medicineservice.getMedicine(Medicineid);
		med.setQuantity(total);
		med.setStatusalert(0);
		medicineservice.edit(med);
		
		MedicineImport medimport = new MedicineImport();
		medimport.setMember(memberService.getMember(memberid));
		medimport.setDay(day);
		medimport.setMedicine(medicineservice.getMedicine(Medicineid));
		medimport.setBeforeQuantity(beforeQuantity);
		medimport.setQuantity(quantity);
		medimport.setDayMfd(dayMFD);
		medimport.setDayExp(dayEXP);
		medimport.setImportMedicine(import_);
		medimport.setPlace(place);
		medimport.setStatus(0);
		
		medicineimportservice.add(medimport);
		return "redirect:import_medicine";
	}
	@RequestMapping("cancle_imported_medicine")
	public String cancle_imported_medicine(@RequestParam("id") int id){
		MedicineImport medimport = medicineimportservice.getMedicineImport(id);
		int medicineid = medimport.getMedicine().getId();
		Medicine med = medicineservice.getMedicine(medicineid);
		int quantityStock = med.getQuantity();
		int quantityimport = medimport.getQuantity();
		med.setQuantity(quantityStock-quantityimport);
		medicineservice.edit(med);
		medicineimportservice.delete(id);
		return "redirect:import_medicine";
	}
	
	@RequestMapping("/listMedUnit") //listunit raw
	public @ResponseBody String listMedUnit(Model model,@RequestParam int id) {
		Medicine med = medicineservice.getMedicine(id);
		
		//System.out.println();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = Util.encodeUnicode(gson.toJson(med));
	 return json;
	}
	
	
	@RequestMapping("/release_medicine")//�ԡ��
	public ModelAndView release_medicine(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("medicine", medicineservice.getAllMedicineForRelease());
		map.put("listrelease", medicinereleaseservice.getAllMedicineRelease());
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String day = sdfDate.format(date);
		map.put("day", day);
		ModelAndView model = new ModelAndView("Storehouse/page/medicine/release_medicine");
		return model;
	}
	@RequestMapping("/Saverelease_medicine")
	public String Saverelease_medicine(@RequestParam("id") int idd,
										@RequestParam("day") String day,
										@RequestParam("quantity") int quantity,
										Map<String, Object> map,HttpSession session){
		
		String sessionUsername = (String)session.getAttribute("username");
		int memberid = memberService.getMemberByUser(sessionUsername).getId();
		Medicine med = medicineservice.getMedicine(idd);
		int quantityMed = medicineservice.getMedicine(idd).getQuantity();
		int total = quantityMed - quantity;
		med.setQuantity(total);
		medicineservice.edit(med);
		MedicineRelease Medrelease = new MedicineRelease();
		Medrelease.setMember(memberService.getMember(memberid));
		Medrelease.setQuantity(quantity);
		Medrelease.setDay(day);
		Medrelease.setMedicine(medicineservice.getMedicine(idd));
		medicinereleaseservice.add(Medrelease);
		
		return "redirect:release_medicine";
	}
	@RequestMapping("cancle_release_medicine")
	public String cancle_release_medicine(@RequestParam int id){
		MedicineRelease medre = medicinereleaseservice.getMedicineRelease(id);
		int medicineid = medicinereleaseservice.getMedicineRelease(id).getMedicine().getId();
		Medicine med = medicineservice.getMedicine(medicineid);
		int quantityRelease = medre.getQuantity();
		int quantityStock = med.getQuantity();
		med.setQuantity(quantityRelease+quantityStock);
		medicineservice.edit(med);
		medicinereleaseservice.delete(id);
		//System.out.println(quantityRelease+"  "+quantityStock);
		return "redirect:release_medicine";
	}

	@RequestMapping("/view_medicine") //˹�� view ��������
	public ModelAndView view_medicine(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Medicine medicine = new Medicine();
		map.put("show", medicine);
		map.put("list", medicineservice.getAllMedicine());
		map.put("group", groupmedicineservice.getAllGroupMedicine());
		map.put("unit", unitmedicineservice.getAllUnitMedicine());
		ModelAndView model = new ModelAndView("Storehouse/page/medicine/view_medicine");
		return model;
	}
	@RequestMapping("/add_medicine")  
	public ModelAndView add_medicine(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Medicine medicine = new Medicine();
		map.put("show", medicine);
		map.put("medicinelist", medicineservice.getAllMedicine());
		map.put("groupmed", groupmedicineservice.getAllGroupMedicine());
		map.put("typemed",groupmedicineservice.getAllGroupMedicine());
		map.put("un", unitmedicineservice.getAllUnitMedicine());
		ModelAndView model = new ModelAndView("Storehouse/page/medicine/add_medicine");
		return model;
	}
	@ResponseBody 
	@RequestMapping(value="chkMed")
	public String chkTool(@RequestParam("name") String tradname){
		String msg ="yes";
		int chk = medicineservice.getMedicineByTradname(tradname).size();
		if(chk>0){
			msg="no";
		}
		return msg; 
	}
	@ResponseBody 
	@RequestMapping(value="addmedi",method = RequestMethod.POST)
	public String addmedi(@ModelAttribute Medicine Medicine){
		Medicine.setMedicineSuccess(0);
		Medicine.setMedicineLost(0);
		medicineservice.add(Medicine); 
		return null;
	}
	@RequestMapping("/detail_medicine") 
	public ModelAndView detail_medicine(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("medicinelist", medicineservice.getMedicine(id));
		ModelAndView model = new ModelAndView("Storehouse/page/medicine/detail_medicine");
		return model;
	}
	@RequestMapping("/edit_medicine")
	public ModelAndView edit_medicine(HttpSession session,Map<String, Object> map,@RequestParam("id") int id) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Medicine medicine = medicineservice.getMedicine(id);
		map.put("medicine", medicine);
		map.put("groupmed", groupmedicineservice.getAllGroupMedicine());
		map.put("un", unitmedicineservice.getAllUnitMedicine());
		ModelAndView model = new ModelAndView("Storehouse/page/medicine/edit_medicine");
		return model;
	}
	@RequestMapping("/edited_medicine")
	public String edited_medicine(HttpSession session,Map<String, Object> map,@ModelAttribute Medicine medicine) {
		
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		medicineservice.edit(medicine);
		return "redirect:view_medicine";
	}
	@RequestMapping("/del_medicine")
	public String del_medicine(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		medicineservice.delete(id);return "redirect:view_medicine";
	}
}
