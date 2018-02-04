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
public class HealthCareMedicineController {
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
	
	@RequestMapping("/view_medicineH") //˹�� view ��������
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
		ModelAndView model = new ModelAndView("HealthCare/medicine/view_medicineH");
		return model;
	}
	@RequestMapping("/add_medicineH") //�˹�� add �������� 
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
		ModelAndView model = new ModelAndView("HealthCare/medicine/add_medicineH");
		return model;
	}
	
	@RequestMapping("/release_medicineH")//�ԡ��
	public ModelAndView release_medicineH(HttpSession session,Map<String, Object> map) {
		
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
		ModelAndView model = new ModelAndView("HealthCare/medicine/release_medicine");
		return model;
	}
	
	@RequestMapping("/medicinesh")
	public ModelAndView medicinesh(HttpSession session,Map<String, Object> map) {
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
		//map.put("properties", propertiesmedicineservice.getAllUnitMedicine());
		ModelAndView model = new ModelAndView("HealthCare/medicine/medicinesh");
		return model;
	}
	
	@ResponseBody //ત���ͫ��
	@RequestMapping(value="chkMedH")
	public String chkTool(@RequestParam("name") String tradname){
		String msg ="yes";
		int chk = medicineservice.getMedicineByTradname(tradname).size();
		if(chk>0){
			msg="no";
		}
		return msg; 
	}
	@ResponseBody //�ѹ�֡����������� �觢�������Ҵҵ������
	@RequestMapping(value="addmediH",method = RequestMethod.POST)
	public String addmedi(@ModelAttribute Medicine Medicine){
		Medicine.setMedicineSuccess(0);
		Medicine.setMedicineLost(0);
		medicineservice.add(Medicine); //add ����������
		return null;
	}
	@RequestMapping("/detail_medicineH") //˹�� view ��������
	public ModelAndView detail_medicine(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("medicinelist", medicineservice.getMedicine(id));
		ModelAndView model = new ModelAndView("HealthCare/medicine/detail_medicineH");
		return model;
	}
	

	@RequestMapping("/edit_medicineH")
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
		ModelAndView model = new ModelAndView("HealthCare/medicine/edit_medicineH");
		return model;
	}
	
	@RequestMapping("/edited_medicineH")
	public String edited_medicine(HttpSession session,Map<String, Object> map,@ModelAttribute Medicine medicine) {
		
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		medicineservice.edit(medicine);
		return "redirect:view_medicineH";
	}
	@RequestMapping("/del_medicineH")
	public String del_medicine(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		medicineservice.delete(id);return "redirect:view_medicineH";
	}
	
	@RequestMapping("/order_medicine")//��觫�����
	public ModelAndView order_medicine(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		MedicineOrder mediorder = new MedicineOrder();
		map.put("ordermed",mediorder);
		map.put("medicine", medicineservice.getAllMedicine());
		map.put("listrder", medicineorderservice.getAllMedicineOrder());
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String day = sdfDate.format(date);
		map.put("day", day);
		ModelAndView model = new ModelAndView("HealthCare/medicine/order_medicineH");
		return model;
	}
	@RequestMapping("/ordered_medicine")//��觫�����
	public String ordered_medicine(@ModelAttribute MedicineOrder medorder) {
		medicineorderservice.add(medorder);
		return "redirect:order_medicineH";
	}
	@RequestMapping("cancle_order_medicine")//��觫�����
	public String cancle_order_medicine(@RequestParam int id) {
		medicineorderservice.delete(id);
		return "redirect:order_medicineH";
	}
	

		
}
