package farm3.spring.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import farm3.spring.model.Alert;
import farm3.spring.model.Cattle;
import farm3.spring.model.CattleStamp;
import farm3.spring.model.CattleWean;
import farm3.spring.model.CattleYear;
import farm3.spring.model.Disease;
import farm3.spring.model.HornDetering;
import farm3.spring.service.AlertService;
import farm3.spring.service.CattleService;
import farm3.spring.service.CattleStampService;
import farm3.spring.service.CattleWeanService;
import farm3.spring.service.CattleYearService;
import farm3.spring.service.GroupCattleService;
import farm3.spring.service.HornDeteringService;
import farm3.spring.service.MemberService;
import farm3.spring.service.StatusAlertService;
import farm3.spring.service.StatusCattleService;
import farm3.spring.service.TypeAlertService;
import farm3.spring.service.TypeHornService;
import farm3.string.Util;

@Controller
public class HealthCareCalvesController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired 
	private CattleService cattleservice;
	
	@Autowired 
	private TypeHornService typehornservice;
	
	@Autowired
	private HornDeteringService horndeteringservice;
	
	@Autowired
	private CattleWeanService cattleweanservice;
	
	@Autowired
	private StatusCattleService statuscattleservice;
	
	@Autowired 
	private CattleYearService cattleyearservice;
	
	@Autowired
	private CattleStampService cattlestampservice;
	
	@Autowired
	private AlertService alertservice;
	
	@Autowired
	private StatusAlertService statusalertservice;
	
	@Autowired
	private TypeAlertService typealertservice;
	
	@Autowired
	private GroupCattleService groupcattleservice;
	
	
//	@ResponseBody
//	@RequestMapping(value="addhorn",method = RequestMethod.POST)
//	public String adddisease(@ModelAttribute HornDetering horn, Map<String, Object> map){
//		horndeteringservice.add(horn);//add ����������
//		return "1";
//	}
	
	@RequestMapping(value="view_horndeter",method=RequestMethod.GET)
	public String horndeter(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		HornDetering horndetering = new HornDetering();
		map.put("hornDetering", horndetering);
		Cattle cattle = new Cattle();
		map.put("cattle", cattle);
		map.put("calves", cattleservice.GetCalves1(1));
		map.put("typehorn", typehornservice.getAllTypeHorn());
		return "HealthCare/calves/view_horndeter";  												
	}
	
	@RequestMapping(value="horndeter",method=RequestMethod.GET)
	public String Horndeter(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
	
		HornDetering horndetering = new HornDetering();
		map.put("horn", horndetering);
		Cattle cattle = new Cattle();
		map.put("cattle", cattle);

		map.put("calves", cattleservice.GetCalves1(1));
		map.put("typehorn", typehornservice.getAllTypeHorn());
		return "HealthCare/calves/horndeter";  												
	}
	
/*	@RequestMapping(value="horndeter",method=RequestMethod.POST)
	public String Horndeter(HttpSession session,Map<String, Object> map,@RequestParam("id") int id) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
	
		HornDetering horndetering = new HornDetering();
		map.put("hornDetering", horndetering);
		Cattle cattle = new Cattle();
		map.put("cattle", cattle);
		map.put("calves", cattleservice.GetCalves1(1));
		map.put("typehorn", typehornservice.getTypeHorn(id));
		return "HealthCare/calves/horndeter";  												
	}*/
	
	@RequestMapping(value="horndeter_edit")
	public String Horndeter_edit(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		
		HornDetering horndetering = horndeteringservice.getHornDetering(id) ;
		map.put("hornDetering", horndetering);
		Cattle cattle = cattleservice.getCattle(id);
		map.put("cattle", cattle);
		map.put("horn", horndeteringservice.getAllHornDetering());
		map.put("cattlehorn" , horndeteringservice.getHornDetering(id));
		map.put("cattle" , cattleservice.getCattle(id));
		map.put("cattle", cattleservice.getAllCattle());
		map.put("typehorn", typehornservice.getAllTypeHorn());
		
	
		map.put("calve", cattleservice.GetCalves1(3));
		
		return "HealthCare/calves/horndeter_edit";  												
	}
	
	@RequestMapping("/horndeter_edited")
	public String horndeter_edited(HttpSession session,Map<String, Object>map,@ModelAttribute HornDetering hornDetering,@ModelAttribute Cattle cattle){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		horndeteringservice.edit(hornDetering);
		cattleservice.edit(cattle);
		return "redirect:horndeter_list";
	}
	
	
	@RequestMapping(value="/saveHorn",method = RequestMethod.POST)
	public String saveHorn(HttpSession session,Map<String, Object> map,
							@RequestParam("calves.id") int calves,
							@RequestParam("date") String date,
							@RequestParam("note") String note,
							@RequestParam("typehorn.id") int typehorn,
							@RequestParam("memberid") int member){
							
		
		//@RequestParam("ageHornDetering") String hornn
		
		Cattle cattle1 = cattleservice.getCattle(calves);
		cattle1.setAgeHornDetering("�٭������");
		cattle1.setAge(2);
		cattleservice.edit(cattle1);
		
		HornDetering hornDetering = new HornDetering();
		hornDetering.setCattle(cattleservice.getCattle(calves));
		hornDetering.setDate(date);
		hornDetering.setNote(note);
		hornDetering.setTypeHorn(typehornservice.getTypeHorn(typehorn));	
		hornDetering.setMember(memberService.getMember(member));
		horndeteringservice.add(hornDetering);
		
		Cattle cattle = cattleservice.getCattle(calves);
		String numdate = cattle.getNumDate();
		List<Alert> alertList = alertservice.getAlertId(numdate, 6);
			for (Alert closeAlert : alertList) {
				closeAlert.setStatusAlert(statusalertservice.getStatusAlert(2));
				closeAlert.setMember(memberService.getMember(member));
				alertservice.edit(closeAlert);
			}
		return "redirect:index";
	}
	
	@RequestMapping(value="horndeter_list",method=RequestMethod.GET)
	public String horndeter_list(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		HornDetering horndetering = new HornDetering();
		map.put("hornss", horndetering);
		map.put("horn", horndeteringservice.getAllHornDetering());
		map.put("cattle", cattleservice.getAllCattle());
		map.put("typehorn", typehornservice.getAllTypeHorn());
		return "HealthCare/calves/horndeter_list";  												
	}
	
	@RequestMapping(value="horndeter_detail",method=RequestMethod.POST)
	public String horndeter_detail(Map<String, Object> map,@RequestParam("id") int id,HttpSession session) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		/*HornDetering horndetering = new HornDetering();*/
	/*	map.put("sh", horndetering);*/
		HornDetering horndetering = new HornDetering();
		map.put("hornss", horndetering);
		map.put("horn", horndeteringservice.getAllHornDetering());
		map.put("cattlehorn" , horndeteringservice.getHornDetering(id));
		map.put("cattle", cattleservice.getAllCattle());
		map.put("typehorn", typehornservice.getAllTypeHorn());
		map.put("calve", cattleservice.GetCalves1(3));
		return "HealthCare/calves/horndeter_detail";  												
	}
	
	@RequestMapping(value="wean",method=RequestMethod.GET)
	public String wean(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		CattleWean cattlewean = new CattleWean();
		map.put("cattlewean", cattlewean);

		map.put("calves", cattleservice.GetCalves1(2));
		
		
		return "HealthCare/calves/wean";  												
	}
	
		
	@RequestMapping(value="wean_edit")
	public String wean_edit(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		Cattle cattle = cattleservice.getCattle(id);
		map.put("cattle", cattle);
		CattleWean cattlewean = new CattleWean();
		map.put("cattlewean", cattlewean);
		map.put("cattlewean", cattleweanservice.getCattleWean(id));
		map.put("cattlewean", cattleweanservice.getAllCattleWean());
		map.put("calves", cattleservice.GetCalves1(2));
		
		return "HealthCare/calves/wean_edit";  												
	}
	
	@RequestMapping("/wean_edited")
	public String wean_edited(HttpSession session,Map<String, Object>map,@ModelAttribute CattleWean cattlewean,@ModelAttribute Cattle cattle){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		cattleweanservice.edit(cattlewean);;
		cattleservice.edit(cattle);
		return "redirect:wean_list";
	}
	
	@RequestMapping(value="wean_detail",method=RequestMethod.POST)
	public String wean_detail(Map<String, Object> map,@RequestParam("id") int id,HttpSession session) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		CattleWean cattlewean = new CattleWean();
		map.put("cattlewean", cattlewean);
		map.put("cattlewean", cattleweanservice.getCattleWean(id));
		map.put("calves", cattleservice.GetCalves1(2));
		map.put("calves", cattleservice.getAllCattle());
		map.put("cattlewean", cattleweanservice.getCattleWean(id));
		
		return "HealthCare/calves/wean_detail";  												
	}
	
	@RequestMapping(value="/saveWean",method = RequestMethod.POST)
	public String saveWean(HttpSession session,Map<String, Object>map,
			@RequestParam("calvesid") int calves,
			@RequestParam("date") String date,
			@RequestParam("weigthwean") String weigthwean,
			@RequestParam("memberid") int member,
			@RequestParam("note") String note){
		
/*		System.out.println(calves);
		System.out.println(date);
		System.out.println(weigthwean);
		System.out.println(member);
		System.out.println(note);*/

		Cattle cattle = cattleservice.getCattle(calves);
		cattle.setWeightWean(weigthwean);
		cattle.setAge(3);
		cattle.setGroupCattle(groupcattleservice.getGroupCattle(7));
		cattleservice.edit(cattle);
	
		CattleWean cattlewean = new CattleWean();
	
		cattlewean.setCattle(cattleservice.getCattle(calves));
		cattlewean.setDate(date);
		cattlewean.setWeigthwean(weigthwean);
		cattlewean.setNote(note);
		cattlewean.setMember(memberService.getMember(member));
		cattleweanservice.add(cattlewean);
		
		String numdate = cattle.getNumDate();
		List<Alert> alertlist = alertservice.getAlertId(numdate, 7);
			for(Alert closeAlert : alertlist){
				closeAlert.setStatusAlert(statusalertservice.getStatusAlert(2));
				closeAlert.setMember(memberService.getMember(member));
				alertservice.edit(closeAlert);
			}
		return "redirect:index";
	}
	
	
	@RequestMapping(value="wean_list",method=RequestMethod.GET)
	public String wean_list(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		map.put("wean", cattleweanservice.getAllCattleWean());
		return "HealthCare/calves/wean_list";  												
	}
	
	@RequestMapping(value="weight",method=RequestMethod.GET)
	public String weight(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		CattleYear cattleYear = new CattleYear();
		map.put("cattleYear", cattleYear);
		map.put("calves", cattleservice.GetCalves1(4));
		return "HealthCare/calves/weight";  												
	}
	
	
	@RequestMapping(value="weight_detail",method=RequestMethod.POST)
	public String weight_detail(Map<String, Object> map,@RequestParam("id") int id,HttpSession session) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		map.put("calves", cattleservice.GetCalves1(4));
		
		CattleYear cattleyear = new CattleYear();
		map.put("cattleyear", cattleyear);
		map.put("cattleyear", cattleyearservice.getCattleYear(id));
		
		
		
		return "HealthCare/calves/weight_detail";  												
	}
	
	@RequestMapping(value="weight_edit",method=RequestMethod.POST)
	public String weight_edit(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		CattleYear cattleYear = new CattleYear();
		map.put("cattleYear",cattleYear);
		map.put("calves", cattleservice.GetCalves1(4));
		return "HealthCare/calves/weight_edit";  												
	}
	
	@RequestMapping("/listValue")
	public @ResponseBody String listValue(@RequestParam int id) {

		Cattle cattle = cattleservice.getCattle(id);
		
		//System.out.println();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = Util.encodeUnicode(gson.toJson(cattle));
	 return json;
	}
	
	@RequestMapping(value="/saveWeight",method = RequestMethod.POST)
	public String saveWeight(HttpSession session,Map<String, Object> map,
								@RequestParam("calvesid") int calves,
								@RequestParam("date") String date,
								@RequestParam("weightyear") String weight,
								@RequestParam("memberid") int member){

		
/*		System.out.println(calves);
		System.out.println(date);
		System.out.println(weight);
		System.out.println(member);*/
		
			Cattle cattle = cattleservice.getCattle(calves);
			cattle.setWeight(weight);
			cattle.setStatusCattle(statuscattleservice.getStatusCattle(2));
			cattle.setGroupCattle(groupcattleservice.getGroupCattle(9));
			cattle.setAge(0);
			cattleservice.edit(cattle);
		
			CattleYear cattleyear = new CattleYear();
			cattleyear.setCattle(cattleservice.getCattle(calves));
			cattleyear.setMember(memberService.getMember(member));
			cattleyear.setDate(date);
			cattleyear.setWeightyear(weight);
		
			cattleyearservice.add(cattleyear);
			
/*			CattleWean cattlewean = new CattleWean();
			cattlewean.setCattle(cattleservice.getCattle(calves));
			cattlewean.setDate(date);
			cattlewean.setMember(memberService.getMember(member));

			cattleweanservice.add(cattlewean);*/
			

			
			String numDate = cattle.getNumDate();
			List<Alert> alertList = alertservice.getAlertId(numDate, 9);
			for(Alert closeAlert : alertList){
				closeAlert.setStatusAlert(statusalertservice.getStatusAlert(2));
				closeAlert.setMember(memberService.getMember(member));
				alertservice.edit(closeAlert);
			}
			
		return "redirect:index";
	}
//	
//	@RequestMapping(value="horndeter_list",method=RequestMethod.GET)
//	public String horndeter_list(HttpSession session,Map<String, Object> map) {
//		String sessionUsername = (String)session.getAttribute("username");  
//		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
//		/*HornDetering horndetering = new HornDetering();*/
//	/*	map.put("sh", horndetering);*/
//		map.put("horn", horndeteringservice.getAllHornDetering());
//		map.put("cattle", cattleservice.getAllCattle());
//		map.put("typehorn", typehornservice.getAllTypeHorn());
//		return "HealthCare/calves/horndeter_list";  												
//	}
	
	
	@RequestMapping(value="weight_listH1",method=RequestMethod.GET)
	public String weight_list(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		map.put("weight", cattleyearservice.getAllCattleYear());
		return "HealthCare/calves/weight_list";  												
	}
	
	@RequestMapping(value="numbercat",method=RequestMethod.GET)
	public String numbercat(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		CattleStamp cattlestamp = new CattleStamp();
		map.put("cattlestm",cattlestamp);
		map.put("calve", cattleservice.GetCalves1(3));
		return "HealthCare/calves/numbercat";  												
	}
	
	@RequestMapping(value="numbercat_list",method=RequestMethod.GET)
	public String numbercat_list(HttpSession session,Map<String, Object> map){
	String sessionUsername = (String)session.getAttribute("username");  
	map.put("ulist",memberService.getMemberByUsername(sessionUsername));
	map.put("number", cattlestampservice.getAllCattleStamp());
	map.put("cattel", cattleservice.getAllCattle());
	
	return "HealthCare/calves/numbercat_list";
}
	
	@RequestMapping(value="numbercat_detail",method=RequestMethod.POST)
	public String numbercat_detail(Map<String, Object> map,@RequestParam("id") int id,HttpSession session) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		Cattle cattle = new Cattle();
		map.put("sh", cattle);
		map.put("cattle", cattleservice.getCattle(id));
		
		CattleStamp cattlestamp = new CattleStamp();
		map.put("st",cattlestamp);
		map.put("cattlestmp", cattlestampservice.getCattleStamp(id));
		map.put("calve", cattleservice.GetCalves1(3));
		map.put("number", cattlestampservice.getAllCattleStamp());
		return "HealthCare/calves/numbercat_detail";  												
	}
	
	
	@RequestMapping(value="numbercat_edit",method=RequestMethod.POST)
	public String numbercat_edit(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		CattleStamp cattlestamp = new CattleStamp();
		map.put("cattlestm",cattlestamp);
		map.put("calve", cattleservice.GetCalves1(3));
		return "HealthCare/calves/numbercat_edit";  												
	}
	
	@RequestMapping(value="/saveNumber",method = RequestMethod.POST)
	public String saveNumber(HttpSession session,Map<String, Object> map,
							@RequestParam("calves.id") int calves,
							@RequestParam("date") String date,
							@RequestParam("note") String note,
							@RequestParam("stampNumber") String stamp,
							@RequestParam("memberid") int member){
		
		Cattle cattle = cattleservice.getCattle(calves);
		cattle.setNum(stamp);
		cattle.setAge(4);
		cattleservice.edit(cattle);
		
		CattleStamp cattlestamp = new CattleStamp();
		cattlestamp.setCattle(cattleservice.getCattle(calves));
		cattlestamp.setMember(memberService.getMember(member));
		cattlestamp.setDate(date);
		cattlestamp.setNote(note);
		cattlestamp.setStampNumber(stamp);
		
		cattlestampservice.add(cattlestamp);
		
		String numDate = cattle.getNumDate();
		List<Alert> alertList = alertservice.getAlertId(numDate, 8);
		for(Alert closeAlert : alertList){
			closeAlert.setStatusAlert(statusalertservice.getStatusAlert(2));
			closeAlert.setMember(memberService.getMember(member));
			alertservice.edit(closeAlert);
		}
		
		return "redirect:index";
	}
	
	
}
