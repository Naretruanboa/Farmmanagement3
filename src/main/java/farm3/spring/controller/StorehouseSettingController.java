package farm3.spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import farm3.spring.model.AlertStorehouse;
import farm3.spring.service.AlertStorehouseService;
import farm3.spring.service.FarmService;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;
import farm3.spring.model.UnitMedicine;
import farm3.spring.model.UnitRawMaterial;
import farm3.spring.model.UnitTool;
import farm3.spring.service.UnitMedicineService;
import farm3.spring.service.UnitRawMaterialService;
import farm3.spring.service.UnitToolService;
import farm3.spring.model.Farm;
import farm3.spring.model.TypeMaterial;
import farm3.spring.model.TypeTool;
import farm3.spring.service.BreedService;
import farm3.spring.service.ColorService;
import farm3.spring.model.Breed;
import farm3.spring.model.Color;
import farm3.spring.service.TypeMaterialService;
import farm3.spring.service.TypeToolService;
import farm3.spring.model.Member;


@Controller
public class StorehouseSettingController {
	@Autowired
	ServletContext context; 
	@Autowired
	private MemberService memberService;
	@Autowired
	private PrivilegeService privilegeservice;
	@Autowired
	private FarmService farmservice;
	@Autowired
	private AlertStorehouseService alertservice;
	@Autowired
	private UnitMedicineService unitMedicineService;
	@Autowired
	private UnitRawMaterialService unitrawmaterialservice;
	@Autowired
	private UnitToolService unittoolservice;
	@Autowired
	private TypeToolService typetoolservice;
	@Autowired
	private TypeMaterialService typematerialservice;
	@Autowired
	private ColorService colorservice;
	@Autowired
	private BreedService breedservice;
	
	
	@RequestMapping("/set_brand")
	public ModelAndView set_brand(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("farm",farmservice.getFarm(1));
		ModelAndView model = new ModelAndView("Storehouse/page/setting/set_brand");
		return model;
	}
	
	@RequestMapping(value="saveBrand",method=RequestMethod.POST)
	public String saveBrand(@RequestParam( value="file", required=false) MultipartFile file,
						@RequestParam("nameThai") String nameThai,@RequestParam("nameEng") String nameEng,
						@RequestParam("shotName") String shotName,@RequestParam("phone") String phone,
						@RequestParam("address") String address,
						Map<String, Object> map){
		String logo = "logo.jpg";
		
		Farm farm = farmservice.getFarm(1);
		farm.setNameThai(nameThai);
		farm.setNameEng(nameEng);
		farm.setShotName(shotName);
		farm.setAddress(address);
		farm.setPhone(phone);
		farmservice.edit(farm);
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
            	
            	return "Storehouse/page/error";
            }
		}
		
		return "Storehouse/page/success";
	}
	
	
	@RequestMapping("set_TypeMaterial")
	public ModelAndView set_TypeMaterial(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername)); 
		map.put("type",typematerialservice.getAllTypeMaterial());
		TypeMaterial addTypeMaterial = new TypeMaterial();
		map.put("addTypeMaterial", addTypeMaterial);
		ModelAndView model = new ModelAndView("Storehouse/page/setting/set_TypeMaterial");
		return model;
	}
	@RequestMapping("set_TypeTool")
	public ModelAndView set_TypeTool(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername)); 
		map.put("typetool",typetoolservice.getAllTypeTool());
		TypeTool addTypeTool = new TypeTool();
		map.put("addTypeTool", addTypeTool);
		ModelAndView model = new ModelAndView("Storehouse/page/setting/set_TypeTool");
		return model;
	}
	@RequestMapping("set_BreedandColor")
	public ModelAndView set_BreedandColor(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername)); 
		map.put("color",colorservice.getAllColor());
		map.put("breed",breedservice.getAllBreed());
		Color color = new Color();
		Breed breed = new Breed();
		map.put("addcolor", color);
		map.put("addbreed", breed);
		ModelAndView model = new ModelAndView("Storehouse/page/setting/set_BreedandColor");
		return model;
	}
	
	@RequestMapping("/set_unit") //˹���
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
		ModelAndView model = new ModelAndView("Storehouse/page/setting/set_unit");
		return model;
	}
	@RequestMapping(value="addUnitMedicine",method = RequestMethod.POST)
	public String addUnitMedicine(@ModelAttribute UnitMedicine unitmedicine,Map<String, Object> map){
			unitMedicineService.add(unitmedicine);
			return "redirect:set_unit";
	}
	@RequestMapping(value="addUnitRaw",method = RequestMethod.POST)
	public String addUnitMedicine(@ModelAttribute UnitRawMaterial unitrawmaterial ,Map<String, Object> map){
		unitrawmaterialservice.add(unitrawmaterial);
			return "redirect:set_unit";
	}
	@RequestMapping(value="addUnitTool",method = RequestMethod.POST)
	public String addUnitMedicine(@ModelAttribute UnitTool unittool,Map<String, Object> map){
		unittoolservice.add(unittool);
			return "redirect:set_unit";
	}
	
	@RequestMapping("/del_unit_medicine")
	public String del_unit_medicine(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		unitMedicineService.delete(id);
		return "redirect:set_unit";
	}
	@RequestMapping("/del_unit_raw") //�ѹ����ͧ�ͺ���������ա��
	public String del_unit_raw(Model model,@RequestParam int id)
	{
		unitrawmaterialservice.delete(id);
		return "redirect:set_unit";
	}
	
	@RequestMapping("/del_unit_tool")
	public String del_unit_tool(HttpSession session,Map<String, Object> map,@RequestParam int id) {

		unittoolservice.delete(id);
		return "redirect:set_unit";
	}
	
	@RequestMapping("/set_member") 
	public ModelAndView set_member(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername)); 
		
		map.put("ulistAll", memberService.getAllMember());
		//map.put("plist", privilegeservice.getAllPrivilege());
		ModelAndView model = new ModelAndView("Storehouse/page/setting/set_member");
		return model;
	}
	@RequestMapping("/del_member")
	public String del_member(@RequestParam int id){
		memberService.delete(id);
		return "page/setting/set_member";
	}
	@RequestMapping("/edit_member")
	public ModelAndView edit_member(HttpSession session,Map<String, Object> map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username");
		
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername)); 
		
		map.put("member", memberService.getMember(id));
		map.put("pri", privilegeservice.getAllPrivilege());
		
		ModelAndView model = new ModelAndView("Storehouse/page/setting/edit_member");
		return model;
	}
	
	
	@RequestMapping("set_alert") 
	public ModelAndView set_alert(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		
		AlertStorehouse alert = alertservice.getAlertStorehouse(1);
		map.put("alert", alert);
		ModelAndView model = new ModelAndView("Storehouse/page/setting/set_alert");
		return model;
	}
	@RequestMapping("/seted_alert")
	public String seted_alert(HttpSession session,Map<String, Object> map,@ModelAttribute AlertStorehouse alert) {
		alertservice.edit(alert);
		return "redirect:set_alert"; 
	}
	
	@RequestMapping("addTypeMaterial")
	public String addTypeMaterial(@ModelAttribute TypeMaterial typematerial){
		typematerialservice.add(typematerial);
		return "redirect:set_TypeMaterial";
	}
	@RequestMapping("DelTypeMaterial")
	public String DelTypeMaterial(int id){
		typematerialservice.delete(id);
		return "redirect:set_TypeMaterial";
	}
	@RequestMapping("addTypeTool")
	public String addTypeTool(@ModelAttribute TypeTool TypeTool){
		typetoolservice.add(TypeTool);
		return "redirect:set_BreedandColor";
	}
	@RequestMapping("DelTypeTool")
	public String DelTypeTool(int id){
		typetoolservice.delete(id);
		return "redirect:set_TypeTool";
	}
	@RequestMapping("addColor")
	public String addColor(@ModelAttribute Color color){
		colorservice.add(color);
		return "redirect:set_BreedandColor";
	}
	@RequestMapping("addBreed")
	public String addBreed(@ModelAttribute Breed breed){
		breedservice.add(breed);
		return "redirect:set_BreedandColor";
	}
	@RequestMapping("DelBreed")
	public String DelBreed(int id){
		breedservice.delete(id);
		return "redirect:set_BreedandColor";
	}
	@RequestMapping("DelColor")
	public String DelColor(int id){
		colorservice.delete(id);
		return "redirect:set_BreedandColor";
	}
	
	//check
		@ResponseBody
		@RequestMapping(value="checkColor",method = RequestMethod.POST)
		public String checkColor(@RequestParam("color") String value){
			String msg ="yes";
			int chk = colorservice.getAllColorByValue(value).size();
			if(chk>0){
				msg="no";
			}
			return msg; 
		}
		@ResponseBody
		@RequestMapping(value="checkBreed",method = RequestMethod.POST)
		public String checkBreed(@RequestParam("breed") String value){
			String msg ="yes";
			int chk = breedservice.getBreedByValue(value).size();
			if(chk>0){
				msg="no";
			}
			return msg; 
		}
		@ResponseBody
		@RequestMapping(value="chkUnitTool",method = RequestMethod.POST)
		public  String chkUnitTool(@RequestParam("unit") String value){
			String msg ="yes";
			int chk = unittoolservice.getUnitToolByValue(value).size();
			if(chk>0){
				msg="no";
			}
			return msg; 
		}
		@ResponseBody
		@RequestMapping(value="chkUnitRaw",method = RequestMethod.POST)
		public  String chkUnitRaw(@RequestParam("unit") String value){
			String msg ="yes";
			int chk = unitrawmaterialservice.getUnitRawMaterialByValue(value).size();
			if(chk>0){
				msg="no";
			}
			return msg; 
		}
		@ResponseBody
		@RequestMapping(value="chkUnitMed",method = RequestMethod.POST)
		public  String chkUnitMed(@RequestParam("unit") String value){
			String msg ="yes";
			int chk = unitMedicineService.getcheckUnitMedicineByvalue(value).size();
			if(chk>0){
				msg="no";
			}
			return msg; 
		}
		@ResponseBody
		@RequestMapping(value="chkTypeTool",method = RequestMethod.POST)
		public  String chkTypeTool(@RequestParam("unit") String value){
			String msg ="yes";
			int chk = typetoolservice.getTypeToolByValue(value).size();
			if(chk>0){
				msg="no";
			}
			return msg; 
		}
		@ResponseBody
		@RequestMapping(value="chkTypeMaterial",method = RequestMethod.POST)
		public  String chkTypeMaterial(@RequestParam("unit") String value){
			String msg ="yes";
			int chk = typematerialservice.getTypeMaterialByValue(value).size();
			if(chk>0){
				msg="no";
			}
			return msg; 
		}
}
