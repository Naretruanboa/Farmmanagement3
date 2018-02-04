package farm3.spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import farm3.spring.model.Member;
import farm3.spring.model.Stall;
import farm3.spring.model.Color;
import farm3.spring.model.GroupMedicine;
import farm3.spring.model.Breed;
import farm3.spring.model.Sync;
import farm3.spring.model.TypeAlert;
import farm3.spring.model.TypeSync;
import farm3.spring.service.ColorService;
import farm3.spring.service.GroupMedicineService;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;
import farm3.spring.service.StallService;
import farm3.spring.service.BreedService;
import farm3.spring.service.SyncService;
import farm3.spring.service.TypeAlertService;
import farm3.spring.service.TypeSyncService;
import farm3.spring.model.Farm;
import farm3.spring.service.FarmService;


@Controller
public class HealthCareSettingController {
	
	
	@Autowired
	ServletContext context;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private GroupMedicineService groupmedicineservice;
	
	@Autowired
	private TypeAlertService typealertservice;
	
	@Autowired
	private BreedService statusbreedservice;
	
	@Autowired
	private ColorService colorservice;
	
	@Autowired
	private PrivilegeService privilegeservice;
	
	@Autowired
	private TypeSyncService typesyncservice;
	
	@Autowired
	private SyncService syncservice;
	
	@Autowired 
	private FarmService farmService;
	
	@Autowired 
	private StallService stallserviece;
	
	
	
	@RequestMapping(value="set_medicine",method=RequestMethod.GET)
	public String set_medicine(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		GroupMedicine groupmed	= new GroupMedicine();
		map.put("groupm", groupmed);
		map.put("grpm", groupmedicineservice.getAllGroupMedicine());
		return "HealthCare/setting/set_medicine";
	}
	

	@RequestMapping("/del_group")
	public String del_group(HttpSession session,Map<String, Object>map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		
		groupmedicineservice.delete(id);
		
		return "redirect:set_medicine";
	}
	
	@ResponseBody
	@RequestMapping(value="Checkgroup",method = RequestMethod.POST)
	public String addGroup(@RequestParam("value") String name){
		String msg ="yes";
		int chk = groupmedicineservice.getGroupMed(name).size();
		if(chk>0){
			msg="no";
		}
		return msg; 
	}
	
	@RequestMapping(value="addGroup",method = RequestMethod.POST)
	public String addGroup(@ModelAttribute GroupMedicine groupMedicine, Map<String, Object> map){

			groupmedicineservice.add(groupMedicine);
			return "redirect:set_medicine";
	}
	
	@RequestMapping(value="set_alertH",method=RequestMethod.GET)
	public String set_alert(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		TypeAlert typealert = new TypeAlert();
		
		map.put("typealert", typealert);
		map.put("tyalert", typealertservice.getAllTypeAlert());

		return "HealthCare/setting/set_alertH";
	}
	
	
	
	
	
	@RequestMapping(value="edit_alert",method = RequestMethod.POST)
	public String edit_alert(HttpSession session,Map<String, Object> map,
						@RequestParam("id") int id,
						@RequestParam("name") String name,
						@RequestParam("value") int value,
						@RequestParam("note") String note){
			
		TypeAlert typeAlert = typealertservice.getTypeAlerte(id);
		typeAlert.setId(id);
		typeAlert.setNote(note);
		typeAlert.setName(name);
		typeAlert.setValue(value);
		typealertservice.edit(typeAlert);
		return "redirect:set_alertH";
	}

	@RequestMapping(value="set_statusbreed",method=RequestMethod.GET)
	public String set_statusbreed(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		Breed statusBreed = new Breed();
		map.put("statb", statusBreed);
		map.put("stat", statusbreedservice.getAllBreed());
		return "HealthCare/setting/set_statusbreed";
	}
	
	@RequestMapping("/del_statBreed")
	public String del_statBreed(HttpSession session,Map<String, Object>map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		
		statusbreedservice.delete(id);
		
		return "redirect:set_statusbreed";
	}
	
	////
	
	@RequestMapping(value="set_stall",method=RequestMethod.GET)
	public String set_statustall(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		
		Stall statusStall = new Stall();
		map.put("statbstall", statusStall);
		map.put("stat_stall", stallserviece.getAllStall());
		return "HealthCare/setting/set_stall";
	}
	
	@RequestMapping("/del_statstall")
	public String del_statStall(HttpSession session,Map<String, Object>map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		
		stallserviece.delete(id);

		return "redirect:set_stall";
	}
	
	@ResponseBody
	@RequestMapping(value="Checkstall",method = RequestMethod.POST)
	public String Checkstall(@RequestParam("value") String name){
		String msg ="yes";
		int chk = stallserviece.getStallByValue(name).size();
		if(chk>0){
			msg="no";
		}
		return msg; 
	}
	
	@RequestMapping(value="addStall",method = RequestMethod.POST)
	public String addStall(@ModelAttribute Stall statusStall , Map<String, Object>map){
		stallserviece.add(statusStall);
		return "redirect:set_stall";
	}
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value="Checkbreed",method = RequestMethod.POST)
	public String Checkbreed(@RequestParam("value") String name){
		String msg ="yes";
		int chk = statusbreedservice.getBreedByValue(name).size();
		if(chk>0){
			msg="no";
		}
		return msg; 
	}
	
	@RequestMapping(value="addStat",method = RequestMethod.POST)
	public String addStat(@ModelAttribute Breed statusBreed , Map<String, Object>map){
		statusbreedservice.add(statusBreed);
		return "redirect:set_statusbreed";
	}
	
	
	
	
	///
	@RequestMapping(value="set_color",method = RequestMethod.GET)
	public String set_color(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		Color color = new Color();
		map.put("color", color);
		map.put("colo", colorservice.getAllColor());
		return "HealthCare/setting/set_color";
	}
	
	@RequestMapping("/del_color")
	public String del_color(HttpSession session,Map<String, Object>map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		
		colorservice.delete(id);
		
		return "redirect:set_color";
	}
	
	@ResponseBody
	@RequestMapping(value="Checkcolorr",method = RequestMethod.POST)
	public String Checkcolorr(@RequestParam("nameColor") String name){
		String msg ="yes";
		int chk = colorservice.getAllColorByValue(name).size();
		if(chk>0){
			msg="no";
		}
		return msg; 
	}
	
	@RequestMapping(value="addcolor",method = RequestMethod.POST)
	public String addcolor(@ModelAttribute Color color , Map<String, Object>map){
		colorservice.add(color);
		return "redirect:set_color";
	}
	
	
/*	@RequestMapping(value="/member")
	public ModelAndView Member(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		ModelAndView model = new ModelAndView("HealthCare/setting/Member");
		return model;
	}*/
	

	@RequestMapping("/set_memberH") 
	public ModelAndView set_member(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername)); 
		
		map.put("ulistAll", memberService.getAllMember());
		//map.put("plist", privilegeservice.getAllPrivilege());
		ModelAndView model = new ModelAndView("HealthCare/setting/set_member");
		return model;
	}
	
	@RequestMapping("/del_memberH")
	public String del_member(@RequestParam int id){
		memberService.delete(id);
		return "HealthCare/setting/set_memberH";
	}
	@RequestMapping("/edit_memberH")
	public ModelAndView edit_member(HttpSession session,Map<String, Object> map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username");
		
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername)); 
		
		map.put("member", memberService.getMember(id));
		map.put("pri", privilegeservice.getAllPrivilege());
		
		ModelAndView model = new ModelAndView("HealthCare/setting/edit_member");
		return model;
	}
	
	@RequestMapping("/edited_memberH")
	public String edited_member(@ModelAttribute Member member, Map<String, Object> map){
		memberService.edit(member);
		return "redirect:set_memberH";
	}
	
	/*@RequestMapping("/edit_memberBylogin")
	public ModelAndView edit_memberBylogin(HttpSession session,Map<String, Object> map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername)); 
		
		map.put("member", memberService.getMember(id));
		map.put("pri", privilegeservice.getAllPrivilege());
		ModelAndView model = new ModelAndView("HealthCare/setting/edit_memberBylogin");
		return model;
	
	}
	
	@RequestMapping("/edited_memberBylogin")
	public String edited_memberBylogin(@ModelAttribute Member member, Map<String, Object> map){
		memberService.edit(member);
		return "redirect:index";
	}*/
	
	@RequestMapping(value="set_sync",method=RequestMethod.GET)
	public String set_sync(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		TypeSync typeSync = new TypeSync();
		map.put("typesync",  typeSync);
		map.put("type", typesyncservice.getAllTypeSync());
		
		return "HealthCare/setting/set_sync";
	}
	
	@ResponseBody
	@RequestMapping(value="checkTypeSync",method = RequestMethod.POST)
	public String checkTypeSync(@RequestParam("value") String value){
		String msg ="yes";
		int chk = typesyncservice.getAllTypeSyncByName(value).size();
		if(chk>0){
			msg="no";
		}
		return msg; 
	}
	
	@RequestMapping(value="AddTypeSync",method = RequestMethod.POST)
	public String AddTypeSync(@ModelAttribute TypeSync typesync, BindingResult result, Map<String, Object> map){

			typesyncservice.add(typesync);
			return "index";
	}
	
	@RequestMapping(value="DelTypeSync",method = RequestMethod.POST)
	public String DelTypeSync(@RequestParam("id") int id){
		
		
			typesyncservice.delete(id);
		
			return "redirect:set_sync";
	}
	
	@RequestMapping(value="/EditSyncSetting",method = RequestMethod.GET)
	public String EditSyncSetting(@RequestParam("TypeId") int id , HttpSession session , Map<String, Object>map){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		
		Sync sync = new Sync();
		TypeSync typeSync = typesyncservice.getTypeSync(id);
		map.put("sync", sync);
		map.put("nameT", typeSync.getValue());
		map.put("typeId", id);
		map.put("syncL", syncservice.getAllSyncByType(id));
		
		return "HealthCare/setting/EditSyncSetting";
	}
	
	@RequestMapping(value="AddSync",method = RequestMethod.POST)
	public String AddTypeSync(@ModelAttribute Sync sync, BindingResult result){
			
			syncservice.add(sync);
			return "index";
	}
	
	@RequestMapping(value="saveEditSync",method = RequestMethod.POST)
	public String saveEditSync(@ModelAttribute Sync sync, BindingResult result){
		syncservice.edit(sync);
			return "index";
	}
	
	@RequestMapping(value="DelSync",method = RequestMethod.POST)
	public String DelSync(@RequestParam("idSync") int id,@RequestParam("TypeId") int TypeId){
		
		syncservice.delete(id);
			return "redirect:EditSyncSetting?TypeId="+TypeId;
	}
	
	@RequestMapping("/set_brandH")
	public ModelAndView set_brandH(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("farm",farmService.getFarm(1));
		ModelAndView model = new ModelAndView("HealthCare/setting/set_brandH");
		return model;
	}
	
	@RequestMapping(value="saveBrandH",method=RequestMethod.POST)
	public String saveBrandH(@RequestParam( value="file", required=false) MultipartFile file,
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
            	
            	return "HealthCare/page/error";
            }
		}
		
		return "HealthCare/page/success";
	}
}
