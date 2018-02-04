package farm3.spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.record.formula.Ptg;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import farm3.spring.model.Member;
import farm3.spring.model.RawMaterial;
import farm3.spring.model.RawMaterialNutrient;
import farm3.spring.model.UnitMedicine;
import farm3.spring.model.UnitRawMaterial;
import farm3.spring.model.UnitTool;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;
import farm3.spring.service.RawMaterialNutrientService;
import farm3.spring.service.RawMaterialService;
import farm3.spring.service.TypeMaterialService;
import farm3.spring.service.UnitMedicineService;
import farm3.spring.service.UnitNutrientService;
import farm3.spring.service.UnitRawMaterialService;
import farm3.spring.service.UnitToolService;
import farm3.spring.model.AlertStorehouse;
import farm3.spring.model.Farm;
import farm3.spring.service.AlertStorehouseService;
import farm3.spring.service.FarmService;
import farm3.spring.service.AlertStorehouseService;
import farm3.spring.service.UnitMedicineService;
import farm3.spring.service.UnitToolService;

@Controller
public class NutrientSettingController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private FarmService farmService;
	@Autowired
	private PrivilegeService privilegeService;
	@Autowired
	private UnitToolService unittoolservice;
	@Autowired
	ServletContext context;
	@Autowired
	private RawMaterialService rawmaterialService;
	@Autowired
	private AlertStorehouseService alertservice;
	@Autowired
	private UnitMedicineService unitMedicineService;
	@Autowired
	private PrivilegeService privilegeservice;
	@Autowired
	private TypeMaterialService typematerialmservice;
	
	@Autowired
	private UnitRawMaterialService unitrawmaterialservice;
	
	@Autowired
	private RawMaterialNutrientService rawmaterialnutrientservice;
	
	@Autowired
	private UnitNutrientService unitnnutrientservice;
	
	
	@RequestMapping("/SetMemberNutrientSystem")
	public ModelAndView SetMember(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("memberlist", memberService.getAllMember());
		ModelAndView model = new ModelAndView("/Nutrient/page/setting/set_member");
		return model;
	}
	@RequestMapping("del_memberN")
	public ModelAndView Setdel_member(@RequestParam int id){
		//System.out.println(id);
		memberService.delete(id);
		ModelAndView model = new ModelAndView("/Nutrient/page/setting/setmember");
		return model;
	}
	
	@RequestMapping("/edit_memberN")
	public ModelAndView edit_member(HttpSession session,Map<String, Object> map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username");
		
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername)); 
		
		map.put("member", memberService.getMember(id));
		map.put("pri", privilegeservice.getAllPrivilege());
		
		ModelAndView model = new ModelAndView("Nutrient/page/setting/edit_member");
		return model;
	}
	@RequestMapping("save_memberN")
	public ModelAndView Setsave(@ModelAttribute Member member){
		memberService.edit(member);
		ModelAndView model = new ModelAndView("Nutrient/page/setting/set_member");
		return model;
	}
	
	@RequestMapping("set_alert_nutrinet") 
	public ModelAndView set_alert(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		
		AlertStorehouse alert = alertservice.getAlertStorehouse(1);
		map.put("alert", alert);
		ModelAndView model = new ModelAndView("Nutrient/page/setting/set_alert");
		return model;
	}
	
	@RequestMapping("set_unit_nutrinet") //˹���
	public ModelAndView set_unit(HttpSession session,Map<String, Object> map)
	{
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		UnitMedicine unitmedicine = new UnitMedicine();
		map.put("Unitmedicine", unitmedicine); 
		UnitRawMaterial unitrawmaterial = new UnitRawMaterial();
		map.put("Unitrawmaterial", unitrawmaterial);
		UnitTool Unittool = new UnitTool();
		map.put("Unittool", Unittool);
		
		map.put("unitmedicine", unitMedicineService.getAllUnitMedicine());
		map.put("unitraw", unitrawmaterialservice.getAllUnitRawMaterial());
		map.put("unittool", unittoolservice.getAllUnitTool());
		ModelAndView model = new ModelAndView("Nutrient/page/setting/set_unit");
		return model;
	}
	
	@RequestMapping("/SetrawmaterialNutrientSystem")
	public ModelAndView Setrawmaterial(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("rawlist", rawmaterialService.getAllRawMaterial());
		ModelAndView model = new ModelAndView("Nutrient/page/setting/setrawmaterial");
		return model;
	}
	@RequestMapping("del_rawN")
	public ModelAndView Setdel_raw(@RequestParam int id){
		//System.out.println(id);
		rawmaterialService.delete(id);
		ModelAndView model = new ModelAndView("/Nutrient/page/setting/setrawmaterial");
		return model;
	}
	@RequestMapping("add_rawN")
	public ModelAndView Setaddraw(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		RawMaterial raw = new RawMaterial();
		map.put("rawmaterial",raw);
		map.put("typeraw", typematerialmservice.getAllTypeMaterial());
		map.put("unit", unitrawmaterialservice.getAllUnitRawMaterial());
		ModelAndView model = new ModelAndView("/Nutrient/page/setting/add_raw");
		return model;
	}
	
	@RequestMapping(value="addrawN")
	public String addraw(@ModelAttribute RawMaterial RawMaterial){
		rawmaterialService.add(RawMaterial);
		
		
		return "redirect:add_raw";
		
	}
	
	@ResponseBody
	@RequestMapping(value="chkRawN")
	public String chkRaw(@RequestParam("name") String name){
		String msg = "yes";
		int chk = rawmaterialService.getRawMaterialByName(name).size();
		if(chk > 0){
			msg ="no";
		}
		return msg;
	}
	@ResponseBody
	@RequestMapping(value="chkRawNU")
	public String chkRaw(@RequestParam("id") int id){
		String msg = "yes";
		int chk = rawmaterialnutrientservice.getCheckRawmaterialById(id).size();
		if(chk > 0){
			msg ="no";
		}
		return msg;
	}
	
	@RequestMapping("edit_rawN")
	public ModelAndView Seteditraw(HttpSession session,Map<String, Object> map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		RawMaterial raw = rawmaterialService.getRawMaterial(id);
		map.put("rawmaterial", raw);
		map.put("rawmaterial",rawmaterialService.getRawMaterial(id));
		map.put("typeraw", typematerialmservice.getAllTypeMaterial());
		map.put("unit", unitrawmaterialservice.getAllUnitRawMaterial());
		ModelAndView model = new ModelAndView("/Nutrient/page/setting/edit_raw");
		return model;
	}
	
	@RequestMapping(value="editraw")
	public String editraw(@ModelAttribute RawMaterial RawMaterial){
		rawmaterialService.edit(RawMaterial);
		return "redirect:Setrawmaterial";
		
	}
	
	
	
	
	@RequestMapping("/SetrawmaterialnutrientNutrientSystem")
	public ModelAndView Setrawmaterialnutrient(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("rawnulist", rawmaterialnutrientservice.getAllRawMaterialNutrient());
		ModelAndView model = new ModelAndView("/Nutrient/page/setting/setrawmaterialnutrient");
		return model;
	}
	
	@RequestMapping("del_rawnu")
	public ModelAndView Setdel_rawnu(@RequestParam int id){
		rawmaterialnutrientservice.delete(id);
		ModelAndView model = new ModelAndView("/Nutrient/page/setting/setrawmaterialnutrient");
		return model;
	}
	
	
	@RequestMapping("edit_rawnu")
	public ModelAndView Seteditrawnu(HttpSession session,Map<String, Object> map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));

		map.put("editrawnu", rawmaterialnutrientservice.getRawMaterialNutrient(id));
		ModelAndView model = new ModelAndView("/Nutrient/page/setting/edit_rawnu");
		return model;
	}
	@RequestMapping("save_rawnu")
	public ModelAndView Setsaverawnu(@ModelAttribute RawMaterialNutrient rawMaterialNutrient){
		rawmaterialnutrientservice.edit(rawMaterialNutrient);
		ModelAndView model = new ModelAndView("redirect:Setrawmaterialnutrient");
		return model;
	}
	
	@RequestMapping("add_rawnu")
	public ModelAndView Setaddrawnu(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		RawMaterialNutrient rawnu = new RawMaterialNutrient();
		map.put("rawmaterialnutrient",rawnu);
		map.put("raw", rawmaterialService.getAllRawMaterial());
		map.put("unitnu", unitnnutrientservice.getAllUnitNutrient());
		ModelAndView model = new ModelAndView("/Nutrient/page/setting/add_rawnu");
		return model;
	}
	
	@RequestMapping(value="addrawnu")
	public String addrawnu(@ModelAttribute RawMaterialNutrient rawMaterialNutrient){
		rawmaterialnutrientservice.add(rawMaterialNutrient);
		
		
		return "redirect:add_rawnu";
		
	}
	
	@RequestMapping("/setbrandNutrientSystem")
	public ModelAndView set_brand(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("farm",farmService.getFarm(1));
		ModelAndView model = new ModelAndView("/Nutrient/page/setting/set_brand");
		return model;
	}
	
	@RequestMapping(value="saveBrandN",method=RequestMethod.POST)
	public String saveBrand(@RequestParam( value="file", required=false) MultipartFile file,
						@RequestParam("nameThai") String nameThai,@RequestParam("nameEng") String nameEng,
						@RequestParam("shotName") String shotName,@RequestParam("phone") String phone,
						@RequestParam("address") String address,
						Map<String, Object> map){
		String logo = "logo.jpg";
		
		Farm farm = farmService.getFarm(1);
		farm.setNameThai(nameThai);
		farm.setNameEng(nameEng);
		farm.setShotName(shotName);
		farm.setAddress(address);
		farm.setPhone(phone);
		farmService.edit(farm);
		if (!file.isEmpty()) {
            try {  
            	byte[] bytes = file.getBytes();

            	String uploadPath = context.getRealPath("")+File.separator+"img/img_brand";
            	File dir = new File(uploadPath);
            /*    File dir2 = new File("monitoring/WEB-INF/classes/img/img_brand");*/
            
                  String result=dir.getAbsolutePath() + File.separator+logo;
   
            	  
            	  if (!dir.exists())
                  {   dir.mkdirs(); }
                  BufferedOutputStream stream =
                          new BufferedOutputStream(new FileOutputStream(new File(result)));

                  
                  stream.write(bytes);
                  stream.close();
                  System.out.println(result);
     
            } catch (Exception e) {
            	
            	return "Nutrient/page/error";
            }
		}
		
		return "Nutrient/page/success";
	}
	
}
