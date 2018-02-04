package farm3.spring.controller;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javassist.tools.framedump;
import farm3.spring.model.Farm;
import farm3.spring.model.FormulaRecord;
import farm3.spring.model.FormulaRecord2;
import farm3.spring.model.RawMaterialFormula;
import farm3.spring.myapp.StrToDate;
import farm3.spring.service.FarmService;
import farm3.spring.service.FormulaRecord2Service;
import farm3.spring.service.FormulaRecordService;
import farm3.spring.service.MemberService;
import farm3.spring.service.RawMaterialFormulaService;

@Controller
public class NutrientReportController {
	
	@Autowired
	private FarmService farmservice;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private FormulaRecordService FormulaRecordService;
	
	@Autowired
	private FormulaRecord2Service FormulaRecordService2;
	
	@Autowired
	private RawMaterialFormulaService rawmaterialformulaservice ;
	
	StrToDate StrToDate = new StrToDate();
	
	@RequestMapping("/ReportNutrientCowN")
	public ModelAndView ReportNutrientCow(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("/Nutrient/page/report/ReportNutrientCow");
		return model;
	}
	
	@RequestMapping("/ReportFoodN")
	public ModelAndView ReportFood(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		
		
		ModelAndView model = new ModelAndView("/Nutrient/page/report/ReportFood");
		return model;
	}
	
	@RequestMapping("/ReportCalculate")
	public ModelAndView ReportCalculate(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("formula", FormulaRecordService.getAllFormulaRecord());
		ModelAndView model = new ModelAndView("/Nutrient/page/report/ReportCalculate");
		return model;
	}
	
	@RequestMapping("/ReportStockN")
	public ModelAndView ReportStock(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("/Nutrient/page/report/ReportStock");
		return model;
	}
	
	
	
	
	
	
	
	@RequestMapping("LowReport")
	public String LowReport(@RequestParam("id") int id,Map<String, Object > map,
			HttpSession session){
		
		//DateTimeFormatter fmt = DateTimeFormat.forPattern("dd MMMM yyyy");
		DateTimeFormatter fmt = DateTimeFormat.forPattern("d MMMM yyyy");
		Format fmt2 = new SimpleDateFormat("d MMMM yyyy",new Locale("TH","th"));
		Date dt = new Date();
		String DateNow = fmt2.format(dt);
		
		String TypeReport = "��§ҹ����â��Ҥҵ���ش";
		Farm farm = farmservice.getFarm(1);
		String nameThai = farm.getNameThai();
		String shotName = farm.getShotName();
		String address = farm.getAddress();
		String phone = farm.getPhone();
				
				
					String sessionUsername = (String)session.getAttribute("username");
					String first = memberService.getMemberByUser(sessionUsername).getFirst();
					String last = memberService.getMemberByUser(sessionUsername).getLast();
					String privilege = memberService.getMemberByUser(sessionUsername).getPrivilege().getValue();
		String user="\n..................................\n( "+first+" "+last+" )\n"+privilege;
			
				map.put("nameThai", nameThai+" ("+shotName+")");
				map.put("address", address+" �� "+phone);
				map.put("TypeReport", TypeReport);
				map.put("Date", DateNow);
				map.put("User", user);
		
		map.put("List", fomuid(id));
		//map.put("List", fomurawid(id));
		
		//int i = rawmaterialformulaservice.getPrintRawFormula(id).size();
		//int i = FormulaRecordService.getPrintFormula(id).size();
		//System.out.println(i);
		return "Nutrient/page/report/LowReportPDF";
	}
			
	public List<Map<String, ?>> fomuid(int id ){
		List<Map<String, ?>> List = new ArrayList<>();
		
		List<FormulaRecord2> formux1 = FormulaRecordService2.getPrintFormula(id);
		List<RawMaterialFormula> formux = rawmaterialformulaservice.getPrintRawFormula(id);
		int i=1;
			for(RawMaterialFormula b : formux){
			Map<String, Object> mm = new HashMap<String, Object>();
			mm.put("i",i);
			mm.put("rawname",b.getName());	
			mm.put("rawprice",b.getPrice());
			mm.put("rawvalue",b.getValue());
			mm.put("forsumweight", b.getFormulaRecord2().getSumweight());
			mm.put("forcost", b.getFormulaRecord2().getCost());
			mm.put("fordm1", b.getFormulaRecord2().getDm1());
			mm.put("fordm2", b.getFormulaRecord2().getDm2());
			mm.put("forcp1", b.getFormulaRecord2().getCp1());
			mm.put("forcp2", b.getFormulaRecord2().getCp2());
			mm.put("fortdn1", b.getFormulaRecord2().getTdn1());
			mm.put("fortdn2", b.getFormulaRecord2().getTdn2());
			mm.put("forndf1", b.getFormulaRecord2().getNdf1());
//			mm.put("forndf2", b.getFormulaRecord2().getNdf2());
//			mm.put("foradf1", b.getFormulaRecord2().getAdf1());
//			mm.put("foradf2", b.getFormulaRecord2().getAdf2());
//			mm.put("forca1", b.getFormulaRecord2().getCa1());
//			mm.put("forca2", b.getFormulaRecord2().getCa2());
//			mm.put("forp1", b.getFormulaRecord2().getP1());
//			mm.put("forp2", b.getFormulaRecord2().getP2());
//			mm.put("fornfc1", b.getFormulaRecord2().getNfc1());
//			mm.put("fornfc2", b.getFormulaRecord2().getNfc2());
			mm.put("forvita1", b.getFormulaRecord2().getVita1());
			mm.put("forvita2", b.getFormulaRecord2().getVita2());
			mm.put("forvite1", b.getFormulaRecord2().getVite1());
			mm.put("forvite2", b.getFormulaRecord2().getVite2());
			List.add(mm);
			i++;
			}
		
		//System.out.println(List);
		return List; 
	}
		
		/*public List<Map<String, ?>> fomurawid(int id ){
			List<Map<String, ?>> List1 = new ArrayList<>();
			List<RawMaterialFormula> formux1 = rawmaterialformulaservice.getPrintRawFormula(id);
			int i=1;
			for(RawMaterialFormula a : formux1){
				Map<String, Object> m = new HashMap<String, Object>();
				
				m.put("rawname1",a.getName());	
				m.put("rawcost1",a.getPrice());
				m.put("rawvalue1",a.getValue());
				List1.add(m);
				i++;
			}
			System.out.println(List1);
		return List1;
		
	}*/
	
	
	
}
