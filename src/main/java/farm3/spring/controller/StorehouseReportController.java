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

import farm3.spring.model.Farm;
import farm3.spring.model.Medicine;
import farm3.spring.model.MedicineImport;
import farm3.spring.model.MedicineOrder;
import farm3.spring.model.MedicineRelease;
import farm3.spring.model.Member;
import farm3.spring.model.RawMaterial;
import farm3.spring.model.RawMaterialImport;
import farm3.spring.model.RawMaterialOrder;
import farm3.spring.model.RawMaterialRelease;
import farm3.spring.model.Semen;
import farm3.spring.model.SemenImport;
import farm3.spring.model.SemenOrder;
import farm3.spring.model.SemenRelease;
import farm3.spring.model.Tool;
import farm3.spring.model.ToolBorrow;
import farm3.spring.model.ToolBroken;
import farm3.spring.model.ToolImport;
import farm3.spring.model.ToolOrder;
import farm3.spring.model.ToolRelease;
import farm3.spring.myapp.StrToDate;
import farm3.spring.service.FarmService;
import farm3.spring.service.MedicineImportService;
import farm3.spring.service.MedicineOrderService;
import farm3.spring.service.MedicineReleaseService;
import farm3.spring.service.MedicineService;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;
import farm3.spring.service.RawMaterialImportService;
import farm3.spring.service.RawMaterialOrderService;
import farm3.spring.service.RawMaterialReleaseService;
import farm3.spring.service.RawMaterialService;
import farm3.spring.service.SemenImportService;
import farm3.spring.service.SemenOrderService;
import farm3.spring.service.SemenReleaseService;
import farm3.spring.service.SemenService;
import farm3.spring.service.ToolBorrowService;
import farm3.spring.service.ToolBrokenService;
import farm3.spring.service.ToolImportService;
import farm3.spring.service.ToolOrderService;
import farm3.spring.service.ToolReleaseService;
import farm3.spring.service.ToolService;
import farm3.spring.service.TypeMaterialService;
import farm3.spring.service.UnitRawMaterialService;


@Controller
public class StorehouseReportController {
	StrToDate StrToDate = new StrToDate();
	@Autowired
	private FarmService farmservice;
	@Autowired
	private RawMaterialImportService rawimportservice;
	@Autowired
	private RawMaterialReleaseService rawreleaseservice;
	@Autowired
	private RawMaterialOrderService raworderservice;
	@Autowired
	private MemberService memberService;
	//Medicine
	@Autowired
	private MedicineImportService medicineimportservice;
	@Autowired
	private MedicineReleaseService medicinereleaseservice;
	@Autowired
	private MedicineOrderService medicineorderservice;
	@Autowired
	private MedicineService medicineservice;
	@Autowired
	private SemenService semenservice;
	@Autowired
	private RawMaterialService rawmaterialservice;
	@Autowired
	private ToolService toolservice;
	@Autowired
	private ToolBrokenService toolbrokenservice;
	@Autowired
	private ToolImportService toolimportservice;
	@Autowired
	private ToolReleaseService toolreleaseservice;
	@Autowired
	private ToolOrderService toolorderservice;
	@Autowired
	private ToolBorrowService toolborrowservice;
	@Autowired
	private SemenImportService semenimportservice;
	@Autowired
	private SemenReleaseService semenreleaseservice;
	@Autowired
	private SemenOrderService semenorderservice;
	
	@RequestMapping("/report_broken")
	public ModelAndView report_broken(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("members", memberService.getAllMember());
		
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String day = sdfDate.format(date);
		map.put("day", day);
		ModelAndView model = new ModelAndView("Storehouse/page/report/report_broken");
		return model;
	}
	@RequestMapping("/report_import") //˹�ҹ����
	public ModelAndView report_import(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("members", memberService.getAllMember());
		
		//String start="2016-06-07";
		//String Eend="2016-06-09";
	//	int id = 42;
	//	map.put("med", medicineimportservice.getSearchReport(start, Eend, id));
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String day = sdfDate.format(date);
		map.put("day", day);
		ModelAndView model = new ModelAndView("Storehouse/page/report/report_import");
		return model;
	}
	@RequestMapping("/report_borrow") //˹������׹
	public ModelAndView report_borrow(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String day = sdfDate.format(date);
		map.put("day", day);
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("members", memberService.getAllMember());
		ModelAndView model = new ModelAndView("Storehouse/page/report/report_borrow");
		return model;
		
	}
	
	@RequestMapping("/report_order") //˹����觫���
	public ModelAndView report_order(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String day = sdfDate.format(date);
		map.put("day", day);
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("members", memberService.getAllMember());
		ModelAndView model = new ModelAndView("Storehouse/page/report/report_order");
		return model;
		
	}
	@RequestMapping("/report_release") //˹���ԡ
	public ModelAndView report_release(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String day = sdfDate.format(date);
		map.put("day", day);
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("members", memberService.getAllMember());
		ModelAndView model = new ModelAndView("Storehouse/page/report/report_release");
		return model;
	}
	
	@RequestMapping("/report_stock") //˹�Ҩӹǹ����ѧ
	public ModelAndView report_stock(HttpSession session,Map<String, Object> map) {

		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("Storehouse/page/report/report_stock");
		return model;
	}

//*************************************************************************************************\\
//																									*
//																									*	
//																									*
//																									*
//																									*
//																									*
//										REPORT PDF													*
//																									*
//																									*
//																									*
//																									*
//																									*
//*************************************************************************************************//
	//################################################report Broken#########################
	@RequestMapping(value = "ReportBroken")
	public String ReportBroken(HttpSession session,Map<String, Object> map,
			@RequestParam("dateStart") String dateStart,
			@RequestParam("dateEnd") String dateEnd){
		String TypeReport = "��§ҹ����觫����ػ�ó�";
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
		String first = memberService.getMemberByUser(sessionUsername).getFirst();
		String last = memberService.getMemberByUser(sessionUsername).getLast();
		String privilege = memberService.getMemberByUser(sessionUsername).getPrivilege().getValue();
		String user="\n..................................\n("+first+" "+last+")\n"+privilege;
		
		map.put("nameThai", nameThai+" ("+shotName+")");
		map.put("address", address+" �� "+phone);
		map.put("TypeReport", TypeReport);
		map.put("Date", day);
		map.put("User", user);
		map.put("List", findBroken(dateStart,dateEnd));
		
	return "Storehouse/page/report/ReportBrokenAllPdf";
	}
	public List<Map<String, ?>> findBroken(String dateStart,String dateEnd){
		List<Map<String, ?>> list = new ArrayList<>();
		
		List<ToolBroken> Tools = toolbrokenservice.getSearchReport(dateStart, dateEnd);
		int i=1;
		for (ToolBroken t : Tools) {
			Map<String, Object> m  = new HashMap<String, Object>();
			m.put("i",i);
			m.put("name",t.getTool().getName());
			m.put("quantity", t.getQuantity());
			m.put("unit", t.getTool().getUnitTool().getValue());
			
				m.put("Member",t.getMember().getFirst()+" "+t.getMember().getLast());
				Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
				Date d1 = StrToDate.dateTo(t.getDayBroken());
				m.put("Day", fmt2.format(d1));
			
			list.add(m);
			i++;
		}
		return list;
	}
	//################################################report Borrow#########################
	@RequestMapping(value = "ReportBorrow")
	public String ReportBorrow(HttpSession session,Map<String, Object> map,
			@RequestParam("idStock") int id,
			@RequestParam("memid") int memid,
			@RequestParam("dateStart") String dateStart,
			@RequestParam("dateEnd") String dateEnd) {
	//System.out.println(id);
		String TypeReport = "";
		if(id==1){
			TypeReport = "��§ҹ�������ػ�ó�";
		}else if(id==2){
			TypeReport = "��§ҹ��ä׹�ػ�ó�";
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
		String user;
		if(memid !=0){
			user = "..................................\n("+memberService.getMember(memid).getFirst()+" "+memberService.getMember(memid).getLast()+")\n"+memberService.getMember(memid).getPrivilege().getValue();
		}else{
			String sessionUsername = (String)session.getAttribute("username");
			String first = memberService.getMemberByUser(sessionUsername).getFirst();
			String last = memberService.getMemberByUser(sessionUsername).getLast();
			String privilege = memberService.getMemberByUser(sessionUsername).getPrivilege().getValue();
			user="\n..................................\n("+first+" "+last+")\n"+privilege;
		}
		map.put("nameThai", nameThai+" ("+shotName+")");
		map.put("address", address+" �� "+phone);
		map.put("TypeReport", TypeReport);
		map.put("Date", day);
		map.put("User", user);
		map.put("List", findBorrow(id,memid,dateStart,dateEnd));
		String model;
		if(memid ==0){
			model = "Storehouse/page/report/ReportBorrowAllpdf";
		}
		else{
			model = "Storehouse/page/report/ReportBorrowpdf";
		}
		return model;
	}
	public List<Map<String, ?>> findBorrow(int id,int memid,String dateStart,String dateEnd){
		List<Map<String, ?>> list = new ArrayList<>();
		if(id==1){
			List<ToolBorrow> Tools = toolborrowservice.getSearchReport(dateStart, dateEnd, memid, 1);
			int i=1;
			for (ToolBorrow t : Tools) {
				Map<String, Object> m  = new HashMap<String, Object>();
				m.put("i",i);
				m.put("name",t.getTool().getName());
				m.put("quantity", t.getQuantity());
				m.put("unit", t.getTool().getUnitTool().getValue());
				if(memid==0){
					m.put("Member",t.getMember().getFirst()+" "+t.getMember().getLast());
					Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
					Date d1 = StrToDate.dateTo(t.getDayBorrow());
					m.put("Day", fmt2.format(d1));
				}
				list.add(m);
				i++;
			}
		}else if(id==2){
			List<ToolBorrow> Tools = toolborrowservice.getSearchReport(dateStart, dateEnd, memid, 2);
			int i=1;
			for (ToolBorrow t : Tools) {
				Map<String, Object> m  = new HashMap<String, Object>();
				m.put("i",i);
				m.put("name",t.getTool().getName());
				m.put("quantity", t.getQuantity());
				m.put("unit", t.getTool().getUnitTool().getValue());
				if(memid==0){
					m.put("Member",t.getMember().getFirst()+" "+t.getMember().getLast());
					Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
					Date d1 = StrToDate.dateTo(t.getDayReturn());
					m.put("Day", fmt2.format(d1));
				}
				list.add(m);
				i++;
			}
		}
		return list;
	}
	//################################################report Order#########################
			@RequestMapping(value = "ReportOrder")
			public String ReportOrder(HttpSession session,Map<String, Object> map,
					@RequestParam("idStock") int id,
					@RequestParam("memid") int memid,
					@RequestParam("dateStart") String dateStart,
					@RequestParam("dateEnd") String dateEnd) {
			//System.out.println(id);
				String TypeReport = "";
				if(id==1){
					TypeReport = "��§ҹ�����觫�����";
				}else if(id==2){
					TypeReport = "��§ҹ�����觫��͹������";
				}else if(id==3){
					TypeReport = "��§ҹ�����觫����ѵ�شԺ������ѵ��";
				}else if(id==4){
					TypeReport = "��§ҹ�����觫�����ʴ�/�ػ�ó�";
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
				String user;
				if(memid !=0){
					user = "..................................\n("+memberService.getMember(memid).getFirst()+" "+memberService.getMember(memid).getLast()+")\n"+memberService.getMember(memid).getPrivilege().getValue();
				}else{
					String sessionUsername = (String)session.getAttribute("username");
					String first = memberService.getMemberByUser(sessionUsername).getFirst();
					String last = memberService.getMemberByUser(sessionUsername).getLast();
					String privilege = memberService.getMemberByUser(sessionUsername).getPrivilege().getValue();
					user="\n..................................\n("+first+" "+last+")\n"+privilege;
				}
				map.put("nameThai", nameThai+" ("+shotName+")");
				map.put("address", address+" �� "+phone);
				map.put("TypeReport", TypeReport);
				map.put("Date", day);
				map.put("User", user);
				map.put("List", findOrder(id,memid,dateStart,dateEnd));
				String model;
				if(memid ==0){
					model = "Storehouse/page/report/ReportOrderAllpdf";
				}
				else{
					model = "Storehouse/page/report/ReportOrderpdf";
				}
				return model;
			}
			public List<Map<String, ?>> findOrder(int id,int memid,String dateStart,String dateEnd){
				List<Map<String, ?>> list = new ArrayList<>();
				if(id==1){
					List<MedicineOrder> medicines = medicineorderservice.getSearchReport(dateStart, dateEnd, memid);
					int i=1;
					for (MedicineOrder med : medicines) {
						Map<String, Object> m  = new HashMap<String, Object>();
						m.put("i",i);
						m.put("name",med.getMedicine().getTradeName());
						m.put("quantity", med.getQuantity());
						m.put("unit", med.getMedicine().getUnitMedicine().getValue());
						if(memid==0){
							m.put("Member",med.getMember().getFirst()+" "+med.getMember().getLast());
							Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
							Date d1 = StrToDate.dateTo(med.getDay());
							m.put("Day", fmt2.format(d1));
						}
						list.add(m);
						i++;
					}
				}else if(id==2){
					List<SemenOrder> semens = semenorderservice.getSearchReport(dateStart, dateEnd, memid);
					int i=1;
					for (SemenOrder se : semens) {
						Map<String, Object> map  = new HashMap<String, Object>();
						map.put("i",i);
						map.put("name",se.getSemen().getNameCattle());
						map.put("quantity", se.getQuantity());
						map.put("unit", "��ʹ/���");
						if(memid==0){
							map.put("Member",se.getMember().getFirst()+" "+se.getMember().getLast());
							Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
							Date d1 = StrToDate.dateTo(se.getDay());
							map.put("Day", fmt2.format(d1));
						}
						list.add(map);
						i++;
					}
				}else if(id==3){
					List<RawMaterialOrder> raws = raworderservice.getSearchReport(dateStart, dateEnd, memid);
					int i=1;
					for (RawMaterialOrder raw : raws) {
						Map<String, Object> m  = new HashMap<String, Object>();
						m.put("i",i);
						m.put("name",raw.getRawMaterial().getName());
						m.put("quantity", raw.getQuantity());
						m.put("unit", raw.getRawMaterial().getUnitRawMaterial().getValue());
						if(memid==0){
							m.put("Member",raw.getMember().getFirst()+" "+raw.getMember().getLast());
							Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
							Date d1 = StrToDate.dateTo(raw.getDay());
							m.put("Day", fmt2.format(d1));
						}
						list.add(m);
						i++;
					}
				}else if(id==4){
					List<ToolOrder> tools = toolorderservice.getSearchReport(dateStart, dateEnd, memid);
					int i=1;
					for (ToolOrder t : tools) {
						Map<String, Object> map  = new HashMap<String, Object>();
						map.put("i",i);
						map.put("name",t.getTool().getName());
						map.put("quantity", t.getQuantity());
						map.put("unit", t.getTool().getUnitTool().getValue());
						if(memid==0){
							map.put("Member",t.getMember().getFirst()+" "+t.getMember().getLast());
							Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
							Date d1 = StrToDate.dateTo(t.getDay());
							map.put("Day", fmt2.format(d1));
						}
						list.add(map);
						i++;
					}
				}
				return list;
			}	
	//################################################report Release#########################
		@RequestMapping(value = "ReportRelease")
		public String ReportRelease(HttpSession session,Map<String, Object> map,
				@RequestParam("idStock") int id,
				@RequestParam("memid") int memid,
				@RequestParam("dateStart") String dateStart,
				@RequestParam("dateEnd") String dateEnd) {
		//System.out.println(id);
			String TypeReport = "";
			if(id==1){
				TypeReport = "��§ҹ����ԡ��";
			}else if(id==2){
				TypeReport = "��§ҹ����ԡ�������";
			}else if(id==3){
				TypeReport = "��§ҹ����ԡ�ѵ�شԺ������ѵ��";
			}else if(id==4){
				TypeReport = "��§ҹ����ԡ��ʴ�/�ػ�ó�";
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
			String user;
			if(memid !=0){
				user = "..................................\n("+memberService.getMember(memid).getFirst()+" "+memberService.getMember(memid).getLast()+")\n"+memberService.getMember(memid).getPrivilege().getValue();
			}else{
				String sessionUsername = (String)session.getAttribute("username");
				String first = memberService.getMemberByUser(sessionUsername).getFirst();
				String last = memberService.getMemberByUser(sessionUsername).getLast();
				String privilege = memberService.getMemberByUser(sessionUsername).getPrivilege().getValue();
				user="\n..................................\n("+first+" "+last+")\n"+privilege;
			}
			map.put("nameThai", nameThai+" ("+shotName+")");
			map.put("address", address+" �� "+phone);
			map.put("TypeReport", TypeReport);
			map.put("Date", day);
			map.put("User", user);
			map.put("List", findRelease(id,memid,dateStart,dateEnd));
			String model;
			if(memid ==0){
				model = "Storehouse/page/report/ReportReleaseAllpdf";
			}
			else{
				model = "Storehouse/page/report/ReportReleasepdf";
			}
			return model;
		}
		public List<Map<String, ?>> findRelease(int id,int memid,String dateStart,String dateEnd){
			List<Map<String, ?>> list = new ArrayList<>();
			if(id==1){
				List<MedicineRelease> medicines = medicinereleaseservice.getSearchReport(dateStart, dateEnd, memid);
				int i=1;
				for (MedicineRelease med : medicines) {
					Map<String, Object> m  = new HashMap<String, Object>();
					m.put("i",i);
					m.put("name",med.getMedicine().getTradeName());
					m.put("quantity", med.getQuantity());
					m.put("unit", med.getMedicine().getUnitMedicine().getValue());
					if(memid==0){
						m.put("Member",med.getMember().getFirst()+" "+med.getMember().getLast());
						Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
						Date d1 = StrToDate.dateTo(med.getDay());
						m.put("Day", fmt2.format(d1));
					}
					list.add(m);
					i++;
				}
			}else if(id==2){
				List<SemenRelease> semens = semenreleaseservice.getSearchReport(dateStart, dateEnd, memid);
				int i=1;
				for (SemenRelease se : semens) {
					Map<String, Object> map  = new HashMap<String, Object>();
					map.put("i",i);
					map.put("name",se.getSemen().getNameCattle());
					map.put("quantity", se.getQuantity());
					map.put("unit", "��ʹ/���");
					if(memid==0){
						map.put("Member",se.getMember().getFirst()+" "+se.getMember().getLast());
						Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
						Date d1 = StrToDate.dateTo(se.getDay());
						map.put("Day", fmt2.format(d1));
					}
					list.add(map);
					i++;
				}
			}else if(id==3){
				List<RawMaterialRelease> raws = rawreleaseservice.getSearchReport(dateStart, dateEnd, memid);
				int i=1;
				for (RawMaterialRelease raw : raws) {
					Map<String, Object> m  = new HashMap<String, Object>();
					m.put("i",i);
					m.put("name",raw.getRawMaterial().getName());
					m.put("quantity", raw.getQuantity());
					m.put("unit", raw.getRawMaterial().getUnitRawMaterial().getValue());
					//m.put("HeadName", "��§ҹ�ѵ�شԺ����ѧ");
					if(memid==0){
						m.put("Member",raw.getMember().getFirst()+" "+raw.getMember().getLast());
						Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
						Date d1 = StrToDate.dateTo(raw.getDay());
						m.put("Day", fmt2.format(d1));
					}
					list.add(m);
					i++;
				}
			}else if(id==4){
				List<ToolRelease> tools = toolreleaseservice.getSearchReport(dateStart, dateEnd, memid);
				int i=1;
				for (ToolRelease t : tools) {
					Map<String, Object> map  = new HashMap<String, Object>();
					map.put("i",i);
					map.put("name",t.getTool().getName());
					map.put("quantity", t.getQuantity());
					map.put("unit", t.getTool().getUnitTool().getValue());
					if(memid==0){
						map.put("Member",t.getMember().getFirst()+" "+t.getMember().getLast());
						Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
						Date d1 = StrToDate.dateTo(t.getDay());
						map.put("Day", fmt2.format(d1));
					}
					list.add(map);
					i++;
				}
			}
			return list;
		}	
	//################################################report Import#########################
	@RequestMapping(value = "ReportImport")
	public String ReportImport(HttpSession session,Map<String, Object> map,
			@RequestParam("idStock") int id,
			@RequestParam("memid") int memid,
			@RequestParam("dateStart") String dateStart,
			@RequestParam("dateEnd") String dateEnd) {
	//System.out.println(id);
		String TypeReport = "";
		if(id==1){
			TypeReport = "��§ҹ��ù������";
		}else if(id==2){
			TypeReport = "��§ҹ��ù���ҹ������";
		}else if(id==3){
			TypeReport = "��§ҹ��ù�����ѵ�شԺ������ѵ��";
		}else if(id==4){
			TypeReport = "��§ҹ��ù������ʴ�/�ػ�ó�";
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
		String user;
		if(memid !=0){
			user = "..................................\n("+memberService.getMember(memid).getFirst()+" "+memberService.getMember(memid).getLast()+")\n"+memberService.getMember(memid).getPrivilege().getValue();
		}else{
			String sessionUsername = (String)session.getAttribute("username");
			String first = memberService.getMemberByUser(sessionUsername).getFirst();
			String last = memberService.getMemberByUser(sessionUsername).getLast();
			String privilege = memberService.getMemberByUser(sessionUsername).getPrivilege().getValue();
			user="\n..................................\n("+first+" "+last+")\n"+privilege;
		}
		map.put("nameThai", nameThai+" ("+shotName+")");
		map.put("address", address+" �� "+phone);
		map.put("TypeReport", TypeReport);
		map.put("Date", day);
		map.put("User", user);
		map.put("List", findImport(id,memid,dateStart,dateEnd));
		String model;
		if(memid ==0){
			model = "Storehouse/page/report/ReportImportAllpdf";
		}
		else{
			model = "Storehouse/page/report/ReportImportpdf";
		}
		return model;
	}
	public List<Map<String, ?>> findImport(int id,int memid,String dateStart,String dateEnd){
		List<Map<String, ?>> list = new ArrayList<>();
		if(id==1){
			List<MedicineImport> medicines = medicineimportservice.getSearchReport(dateStart, dateEnd, memid);
			int i=1;
			for (MedicineImport med : medicines) {
				Map<String, Object> m  = new HashMap<String, Object>();
				m.put("i",i);
				m.put("name",med.getMedicine().getTradeName());
				m.put("quantity", med.getQuantity());
				m.put("unit", med.getMedicine().getUnitMedicine().getValue());
				if(memid==0){
					m.put("Member",med.getMember().getFirst()+" "+med.getMember().getLast());
					//DateTimeFormatter fmt = DateTimeFormat.forPattern("dd MMMM yyyy");
					Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
					Date d1 = StrToDate.dateTo(med.getDay());
					m.put("Day", fmt2.format(d1));
				}
				list.add(m);
				i++;
			}
		}else if(id==2){
			List<SemenImport> semens = semenimportservice.getSearchReport(dateStart, dateEnd, memid);
			int i=1;
			for (SemenImport se : semens) {
				Map<String, Object> map  = new HashMap<String, Object>();
				map.put("i",i);
				map.put("name",se.getSemen().getNameCattle());
				map.put("quantity", se.getQuantity());
				map.put("unit", "��ʹ/���");
				if(memid==0){
					map.put("Member",se.getMember().getFirst()+" "+se.getMember().getLast());
					//DateTimeFormatter fmt = DateTimeFormat.forPattern("dd MMMM yyyy");
					Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
					Date d1 = StrToDate.dateTo(se.getDay());
					map.put("Day", fmt2.format(d1));
				}
				list.add(map);
				i++;
			}
		}else if(id==3){
			List<RawMaterialImport> raws = rawimportservice.getSearchReport(dateStart, dateEnd, memid);
			int i=1;
			for (RawMaterialImport raw : raws) {
				Map<String, Object> m  = new HashMap<String, Object>();
				m.put("i",i);
				m.put("name",raw.getRawMaterial().getName());
				m.put("quantity", raw.getQuantity());
				m.put("unit", raw.getRawMaterial().getUnitRawMaterial().getValue());
				if(memid==0){
					m.put("Member",raw.getMember().getFirst()+" "+raw.getMember().getLast());
					//DateTimeFormatter fmt = DateTimeFormat.forPattern("dd MMMM yyyy");
					Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
					Date d1 = StrToDate.dateTo(raw.getDay());
					m.put("Day", fmt2.format(d1));
				}
				//m.put("HeadName", "��§ҹ�ѵ�شԺ����ѧ");
				list.add(m);
				i++;
			}
		}else if(id==4){
			List<ToolImport> tools = toolimportservice.getSearchReport(dateStart, dateEnd, memid);
			int i=1;
			for (ToolImport t : tools) {
				Map<String, Object> map  = new HashMap<String, Object>();
				map.put("i",i);
				map.put("name",t.getTool().getName());
				map.put("quantity", t.getQuantity());
				map.put("unit", t.getTool().getUnitTool().getValue());
				if(memid==0){
					map.put("Member",t.getMember().getFirst()+" "+t.getMember().getLast());
					//DateTimeFormatter fmt = DateTimeFormat.forPattern("dd MMMM yyyy");
					Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
					Date d1 = StrToDate.dateTo(t.getDay());
					map.put("Day", fmt2.format(d1));
				}
				list.add(map);
				i++;
			}
		}
		return list;
	}	
	
	//###################################################report Stock######################
	@RequestMapping(value = "ReportStock")
	public ModelAndView ReportStock(HttpSession session,Map<String, Object> map,@RequestParam("id") int id) {
	//System.out.println(id);
		String TypeReport = "";
		if(id==1){
			TypeReport = "��§ҹ�Ҥ���ѧ";
		}else if(id==2){
			TypeReport = "��§ҹ������ͤ���ѧ";
		}else if(id==3){
			TypeReport = "��§ҹ�ѵ�شԺ������ѵ�줧��ѧ";
		}else if(id==4){
			TypeReport = "��§ҹ��ʴ�/�ػ�ó줧��ѧ";
		}
		Farm farm = farmservice.getFarm(1);
		String nameThai = farm.getNameThai();
		String shotName = farm.getShotName();
		String address = farm.getAddress();
		String phone = farm.getPhone();
		
		String sessionUsername = (String)session.getAttribute("username");
		String first = memberService.getMemberByUser(sessionUsername).getFirst();
		String last = memberService.getMemberByUser(sessionUsername).getLast();
		String privilege = memberService.getMemberByUser(sessionUsername).getPrivilege().getValue();
		//System.out.println(first+" "+last+"\n"+privilege);
		
		
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String day = sdfDate.format(date);
		//System.out.println(day);
		
		Format fmt2 = new SimpleDateFormat("dd MMMM yyyy",new Locale("TH","th"));
		Date d1 = StrToDate.dateTo(day);
		//map.put("Day", fmt2.format(d1));
		//System.out.println(fmt2.format(d1));
		
		map.put("User", "\n..................................\n("+first+" "+last+")\n"+privilege);
		map.put("nameThai", nameThai+" ("+shotName+")");
		map.put("Date", "�ѹ��� "+fmt2.format(d1));
		map.put("address", address+" �� "+phone);
		map.put("TypeReport", TypeReport);
		map.put("List", findStock(id));
		
		ModelAndView model = new ModelAndView("Storehouse/page/report/ReportStockpdf");
		return model;
	}	
	public List<Map<String, ?>> findStock(int id){
		List<Map<String, ?>> list = new ArrayList<>();
		if(id==1){
			List<Medicine> medicines = medicineservice.getAllMedicine();
			int i=1;
			for (Medicine med : medicines) {
				Map<String, Object> m  = new HashMap<String, Object>();
				m.put("i",i);
				m.put("name",med.getTradeName());
				m.put("quantity", med.getQuantity());
				m.put("unit", med.getUnitMedicine().getValue());
				list.add(m);
				i++;
			}
		}else if(id==2){
			List<Semen> semens = semenservice.getAllSemen();
			int i=1;
			for (Semen se : semens) {
				Map<String, Object> map  = new HashMap<String, Object>();
				map.put("i",i);
				map.put("name",se.getNameCattle());
				map.put("quantity", se.getQuantity());
				map.put("unit", "��ʹ/���");
				list.add(map);
				i++;
			}
		}else if(id==3){
			List<RawMaterial> raws = rawmaterialservice.getAllRawMaterial();
			int i=1;
			for (RawMaterial raw : raws) {
				Map<String, Object> m  = new HashMap<String, Object>();
				m.put("i",i);
				m.put("name",raw.getName());
				m.put("quantity", raw.getQuantity());
				m.put("unit", raw.getUnitRawMaterial().getValue());
				//m.put("HeadName", "��§ҹ�ѵ�شԺ����ѧ");
				list.add(m);
				i++;
			}
		}else if(id==4){
			List<Tool> tools = toolservice.getAllTool();
			int i=1;
			for (Tool t : tools) {
				Map<String, Object> map  = new HashMap<String, Object>();
				map.put("i",i);
				map.put("name",t.getName());
				map.put("quantity", t.getQuantity());
				map.put("unit", t.getUnitTool().getValue());
				list.add(map);
				i++;
			}
		}
		return list;
	}	
}
