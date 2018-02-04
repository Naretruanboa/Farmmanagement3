package farm3.spring.controller;



import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.persistence.Entity;

import javax.servlet.http.HttpSession;

import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import farm3.spring.model.Breeding;
import farm3.spring.model.Cattle;
import farm3.spring.model.CattleStamp;
import farm3.spring.model.CattleWean;
import farm3.spring.model.CattleYear;
import farm3.spring.model.Farm;
import farm3.spring.model.HornDetering;
import farm3.spring.model.Member;
import farm3.spring.model.Misscarry;
import farm3.spring.model.Pregnant;
import farm3.spring.model.Synchronize;
import farm3.spring.model.TreatmentHistory;
import farm3.spring.myapp.StrToDate;
import farm3.spring.service.BreedingService;
import farm3.spring.service.CattleService;
import farm3.spring.service.CattleStampService;
import farm3.spring.service.CattleWeanService;
import farm3.spring.service.CattleYearService;
import farm3.spring.service.FarmService;
import farm3.spring.service.HornDeteringService;
import farm3.spring.service.MemberService;
import farm3.spring.service.MisscarryService;
import farm3.spring.service.PregnantService;
import farm3.spring.service.SynchronizeService;
import farm3.spring.service.TreatmentHistoryService;

@Controller
public class HealthCareReportController {
	@Autowired
	private TreatmentHistoryService TreatmentHistoryService;
	
	@Autowired
	private MemberService memberservice;
	
	@Autowired
	private BreedingService breedingservice;
	
	@Autowired
	private PregnantService pregnantservice;
	
	@Autowired
	private SynchronizeService synchronizeservice;
	
	@Autowired
	private HornDeteringService horndeteringservice;
	
	@Autowired
	private CattleWeanService cattleweanservice;
	
	@Autowired
	private CattleStampService cattlestampservice;
	
	@Autowired
	private CattleYearService cattleyearservice;
	
	@Autowired
	private CattleService cattleservice;
	
	@Autowired
	private FarmService farmservice;
	
	@Autowired
	private MisscarryService misscarryservice;
	
	StrToDate StrToDate = new StrToDate();
	
	//////////////////////////////////////////////////////////////////
	//																//
	//						      TEST								//
	//																//
	//////////////////////////////////////////////////////////////////
	
	@RequestMapping(value = "/report")
	public ModelAndView report2(ModelMap modelMap) {//ModelMap modelMap
		//MemberReport memberReport = new MemberReport();
	//System.out.println(id);
		modelMap.put("list", findAll2());
		ModelAndView model = new ModelAndView("HealthCare/report/reportmember");
		return model;
	}
	
	public List<Map<String, ?>> findAll2(){
		List<Map<String, ?>> memberslist = new ArrayList<>();
		List<Member> members = memberservice.getAllMember(); //get data report
		for (Member member : members) {
			Map<String, Object> m  = new HashMap<String, Object>();
			m.put("id",member.getId());
			m.put("username",member.getUsername());
			m.put("first", member.getFirst());
			m.put("last", member.getLast());
			memberslist.add(m);
		}
		return memberslist;
	}
	
	////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////
	
	@RequestMapping(value="/report_1")
	public ModelAndView report_1(HttpSession session,Map<String, Object> map){
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("D-M-YYYY",new Locale("TH","th"));
	    String day = sdfDate.format(date);
		map.put("day1", day);
		map.put("ulist", memberservice.getMemberByUsername(sessionUsername));
		map.put("members", memberservice.getAllMember());
		ModelAndView model = new ModelAndView("HealthCare/report/report");
		
		return model;
	}
	
	@RequestMapping(value = "ReportHealthCare")
	public String ReportImport(HttpSession session,Map<String, Object> map,
			@RequestParam("idReport") int id,
			@RequestParam("dateStart") String dateStart,
			@RequestParam("dateEnd") String dateEnd) {

		String TypeReport = "";
		
		if(id==1){
			TypeReport = "��§ҹ����ѡ��";
		}else if(id==2){
			TypeReport = "��§�á�ü���ѹ���";
		}else if(id==3){
			TypeReport = "��§ҹ��õ�Ǩ��ͧ";
		}else if(id==4){
			TypeReport = "��§ҹ��ä�ʹ";
		}else if (id == 5) {
			TypeReport = "��§ҹ����˹���ǹӡ�á�Ѻ�Ѵ";
		}else if (id == 6) {
			TypeReport = "��§ҹ����٭��";
		}else if (id == 7) {
			TypeReport = "��§ҹ������ҹ�";
		}else if (id == 8) {
			TypeReport = "��§ҹ��õ�����";
		}else if (id == 9) {
			TypeReport = "��§ҹ��úѹ�֡���˹ѡ�  1 ��";
		}else if (id == 10) {
			TypeReport = "��§ҹ���";
		}

		
		
		DateTimeFormatter fmt = DateTimeFormat.forPattern("dd MMMM yyyy");
		Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
		Date dt = new Date();
		Date d1 = StrToDate.dateTo(dateStart);
		Date d2 = StrToDate.dateTo(dateEnd);
		String DateNow = fmt2.format(dt);
		String day = "������ѹ��� "+fmt2.format(d1)+" �֧�ѹ��� "+fmt2.format(d2);
		
		Farm farm = farmservice.getFarm(1);
String nameThai = farm.getNameThai();
String shotName = farm.getShotName();
String address = farm.getAddress();
String phone = farm.getPhone();
		
		
			String sessionUsername = (String)session.getAttribute("username");
			String first = memberservice.getMemberByUser(sessionUsername).getFirst();
			String last = memberservice.getMemberByUser(sessionUsername).getLast();
			String privilege = memberservice.getMemberByUser(sessionUsername).getPrivilege().getValue();
String user="\n..................................\n("+first+" "+last+")\n"+privilege;
	
		map.put("nameThai", nameThai+" ("+shotName+")");
		map.put("address", address+" �� "+phone);
		map.put("TypeReport", TypeReport);
		map.put("Date", day);
		map.put("User", user);
			
		map.put("List", findImportttttttttttttttt(id,dateStart,dateEnd));
		String model = "";
		if (id == 1) {
			model = "HealthCare/report/reportToPDF/ReportTreatPDF";
		}else if (id == 2) {
			model = "HealthCare/report/reportToPDF/ReportBreedPDF";
		}else if (id == 3) {
			model = "HealthCare/report/reportToPDF/ReportPregnantPDF";
		}else if (id == 4) {
			model = "HealthCare/report/reportToPDF/ReportCalvedPDF";
		}else if (id == 5) {
			model = "HealthCare/report/reportToPDF/ReportSyncPDF";
		}else if (id == 6) {
			model = "HealthCare/report/reportToPDF/ReportHornPDF";
		}else if (id == 7) {
			model = "HealthCare/report/reportToPDF/ReportWeanPDF";
		}else if (id == 8) {
			model = "HealthCare/report/reportToPDF/ReportStampPDF";
		}else if (id == 9) {
			model = "HealthCare/report/reportToPDF/ReportYearPDF";
		}else if (id == 10) {
			model = "HealthCare/report/reportToPDF/ReportMisscarryPDF";
		}

		return model;
	}
	
	
	public List<Map<String, ?>> findImportttttttttttttttt(int id,String dateStart,String dateEnd){
		List<Map<String, ?>> list = new ArrayList<>();
		if(id==1){
			List<TreatmentHistory> treat = TreatmentHistoryService.getSearchReport(dateStart, dateEnd);
			
			int i=1;
			for (TreatmentHistory T : treat) {
				Map<String, Object> map  = new HashMap<String, Object>();
				map.put("i",i);
				map.put("cattle",T.getCattle().getNum());
				map.put("DateTreat", T.getDateTreat());
				map.put("cause", T.getCauseOfIllness());
				map.put("disease", T.getDisease().getNameDisease());
				map.put("medicine", T.getMedicine().getTradeName());
				
				list.add(map);
				i++;
			}
		}else if (id == 2) {
			List<Breeding> breed = breedingservice.getSearchReport(dateStart, dateEnd);
			
			int i=1;
			for (Breeding b : breed) {
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("i", i);
				map.put("catmem",b.getCattleByCattlemaId().getNum());
				map.put("catfat", b.getCattleByCattlefaId().getNum());
				map.put("date", b.getDate());
				map.put("member", b.getMember().getFirst());
				
				list.add(map);
				i++;
			}
		}else if (id == 3) {
			List<Pregnant> pregnant = pregnantservice.getSearchReport(dateStart, dateEnd);
			
			int i=1;
			for (Pregnant p : pregnant){
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("i", i);
				map.put("cattmem", p.getBreeding().getCattleByCattlemaId().getNum());
				map.put("date", p.getDatePreg());
				map.put("stat", p.getStatusPregnant().getValue());
				
				list.add(map);
				i++;
			}
		}else if(id == 4){
			List<Cattle> cattle = cattleservice.getSearchReport(dateStart, dateEnd);
			
			int i=1;
			for(Cattle c : cattle){
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("i", i);
				map.put("catmem", c.getMaId());
				map.put("catfat", c.getFaId());
				map.put("catcalve", c.getName());
				map.put("date", c.getCalved());
				
				list.add(map);
				i++;
			}
		}else if (id == 5) {
			List<Synchronize> sync = synchronizeservice.getSearchReport(dateStart, dateEnd);
			
			int i=1;
			for (Synchronize s : sync){
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("i", i);
				map.put("catt", s.getCattle().getNum());
				map.put("program", s.getTypeSync().getValue());
				map.put("date", s.getDateSync());
				map.put("member", s.getMember().getFirst());
				
				list.add(map);
				i++;
			}
		}else if (id == 6) {
			List<HornDetering> horn = horndeteringservice.getSearchReport(dateStart, dateEnd);
			
			int i=1;
			for (HornDetering h : horn){
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("i", i);
				map.put("numdate", h.getCattle().getNumDate());
				map.put("date", h.getDate());
				map.put("type", h.getTypeHorn().getValue());
				map.put("member", h.getMember().getFirst());
				
				list.add(map);
				i++;
			}
		} else if (id == 7){
			List<CattleWean> wean = cattleweanservice.getSearchReport(dateStart, dateEnd);
			
			int i=1;
			for (CattleWean w : wean){
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("i", i);
				map.put("numdate", w.getCattle().getNumDate());
				map.put("date", w.getDate());
				map.put("weig", w.getWeigthwean());
				map.put("member", w.getMember().getFirst());
				
				list.add(map);
				i++;
			}
		}else if (id == 8) { 
			List<CattleStamp> stamp = cattlestampservice.getSearchReport(dateStart, dateEnd);
			
			int i=1;
			for (CattleStamp s : stamp){
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("num", s.getCattle().getNum());
				map.put("numDate", s.getCattle().getNumDate());
				map.put("date", s.getDate());
				map.put("member", s.getMember().getFirst());
				
				list.add(map);
				i++;
			}
		}else if (id == 9){
			List<CattleYear> year = cattleyearservice.getSearchReport(dateStart, dateEnd);
			
			int i=1;
			for (CattleYear y : year){
				Map<String, Object>map = new HashMap<String, Object>();	
				map.put("i", i);
				map.put("num", y.getCattle().getNum());
				map.put("date", y.getDate());
				map.put("year", y.getWeightyear());
				map.put("member", y.getMember().getFirst());
				
				list.add(map);
				i++;
			}
		}else if (id == 10) {
			List<Misscarry> miss = misscarryservice.getSearchReport(dateStart, dateEnd);
			
			int i=1;
			for (Misscarry m : miss){
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("i", i);
				map.put("num", m.getCattle().getNum());
				map.put("count", m.getCountMisscarry());
				map.put("date", m.getDay());
				map.put("member", m.getMember().getFirst());
				
				list.add(map);
				i++;
			}
		}
		return list;
	}
	
}
