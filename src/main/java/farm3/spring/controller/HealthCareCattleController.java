package farm3.spring.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.collections.functors.IfClosure;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import farm3.spring.service.BreedService;
import farm3.spring.model.Cattle;
import farm3.spring.model.CattlePedigree;
import farm3.spring.model.Disease;
import farm3.spring.model.StatusBreed;
import farm3.spring.model.TreatmentHistory;
import farm3.spring.service.CattleService;
import farm3.spring.service.ColorService;
import farm3.spring.service.FarmService;
import farm3.spring.service.GroupCattleService;
import farm3.spring.service.MemberService;
import farm3.spring.service.SexService;
import farm3.spring.service.StallService;
import farm3.spring.service.StatusBornService;
//import farm3.spring.service.StatusBreedService;
import farm3.spring.service.StatusCattleService;
import farm3.spring.service.StatusTreatService;
import farm3.spring.service.TypeCattleService;
import farm3.spring.service.TypeDairyService;
import farm3.spring.service.StallService;

import farm3.spring.service.TypeHealthService;
import farm3.spring.service.CattlePedigreeService;

import farm3.spring.service.TreatmentHistoryService;

@Controller
public class HealthCareCattleController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BreedService breedService;
	
	@Autowired
	private CattleService cattleservice;
	
	@Autowired
	private TypeCattleService typrcattleservice;
	
	//@Autowired
	//private StatusBreedService statusbreedservice;
	
	@Autowired
	private StatusCattleService statuscattleservice;
	
	@Autowired
	private ColorService colorservice;
	
	@Autowired
	private GroupCattleService groupcattleservice;
	
	@Autowired
	private StallService stallservice;
	
	@Autowired
	private SexService sexservice;
	
	@Autowired
	private StatusTreatService statustreatservice;
	
	@Autowired
	private TypeCattleService typecattleservice;
	
	@Autowired
	private TreatmentHistoryService treatmentHistoryservice;
	
	@Autowired
	private TypeHealthService typeHealthservice;
	
	@Autowired
	private CattlePedigreeService cattlePedigreeservice;
	
	@Autowired
	private TypeDairyService typeDairyservice;
	
	@Autowired
	private FarmService farmservice;
	
	@Autowired
	private StatusBornService statusbornservice;


	
	@RequestMapping(value="cattle",method=RequestMethod.GET)
	public String cattle(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		Cattle cattle = new Cattle();
		map.put("sh", cattle);
		map.put("type", typrcattleservice.getAllTypeCattle());
		map.put("stabreed", breedService.getAllBreed());
		map.put("stadairy", typeDairyservice.getAllTypeDairy());
		map.put("stacattle", statuscattleservice.getAllStatusCattle());
		map.put("colo", colorservice.getAllColor());
		map.put("groupcattle", groupcattleservice.getAllGroupCattle());
		map.put("stal", stallservice.getAllStall());
		cattle.setStatusCattle(statuscattleservice.getStatusCattle(2));
		map.put("sex", sexservice.getAllSex());
		return "HealthCare/cattle/cattle"; 
	
	}
	
	@ResponseBody
	@RequestMapping(value="addcattle",method = RequestMethod.POST)
	public String addcattle(@ModelAttribute Cattle cattle, Map<String, Object> map){
		cattle.setStatusCattle(statuscattleservice.getStatusCattle(2));
		cattle.setStatusTreat(statustreatservice.getStatusTreat(0));
		cattle.setTeeth(0);
		cattleservice.add(cattle);//add ¢éÍÁÙÅà¢éÒä»
		return "redirect:index";
	}
	
	@RequestMapping(value="cattlelist",method=RequestMethod.GET)
	public String cattlelist(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		Cattle cattle = new Cattle();
		map.put("sh", cattle);
		map.put("cattle", cattleservice.getAllCattle());
		map.put("type", typecattleservice.getAllTypeCattle());
		//map.put("stabreed", statusbreedservice.getAllStatusBreed());
		map.put("stacattle", statuscattleservice.getAllStatusCattle());
		map.put("colo", colorservice.getAllColor());
		map.put("groupcattle", groupcattleservice.getAllGroupCattle());
		map.put("stal", stallservice.getAllStall());
		

		map.put("treamenthistory", treatmentHistoryservice.getAllTreatmentHistory());
		
		map.put("type", typeHealthservice.getAllTypeHealth());
		return "HealthCare/cattle/cattle_list";  												
	}
		
	@RequestMapping(value="cattleDetail",method=RequestMethod.POST)
	public String cattleDetail(Map<String, Object> map,@RequestParam("id") int id,HttpSession session) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		Cattle cattle = new Cattle();
		map.put("sh", cattle);
		map.put("cattle", cattleservice.getCattle(id));
		return "HealthCare/cattle/cattle_detail";  												
	}

	@RequestMapping(value="/treatment_detail",method=RequestMethod.POST)
	public String Treatment_detail(Map<String, Object> map,@RequestParam("id") int id,HttpSession session) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		Cattle cattle = new Cattle();
		map.put("cattle", cattle);
		map.put("cattle", cattleservice.getCattle(id));
		map.put("stall", stallservice.getStall(id));
		map.put("colo", colorservice.getAllColor());
		map.put("groupCattle", groupcattleservice.getAllGroupCattle());
		map.put("typecattle", typecattleservice.getAllTypeCattle());
		map.put("sex", sexservice.getAllSex());
		//map.put("date", treatmentHistoryservice.getTreatmentHistoryByDate());
		return "HealthCare/health/treat_his_detail";  												
	}


	@RequestMapping(value="/pedigree",method=RequestMethod.POST)
	public String searchped(Map<String, Object> map,@RequestParam("id") int id,HttpSession session) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		Cattle cattle = new Cattle();
		map.put("cattle", cattle);
		CattlePedigree cattlePedigree = new CattlePedigree();
		map.put("cattlePedigree", cattlePedigree);
		map.put("cattle", cattleservice.getCattle(id));
		map.put("stall", stallservice.getStall(id));
		map.put("colo", colorservice.getAllColor());
		map.put("groupCattle", groupcattleservice.getAllGroupCattle());
		map.put("typecattle", typecattleservice.getAllTypeCattle());
		map.put("cattlePedigree", cattlePedigreeservice.getCattlePedigree(id));
		map.put("cattlePedigree", cattlePedigreeservice.getAllCattlePedigree());
		return "HealthCare/cattle/pedigree";
	}
	
	
	@RequestMapping(value="edit_cattle",method=RequestMethod.POST)
	public String edit_cattle(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		Cattle cattle = cattleservice.getCattle(id);
		map.put("shc", cattle);
		map.put("cattle", cattleservice.getAllCattle());
		map.put("type", typrcattleservice.getAllTypeCattle());
		map.put("stabreed", breedService.getAllBreed());
		map.put("stacattle", statuscattleservice.getAllStatusCattle());
		map.put("colo", colorservice.getAllColor());
		map.put("groupcattle", groupcattleservice.getAllGroupCattle());
		map.put("stal", stallservice.getAllStall());
		map.put("statT", statustreatservice.getAllStatusTreat());
		map.put("farmtid", farmservice.getAllFarm());
		map.put("pedigree", cattlePedigreeservice.getAllCattlePedigree());
		map.put("staB", statusbornservice.getAllStatusBorn());
		map.put("dairy", typeDairyservice.getAllTypeDairy());
		return "HealthCare/cattle/edit_cattle";  												
	}	
	
	@RequestMapping("/edited_cattle")
	public String edited_cattle(HttpSession session,Map<String, Object>map,@ModelAttribute Cattle cattle){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		
		if(cattle.getGroupCattle().getId() == 1){
			cattle.setTeeth(1);
		}
		
		cattleservice.edit(cattle);
		return "redirect:cattlelist";
		
	}
	@RequestMapping("/del_cattle")
	public String delete_cattle(HttpSession session,Map<String, Object>map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		cattleservice.delete(id);
		
		return "redirect:cattlelist";
	}
	
	
	/* @RequestMapping(value="groupcattle",method=RequestMethod.POST)
	public String groupcattle(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		
		Cattle cattle = cattleservice.getCattle(id);
		map.put("shc", cattle);
		map.put("gcattle", cattleservice.getAllCattle());
		map.put("groupcattle", groupcattleservice.getAllGroupCattle());
		return "/cattle/groupcattle"; 
	
	}
	
	
	@RequestMapping("/editgroup")
	public String editgroup(HttpSession session,Map<String, Object>map,@ModelAttribute Cattle cattle){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		
		if (cattle.getGroupCattle().getId() == 1) {
			cattle.setTeeth(1);
		}
		
		cattleservice.edit(cattle);
		return "redirect:index";
	}*/
	
	/*@RequestMapping("/editgroup")
	public String editgroup(HttpSession session,Map<String, Object>map,
			@RequestParam("catl") String cattle,
			@RequestParam("groupCattleid") int groupCattleid){
			
		Cattle cattle1 = new Cattle();
		cattle1.setNum(cattle);
		cattle1.setGroupCattle(groupcattleservice.getGroupCattle(groupCattleid));
		cattle1.setTeeth(1);
		
		System.out.println(cattle);
		System.out.println(groupCattleid);
		System.out.println(1);                   
		
	
		
			if (groupCattleid == 1) {
				cattle1.setNum(cattle);
				cattle1.setGroupCattle(groupcattleservice.getGroupCattle(groupCattleid));
				cattle1.setTeeth(1);
				//System.out.println(cattle);
				//System.out.println(groupCattleid);
				//System.out.println(1); 
			}else{
				cattle1.setNum(cattle);
				cattle1.setGroupCattle(groupcattleservice.getGroupCattle(groupCattleid));
				//System.out.println(cattle);
				//System.out.println(groupCattleid);
			}
			
			cattleservice.edit(cattle1);
		
		return "redirect:index";
	}*/
	
}

