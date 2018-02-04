package farm3.spring.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/*import com.fasterxml.jackson.databind.util.JSONPObject;*/
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import farm3.spring.dao.DiseaseDao;
import farm3.spring.dao.StatusTreatDao;
import farm3.spring.model.Alert;
import farm3.spring.model.Cattle;
import farm3.spring.model.Disease;
import farm3.spring.model.Medicine;
import farm3.spring.model.MedicineOrder;
import farm3.spring.model.Member;
import farm3.spring.model.StatusTreat;
import farm3.spring.model.TreatmentHistory;
import farm3.spring.service.AlertService;
import farm3.spring.service.CableDiseaseService;
import farm3.spring.service.CattleService;
import farm3.spring.service.DiseaseService;
import farm3.spring.service.GroupMedicineService;
import farm3.spring.service.MedicineService;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;
import farm3.spring.service.StatusAlertService;
import farm3.spring.service.StatusMedicineService;
import farm3.spring.service.StatusTreatService;
import farm3.spring.service.TreatmentHistoryService;
import farm3.spring.service.TypeAlertService;
import farm3.spring.service.TypeHealthService;
import farm3.spring.service.UnitMedicineService;
import farm3.string.Util;



@Controller
public class HelacthCareHealthController {
	
	@Autowired
	private MedicineService medicineservice;
	
	@Autowired
	private DiseaseService diseaseService;
	
	@Autowired
	private CableDiseaseService cableDiseaseService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private PrivilegeService privilegeService;
	
	@Autowired
	private CattleService cattleservice;
	
	@Autowired
	private TreatmentHistoryService treatmenthistoryservice;
	
	@Autowired
	private UnitMedicineService unitmedicineservice;
	
	@Autowired
	private GroupMedicineService groupmedicineservice;
	
	@Autowired
	private StatusMedicineService statusmedicineservice;
	
	@Autowired
	private TypeAlertService typealertservice;
	
	@Autowired
	private StatusTreatService statustreatservice;
	
	@Autowired 
	private AlertService alertservice;
	
	@Autowired
	private StatusAlertService statusalertservice;
	
	@Autowired
	private TypeHealthService typehealthservice;
	
	@Autowired
	private CattleService cattleService;
	
	@Autowired
	private TreatmentHistoryService treatmentHistoryService;
	
	@RequestMapping(value="treat",method=RequestMethod.GET)
	public String Treat(HttpSession session,Map<String, Object>map){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		TreatmentHistory treatmentHistory = new TreatmentHistory();
		map.put("treat", treatmentHistory);
		map.put("cattle", cattleservice.getCattleT());
		map.put("medicine", medicineservice.getAllMedicine());
		map.put("disease", diseaseService.getAllDisease());
		map.put("statusmedicine", statusmedicineservice.getAllStatusMedicine());
		map.put("dAlertList", typealertservice.getAllTypeAlertById(13));
		return "HealthCare/health/Treat";
	}
	

	@RequestMapping("/listmed") //listunit raw
	public @ResponseBody String listmed(Model model,@RequestParam int id,Map<String, Object> map) {
		
		Medicine med = medicineservice.getMedicine(id);
		
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = Util.encodeUnicode(gson.toJson(med));
	 return json;
	}
	
	
	@RequestMapping("/cowlist")
	public @ResponseBody String listValue(@RequestParam int id) {

		Cattle cattle = cattleservice.getCattle(id);
		
		//System.out.println();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = Util.encodeUnicode(gson.toJson(cattle));
	 return json;
	}
	
	@RequestMapping("/diseaselist")
	public @ResponseBody String diseaselist(@RequestParam int id) {

		Disease disease = diseaseService.getDisease(id);
		
		//System.out.println();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = Util.encodeUnicode(gson.toJson(disease));
	 return json;
	}
	
	
	@RequestMapping(value="/saveTreat",method=RequestMethod.POST)
	public String saveTreat(HttpSession session,Map<String, Object> map,
							@RequestParam("cattle") int cattle,
							@RequestParam("causeOfIllness") String causeOfIllness,
							@RequestParam("medicine") int[] medicine,
							@RequestParam("medicine") int med,
							@RequestParam("date") String dateTreat,
							@RequestParam("disease") int disease,
							@RequestParam("memberid") int member,
							@RequestParam("statusmedicine") int stat,
							@RequestParam("doseUsesage") int[] doseUsesage,
							@RequestParam("day_input") int dayId,
							@RequestParam("dateEndTreat") String time){
		
		 DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
		 DateTimeFormatter fmt1 = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss");
		 DateTimeFormatter fmt2 = DateTimeFormat.forPattern("HH:mm:ss");
		 DateFormat fmt3 = new SimpleDateFormat("yyyy");
		 DateTime dt = new DateTime();
		 String DTnow = fmt1.print(dt);
		 String TimeNow = fmt2.print(dt);
		 
			 Cattle cattle1 = cattleservice.getCattle(cattle);
			 String numCatt = cattle1.getNum();
			 
			 //alert
				Alert alert = new Alert();
				 DateTime dtOrg = new DateTime(dateTreat);
				 DateTime dtPlusOne = dtOrg.plusDays(dayId);
				 String DayAlert = fmt.print(dtPlusOne);
				alert.setStatusAlert(statusalertservice.getStatusAlert(1));
				alert.setTypeAlert(typealertservice.getTypeAlerte(13));
				alert.setMember(memberService.getMember(member));
				alert.setCattle(cattleservice.getCattle(cattle));
				alert.setCattle_1(numCatt);
				alert.setDatealert(DayAlert);
				alert.setTimealert(time);
				alert.setDayinput(DTnow);
				alert.setTimeinput(TimeNow);
			/*	alert.setNote(note);*/
				alertservice.add(alert);
				
			 
			 Cattle cattlee = cattleservice.getCattle(cattle);
			 cattlee.setStatusTreat(statustreatservice.getStatusTreat(2));
			 cattleservice.edit(cattlee);
			 System.out.println("Hello");
			 System.out.println(stat);
			 System.out.println(medicine);
			 System.out.println(med);
			for (int i = 0; i < stat ; i++) {
				
				Medicine medicine2 = medicineservice.getMedicine(med);
				int s = medicine2.getMedicineSuccess() ;
				System.out.println(s);
				s = s+1;
				medicine2.setMedicineSuccess(s);
				medicineservice.edit(medicine2);
				
				TreatmentHistory treatmentHistory = new TreatmentHistory();
				treatmentHistory.setCattle(cattleservice.getCattle(cattle));
				treatmentHistory.setDisease(diseaseService.getDisease(disease));
				treatmentHistory.setMember(memberService.getMember(member));
				treatmentHistory.setStatusMedicine(statusmedicineservice.getStatusMedicine(stat));
				treatmentHistory.setMedicine(medicineservice.getMedicine(medicine[i]));
				treatmentHistory.setCauseOfIllness(causeOfIllness);
				treatmentHistory.setDateTreat(dateTreat);
				treatmentHistory.setDateEndTreat(time);
				treatmentHistory.setDoseUsesage(doseUsesage[i]);
				treatmentHistory.setStatusTreat(statustreatservice.getStatusTreat(2));
				treatmenthistoryservice.add(treatmentHistory);
				
			
			}
			
			return "redirect:index";
		 
		 
	}
	
	@RequestMapping(value="treat_his_list",method=RequestMethod.GET)
	public String Treathislist(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));		
		map.put("cattle",cattleService.getAllCattle());
		//map.put("treat",treatmentHistoryService.getAllTreatmentHistory());
		
		return "HealthCare/cattle/cattle_list";  												
	}
	
	@RequestMapping(value="treathis",method=RequestMethod.GET)
	public String Treathis(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));		
		return "HealthCare/health/Treat_his";  												
	}
	
	/*@RequestMapping(value="treatment_detail",method=RequestMethod.GET)
	public String Treatment_detail(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		map.put("cattle",cattleService.getAllCattle());
		return "HealthCare/health/treat_his_detail";  												
	}
*/
	
	
	@RequestMapping(value="disease",method=RequestMethod.GET)
	public String disease(HttpSession session,Map<String, Object>map){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		Disease disease = new Disease();
		map.put("sh", disease);
		map.put("disease", diseaseService.getAllDisease());
		map.put("user",memberService.getAllMember());
		map.put("cabledisease",cableDiseaseService.getAllCableDisease());
	
		
		return "HealthCare/health/disease";
	}
	
	
	@ResponseBody
	@RequestMapping(value="adddisease",method = RequestMethod.POST)
	public String adddisease(@ModelAttribute Disease Disease, Map<String, Object> map){
		diseaseService.add(Disease);//add ����������
		return "1";
	}
	
	@RequestMapping(value="diseasesh")
	public String diseasesh(HttpSession session,Map<String, Object>map){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		Medicine medicine = new Medicine();
		Disease disease = new Disease();
		map.put("sh", disease);
		map.put("disease", diseaseService.getAllDisease());
		map.put("user",memberService.getAllMember());
		map.put("cabledisease",cableDiseaseService.getAllCableDisease());
		return "HealthCare/health/diseasesh";
	}
	
	@RequestMapping(value="diseasedetail",method=RequestMethod.POST)
	public String diseasedetail(Map<String, Object> map,@RequestParam("id") int id,HttpSession session) {
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		Disease disease = new Disease();
		map.put("sh", disease);
		map.put("dis", diseaseService.getDisease(id));
		return "HealthCare/health/disease_detail";  												
	}
	
	@RequestMapping(value="edit_disase")
	public String edit_disase(HttpSession session,Map<String, Object> map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));	
		Disease disease = diseaseService.getDisease(id);
		map.put("disease", disease);
		map.put("calble", cableDiseaseService.getAllCableDisease());
		
		return "HealthCare/health/edit_disase";
	}
	
	@RequestMapping("/disease_edited")
	public String disease_edited(HttpSession session,Map<String, Object>map,@ModelAttribute Disease disease){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		diseaseService.edit(disease);
		return "redirect:diseasesh";
	}
	
	@RequestMapping("/del_disease")
	public String delete_dis(HttpSession session,Map<String, Object>map,@RequestParam int id){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		
		diseaseService.delete(id);
		
		return "redirect:diseasesh";
	}

	
	
	@RequestMapping(value="list_recommend")
	public String list_recommend(HttpSession session,Map<String, Object>map){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		Medicine medicine = new Medicine();
		Disease disease = new Disease();
		map.put("disease", diseaseService.getAllDisease());
		map.put("medicine", medicineservice.getAllMedicine());
		map.put("user",memberService.getAllMember());
		map.put("cabledisease",cableDiseaseService.getAllCableDisease());
		
		return "HealthCare/health/list_recommend";
	}
	
	@RequestMapping(value="treat_health",method=RequestMethod.GET)
	public String treat_health(HttpSession session,Map<String,Object>map){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		TreatmentHistory treatment = new TreatmentHistory();
		map.put("treat", treatment);
		
		map.put("typeHealth", typehealthservice.getAllTypeHealth());
		
		map.put("cattletreat", cattleservice.getstaTreatcattle());
		map.put("medicine", medicineservice.getAllMedicine());
		map.put("disease", diseaseService.getAllDisease());
		map.put("statusmedicine", statusmedicineservice.getAllStatusMedicine());
		map.put("stattreat", statustreatservice.getAllStatusTreat());
		map.put("dAlertList", typealertservice.getAllTypeAlertById(13));
		return "HealthCare/health/treat_health";
	}
	
	@RequestMapping(value="treat_horn",method=RequestMethod.GET)
	public String treat_horn(HttpSession session,Map<String,Object>map){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		TreatmentHistory treatment = new TreatmentHistory();
		map.put("treat", treatment);
		map.put("cattletreat", cattleservice.getstaTreatcattle());
		map.put("medicine", medicineservice.getAllMedicine());
		map.put("disease", diseaseService.getAllDisease());
		map.put("statusmedicine", statusmedicineservice.getAllStatusMedicine());
		map.put("stattreat", statustreatservice.getAllStatusTreat());
		map.put("dAlertList", typealertservice.getAllTypeAlertById(13));
		return "HealthCare/health/treat_horn";
	}
	
	@RequestMapping(value="treat_num",method=RequestMethod.GET)
	public String treat_num(HttpSession session,Map<String,Object>map){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		TreatmentHistory treatment = new TreatmentHistory();
		map.put("treat", treatment);
		map.put("cattletreat", cattleservice.getstaTreatcattle());
		map.put("medicine", medicineservice.getAllMedicine());
		map.put("disease", diseaseService.getAllDisease());
		map.put("statusmedicine", statusmedicineservice.getAllStatusMedicine());
		map.put("stattreat", statustreatservice.getAllStatusTreat());
		map.put("dAlertList", typealertservice.getAllTypeAlertById(13));
		return "HealthCare/health/treat_num";
	}
	
	@RequestMapping(value="treat_birth",method=RequestMethod.GET)
	public String treat_birth(HttpSession session,Map<String,Object>map){
		String sessionUsername = (String)session.getAttribute("username"); 
		map.put("ulist",memberService.getMemberByUsername(sessionUsername));
		TreatmentHistory treatment = new TreatmentHistory();
		map.put("treat", treatment);
		map.put("cattletreat", cattleservice.getstaTreatcattle());
		map.put("medicine", medicineservice.getAllMedicine());
		map.put("disease", diseaseService.getAllDisease());
		map.put("statusmedicine", statusmedicineservice.getAllStatusMedicine());
		map.put("stattreat", statustreatservice.getAllStatusTreat());
		map.put("dAlertList", typealertservice.getAllTypeAlertById(13));
		return "HealthCare/health/treat_birth";
	}
	
	@RequestMapping("/listcattle1")
	public @ResponseBody String listcattle1(@RequestParam int id) {

		Cattle cattle = cattleservice.getCattle(id);
		
		//System.out.println();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = Util.encodeUnicode(gson.toJson(cattle));
	 return json;
	}
	

	
	@RequestMapping(value="savehealth",method=RequestMethod.POST)
	public String savehealth(HttpSession session,Map<String, Object> map,
							@RequestParam("cattle") int cattle,
							@RequestParam("causeOfIllness") String causeOfIllness,
							@RequestParam("medicine") int[] medicine,
							@RequestParam("medicine") int med,
							@RequestParam("date") String dateTreat,
							@RequestParam("disease") int disease,
							@RequestParam("memberid") int member,
							@RequestParam("statusmedicine") int stat,
							@RequestParam("doseUsesage") int[] doseUsesage,
							@RequestParam("day_input") int dayId,
							@RequestParam("dateEndTreat") String time){
		
		 DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
		 DateTimeFormatter fmt1 = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss");
		 DateTimeFormatter fmt2 = DateTimeFormat.forPattern("HH:mm:ss");
		 DateFormat fmt3 = new SimpleDateFormat("yyyy");
		 DateTime dt = new DateTime();
		 String DTnow = fmt1.print(dt);
		 String TimeNow = fmt2.print(dt);
		 
		 Cattle cattle1 = cattleservice.getCattle(cattle);
		 String numCatt = cattle1.getNum();

		 TreatmentHistory treatmentHistory = new TreatmentHistory();
		 
	/*	 if (statusTreat == 1 ) {
			 cattle1.setStatusTreat(statustreatservice.getStatusTreat(1));
			 cattleservice.edit(cattle1);
			 
		
					
					treatmentHistory.setCattle(cattleservice.getCattle(cattle));
					treatmentHistory.setDisease(diseaseService.getDisease(0));
					treatmentHistory.setMember(memberService.getMember(0));
					treatmentHistory.setStatusMedicine(statusmedicineservice.getStatusMedicine(0));
					treatmentHistory.setMedicine(medicineservice.getMedicine(0));
					treatmentHistory.setCauseOfIllness(null);
					treatmentHistory.setDateTreat(dateTreat);
					treatmentHistory.setDateEndTreat(time);
					treatmentHistory.setDoseUsesage(0);
					treatmentHistory.setStatusTreat(statustreatservice.getStatusTreat(2));
					treatmenthistoryservice.add(treatmentHistory);
	



		}if (statusTreat == 3){
			 
			cattle1.setStatusTreat(statustreatservice.getStatusTreat(3));
			 cattleservice.edit(cattle1);
				
			 
		}*/
		
			List<Alert> alertList = alertservice.getAlertId(numCatt, 13);
			for (Alert closeAlert : alertList) {
			closeAlert.setStatusAlert(statusalertservice.getStatusAlert(2));
			closeAlert.setMember(memberService.getMember(member));
			alertservice.edit(closeAlert);
		}
		
		//if (statusTreat == 2){
			
			 //alert
			Alert alert = new Alert();
			 DateTime dtOrg = new DateTime(dateTreat);
			 DateTime dtPlusOne = dtOrg.plusDays(dayId);
			 String DayAlert = fmt.print(dtPlusOne);
			alert.setStatusAlert(statusalertservice.getStatusAlert(1));
			alert.setTypeAlert(typealertservice.getTypeAlerte(13));
			alert.setMember(memberService.getMember(member));
			alert.setCattle(cattleservice.getCattle(cattle));
			alert.setCattle_1(numCatt);
			alert.setDatealert(DayAlert);
			alert.setTimealert(time);
			alert.setDayinput(DTnow);
			alert.setTimeinput(TimeNow);
			//alert.setNote(note);
			alertservice.add(alert);
	
			 cattle1.setStatusTreat(statustreatservice.getStatusTreat(2));
			 cattleservice.edit(cattle1);


			 
			for (int i = 0; i < stat ; i++) {
				
				Medicine medicine2 = medicineservice.getMedicine(med);
				int s = medicine2.getMedicineSuccess();
				s = s+1;
				medicine2.setMedicineSuccess(s);
				//System.out.println(s);
				medicineservice.edit(medicine2);
				
				treatmentHistory.setCattle(cattleservice.getCattle(cattle));
				treatmentHistory.setDisease(diseaseService.getDisease(disease));
				treatmentHistory.setMember(memberService.getMember(member));
				treatmentHistory.setStatusMedicine(statusmedicineservice.getStatusMedicine(stat));
				treatmentHistory.setMedicine(medicineservice.getMedicine(medicine[i]));
				treatmentHistory.setCauseOfIllness(causeOfIllness);
				treatmentHistory.setDateTreat(dateTreat);
				treatmentHistory.setDateEndTreat(time);
				treatmentHistory.setDoseUsesage(doseUsesage[i]);
				treatmentHistory.setStatusTreat(statustreatservice.getStatusTreat(2));
				treatmenthistoryservice.add(treatmentHistory);
			}
		//}
		

		 

		return "redirect:index";
	}
	
	
}
