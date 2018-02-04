package farm3.spring.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;


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

import farm3.spring.model.RawMaterial;
import farm3.spring.model.RawMaterialImport;
import farm3.spring.model.RawMaterialOrder;
import farm3.spring.model.RawMaterialRelease;
import farm3.spring.service.MemberService;
import farm3.spring.service.RawMaterialImportService;
import farm3.spring.service.RawMaterialOrderService;
import farm3.spring.service.RawMaterialReleaseService;
import farm3.spring.service.RawMaterialService;
import farm3.spring.service.TypeMaterialService;
import farm3.spring.service.UnitRawMaterialService;
import farm3.string.Util;

@Controller
public class StorehouseRawmaterialController {
	@Autowired
	private RawMaterialImportService rawimportservice;
	@Autowired
	private RawMaterialReleaseService rawreleaseservice;
	@Autowired
	private RawMaterialOrderService raworderservice;
	@Autowired
	private MemberService memberService;
	@Autowired
	private RawMaterialService rawmaterialservice;
	@Autowired
	private TypeMaterialService typematerialservice;	
	@Autowired
	private UnitRawMaterialService unitrawmaterialservice;
	
	@RequestMapping("/stock_raw") //Stock Raw
	public ModelAndView stock_raw(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		RawMaterial raw = new RawMaterial();
		map.put("rawmaterial", rawmaterialservice.getAllRawMaterial());
		ModelAndView model = new ModelAndView("Storehouse/page/raw_material/stock_raw");
		return model;
	}
	
	@RequestMapping("/import_raw") //�����
	public ModelAndView import_raw(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("rawmaterial", rawmaterialservice.getAllRawMaterial());
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String re = sdfDate.format(date);
		map.put("day", re);
		map.put("rawimport", rawimportservice.getAllRawMaterialImport());
		ModelAndView model = new ModelAndView("Storehouse/page/raw_material/import_raw");
		return model;
	}
	@RequestMapping(value="imported_raw",method = RequestMethod.POST)
	public String imported_raw(@RequestParam("memberid") int memberid,
			@RequestParam("RawMaterialid") int RawMaterialid,
			@RequestParam("beforeQuantity") int beforeQuantity,
			@RequestParam("quantity") int quantity,
			@RequestParam("day") String day,
			@RequestParam("dayMFD") String dayMFD,
			@RequestParam("dayEXP") String dayEXP,
			@RequestParam("import") String import_,
			@RequestParam("place") String place,
			Map<String, Object> map) {
		
		/*SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
	    Date now = new Date();
	    String dayimport = sdfDate.format(now);
	    String newday;
		if(day==""){
			newday=dayimport;
		}else{
			newday=day;
		}	*/    
		  int total = beforeQuantity + quantity;
		  RawMaterial raw = rawmaterialservice.getRawMaterial(RawMaterialid);
		  raw.setQuantity(total);
		  raw.setStatusalert(0);
		  rawmaterialservice.edit(raw);
		  
		  RawMaterialImport rawimport = new RawMaterialImport();
		  rawimport.setMember(memberService.getMember(memberid));
		  rawimport.setDay(day);
		  rawimport.setRawMaterial(rawmaterialservice.getRawMaterial(RawMaterialid));
		  rawimport.setBeforeQuantity(beforeQuantity);
		  rawimport.setQuantity(quantity);
		  rawimport.setDayMfd(dayMFD);
		  rawimport.setDayExp(dayEXP);
		  rawimport.setImportRaw(import_);
		  rawimport.setPlace(place);
		  rawimport.setStatus(0);
		  rawimportservice.add(rawimport);
		  
		return "redirect:import_raw";
	}
	@RequestMapping(value="cancle_import_raw")
	public String cancle_import_raw(@RequestParam("id") int id){
		RawMaterialImport rawim = rawimportservice.getRawMaterialImport(id);
		int rawid = rawim.getRawMaterial().getId();
		RawMaterial raw = rawmaterialservice.getRawMaterial(rawid);
		
		int quantityStock = raw.getQuantity();
		int quantityimport = rawim.getQuantity();
		raw.setQuantity(quantityStock-quantityimport);
		rawmaterialservice.edit(raw);
		rawimportservice.delete(id);
		
		//System.out.println(rawid);
		return "redirect:import_raw";
	}
	
	@RequestMapping("/listRawUnit") //listunit raw
	public @ResponseBody String listRawUnit(Model model,@RequestParam int id) {
		//System.out.println("IDdddd+===="+id);
		RawMaterial raw = rawmaterialservice.getRawMaterial(id);
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = Util.encodeUnicode(gson.toJson(raw));
	 return json;
	}
	@RequestMapping("/release_raw") //�ԡ
	public ModelAndView release_raw(HttpSession session,Map<String, Object> map) {

		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("rawmaterial", rawmaterialservice.getAllRawMaterialForRelease());
		map.put("listrelease", rawreleaseservice.getAllRawMaterialRelease());
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String re = sdfDate.format(date);
		map.put("day", re);
		ModelAndView model = new ModelAndView("Storehouse/page/raw_material/release_raw");
		return model;
	}
	
	@RequestMapping("/Saverelease_raw") //�ѹ�֡����ԡ
	public String Saverelease_raw(@RequestParam("id") int id,
									@RequestParam("day") String day,
									@RequestParam("quantity") int quantity,
									Map<String, Object> map,HttpSession session)
	{
		String sessionUsername = (String)session.getAttribute("username");
		int memberid = memberService.getMemberByUser(sessionUsername).getId(); //get id member ��
		
		RawMaterial raw = rawmaterialservice.getRawMaterial(id);
		int quantityRaw = rawmaterialservice.getRawMaterial(id).getQuantity();
		int total = quantityRaw - quantity;
		raw.setQuantity(total);
		rawmaterialservice.edit(raw);
		
		RawMaterialRelease rawrelease = new RawMaterialRelease();
		rawrelease.setMember(memberService.getMember(memberid));
		rawrelease.setQuantity(quantity);
		rawrelease.setDay(day);
		rawrelease.setRawMaterial(rawmaterialservice.getRawMaterial(id));
		rawreleaseservice.add(rawrelease);
		
		//System.out.println(id+day+quantity);
		return "redirect:release_raw";
	}
	@RequestMapping("cancle_release_raw")
	public String cancle_release_raw(@RequestParam int id){
		int quantityStock = rawreleaseservice.getRawMaterialRelease(id).getRawMaterial().getQuantity();
		int quantityRelease = rawreleaseservice.getRawMaterialRelease(id).getQuantity();
		int rawid = rawreleaseservice.getRawMaterialRelease(id).getRawMaterial().getId();
		RawMaterial raw = rawmaterialservice.getRawMaterial(rawid);
		raw.setQuantity(quantityStock+quantityRelease);
		rawmaterialservice.edit(raw);
		rawreleaseservice.delete(id);
		//System.out.println(rawid);
		return "redirect:release_raw";
	}
	
	@RequestMapping("/order_raw") //��觫���
	public ModelAndView order_raw(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("rawmaterial", rawmaterialservice.getAllRawMaterial());
		map.put("listorderraw", raworderservice.getAllRawMaterialOrder());
		RawMaterialOrder raworder = new RawMaterialOrder();
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String re = sdfDate.format(date);
		map.put("day", re);
		map.put("orderraw", raworder);
		ModelAndView model = new ModelAndView("Storehouse/page/raw_material/order_raw");
		return model;
	}
	@RequestMapping("/ordered_raw") //��觫���
	public String ordered_raw(@ModelAttribute RawMaterialOrder orderraw) {
		raworderservice.add(orderraw);
		return "redirect:order_raw";
	}
	@RequestMapping("cancle_order_raw") 
	public String cancle_order_raw(@RequestParam int id) {
		raworderservice.delete(id);
		return "redirect:order_raw";
	}
	
	@RequestMapping("/view_raw") //˹�Ҵ٢������ѵ�شԺ
	public ModelAndView view_raw(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		RawMaterial rawmaterial = new RawMaterial();
		map.put("rawmaterial", rawmaterialservice.getAllRawMaterial());
		ModelAndView model = new ModelAndView("Storehouse/page/raw_material/view_raw");
		return model;
	}		
	
	@RequestMapping("/add_raw") //ŧ����¹�ѵ�شԺ
	public ModelAndView add_raw(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		
		RawMaterial rawmaterial = new RawMaterial();
		map.put("rawmaterial",rawmaterial);//�������ʹ
		map.put("typeraw", typematerialservice.getAllTypeMaterial());      //�������͡�����   �������ѵ�شԺ
		map.put("unitraw", unitrawmaterialservice.getAllUnitRawMaterial());  //�������͡����� ˹��·����㹤�ѧ
		ModelAndView model = new ModelAndView("Storehouse/page/raw_material/add_raw");
		return model;
	}
	@ResponseBody //ત���ͫ��
	@RequestMapping(value="chkRaw",method = RequestMethod.POST)
	public String chkRaw(@RequestParam("name") String name){
		String msg ="yes";
		int chk = rawmaterialservice.getRawMaterialByName(name).size();
		if(chk>0){
			msg="no";
		}
		return msg;
	}
	@RequestMapping(value="addraw",method = RequestMethod.POST)
	public String addraw(@ModelAttribute RawMaterial RawMaterial, Map<String, Object> map){
		rawmaterialservice.add(RawMaterial);
		return "redirect:add_raw";

	}
	
	@RequestMapping("/edit_raw")
	public ModelAndView edit_raw(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		RawMaterial rawmaterial = rawmaterialservice.getRawMaterial(id);
		map.put("rawmaterial", rawmaterial);
		map.put("typeraw", typematerialservice.getAllTypeMaterial());      //�������͡�����   �������ѵ�شԺ
		map.put("unitraw", unitrawmaterialservice.getAllUnitRawMaterial());  //�������͡����� ˹��·����㹤�ѧ
		ModelAndView model = new ModelAndView("Storehouse/page/raw_material/edit_raw");
		return model;
	}
	@RequestMapping("/edited_raw")
	public String edited_raw(HttpSession session,Map<String, Object> map,@ModelAttribute RawMaterial rawmaterial) {
		
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		rawmaterialservice.edit(rawmaterial);
		return "redirect:view_raw";
	}
	
	@RequestMapping("/del_raw")
	public String del_raw(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		rawmaterialservice.delete(id);
		return "redirect:view_raw";
	}

}
