package farm3.spring.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import farm3.spring.service.BucketService;
import farm3.spring.service.MedicineImportService;
import farm3.spring.service.MedicineOrderService;
import farm3.spring.service.MedicineReleaseService;
import farm3.spring.service.MedicineService;
import farm3.spring.service.MemberService;
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

import farm3.spring.model.Breed;
import farm3.spring.model.Bucket;
import farm3.spring.model.GroupMedicine;
import farm3.spring.model.Medicine;
import farm3.spring.model.MedicineImport;
import farm3.spring.model.MedicineOrder;
import farm3.spring.model.MedicineRelease;
import farm3.spring.model.Member;
import farm3.spring.model.Privilege;
import farm3.spring.model.RawMaterial;
import farm3.spring.model.RawMaterialImport;
import farm3.spring.model.RawMaterialOrder;
import farm3.spring.model.RawMaterialRelease;
import farm3.spring.model.Semen;
import farm3.spring.model.SemenImport;
import farm3.spring.model.SemenOrder;
import farm3.spring.model.SemenRelease;
import farm3.spring.model.Tool;
import farm3.spring.model.ToolImport;
import farm3.spring.model.ToolOrder;
import farm3.spring.model.ToolRelease;
import farm3.spring.model.TypeMaterial;
import farm3.spring.model.TypeTool;

@Controller
public class StorehoueSearchController {
	@Autowired
	private MemberService memberservice;
	@Autowired
	private RawMaterialService rawmaterialservice;
	@Autowired
	private RawMaterialImportService rawimportservice;
	@Autowired
	private RawMaterialReleaseService rawreleaseservice;
	@Autowired
	private RawMaterialOrderService raworderservice;
	@Autowired
	private SemenService semenservice;
	@Autowired
	private SemenImportService semenimportservice;
	@Autowired
	private SemenReleaseService semenreleaseservice;
	@Autowired
	private SemenOrderService semenorderservice;
	@Autowired
	private BucketService bucketservice;
	@Autowired
	private ToolImportService toolimportservice;
	@Autowired
	private ToolOrderService toolorderservice;
	@Autowired
	private ToolBorrowService toolborrowservice;
	@Autowired
	private ToolReleaseService toolreleaseservice;
	@Autowired
	private ToolBrokenService toolbrokenservice;
	@Autowired
	private ToolService toolservice;
	@Autowired
	private MedicineImportService medicineimportservice;
	@Autowired
	private MedicineReleaseService medicinereleaseservice;
	@Autowired
	private MedicineOrderService medicineorderservice;
	@Autowired
	private MedicineService medicineservice;
	
	
	//-------------------------------------------Search member--------------------------------------
			@RequestMapping(value="search_member")
			public String search_member(@RequestParam("id") int id,@RequestParam("value") String value,
					@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
				Member mem = new Member();
				Privilege pri = new Privilege();
				
				if(id==1){mem.setFirst(value);}
				if(id==2){mem.setAddress(value);}
				if(id==3){
					pri.setValue(value);
					mem.setPrivilege(pri);
				}
				List memList = memberservice.getSearch(mem, page);
				int count = memberservice.CountAllMember(mem);
				
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
				map.put("memList", memList);
				map.put("count", countPage);
				map.put("page", page);
				
				return "Storehouse/page/setting/list_set_member";
			}
	//###################################################################################
	//
	//
	//											SEARCH TO PDF
	//
	//
	//###################################################################################
		@RequestMapping("search_Stock_pdf")
		public String search_Stock_pdf(@RequestParam("id") int id,Map<String, Object> map,@RequestParam(value="page",defaultValue="1") int page){
			Medicine med = new Medicine();
			Semen semen = new Semen();
			RawMaterial raw = new RawMaterial();
			Tool tool = new Tool();
			
			//System.out.println(id);
			if(id==1){ //Stock Medicine
				List<Medicine> List = medicineservice.getAllMedicineForNextpage(page);
				int count = medicineservice.getAllMedicine().size();
				
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("MedList", List);
					map.put("countPage", countPage);
					map.put("page", page);
					
					
					map.put("count", count);
				return "Storehouse/page/report/search/list_report_stock_medicine";
			}
			else if(id==2){ //Stock Semen 
				map.put("semenList", semenservice.getAllSemenForNextpage(page));
				int count = semenservice.getAllSemen().size(); 
				map.put("count", count);
				
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				return "Storehouse/page/report/search/list_report_stock_semen";
				
			}
			else if(id==3){ //Stock Raw
				map.put("rawList", rawmaterialservice.getAllRawMaterialForNextpage(page));
				int count = rawmaterialservice.getAllRawMaterial().size();
				map.put("count", count);
				
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
					
				return "Storehouse/page/report/search/list_report_stock_raw";
			}
			else if(id==4){ //Stock Tool
				map.put("toolList", toolservice.getAllToolForNextpage(page));
				int count = toolservice.getAllTool().size();
				map.put("count", count);
				
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				return "Storehouse/page/report/search/list_report_stock_tool";
			}
			return null;
		}
		
		
		@RequestMapping("search_import_pdf")
		public String search_import_pdf(@RequestParam("ididStock") int ididStock,
				@RequestParam("memberid") int memberid,
				@RequestParam("dateStart") String dateStart,
				@RequestParam("dateEnd") String dateEnd,
				@RequestParam(value="page",defaultValue="1") int page,
				
				Map<String, Object> map){
			if(ididStock==1){ //med
				map.put("MedList", medicineimportservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, page));
				int count = medicineimportservice.getSearchReport(dateStart, dateEnd, memberid).size();
				map.put("count", count);
				
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				
				return "Storehouse/page/report/search/search_import_Med";
			}else if(ididStock==2){ //semen
				map.put("SemenList", semenimportservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, page));
				int count = semenimportservice.getSearchReport(dateStart, dateEnd, memberid).size();
				map.put("count", count);
				
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				
				return "Storehouse/page/report/search/search_import_semen";
			}else if(ididStock==3){ //raw
				map.put("RawList", rawimportservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, page));
				int count = rawimportservice.getSearchReport(dateStart, dateEnd, memberid).size();
				map.put("count", count);
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				return "Storehouse/page/report/search/search_import_raw";
			}else if(ididStock==4){// tool
				map.put("ToolList", toolimportservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, page));
				int count = toolimportservice.getSearchReport(dateStart, dateEnd, memberid).size();
				map.put("count", count);
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				return "Storehouse/page/report/search/search_import_tool";
			}
			
			return null;
		}
		@RequestMapping("search_release_pdf")
		public String search_release_pdf(@RequestParam("ididStock") int ididStock,
				@RequestParam("memberid") int memberid,
				@RequestParam("dateStart") String dateStart,
				@RequestParam("dateEnd") String dateEnd,
				@RequestParam(value="page",defaultValue="1") int page,
				Map<String, Object> map){
			if(ididStock==1){ //med
				map.put("MedList", medicinereleaseservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, page));
				int count = medicinereleaseservice.getSearchReport(dateStart, dateEnd, memberid).size();
				map.put("count", count);
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				return "Storehouse/page/report/search/release_med";
			}else if(ididStock==2){ //semen
				map.put("SemenList", semenreleaseservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, page));
				int count = semenreleaseservice.getSearchReport(dateStart, dateEnd, memberid).size();
				map.put("count", count);
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				return "Storehouse/page/report/search/release_semen";
			}else if(ididStock==3){ //raw
				map.put("RawList", rawreleaseservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, page));
				int count = rawreleaseservice.getSearchReport(dateStart, dateEnd, memberid).size();
				map.put("count", count);
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				return "Storehouse/page/report/search/release_raw";
			}else if(ididStock==4){// tool
				map.put("ToolList", toolreleaseservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, page));
				int count = toolreleaseservice.getSearchReport(dateStart, dateEnd, memberid).size();
				map.put("count", count);
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				return "Storehouse/page/report/search/release_tool";
			}
			return null;
		}
		@RequestMapping("search_order_pdf")
		public String search_order_pdf(@RequestParam("ididStock") int ididStock,
				@RequestParam("memberid") int memberid,
				@RequestParam("dateStart") String dateStart,
				@RequestParam("dateEnd") String dateEnd,
				@RequestParam(value="page",defaultValue="1") int page,
				Map<String, Object> map){
			if(ididStock==1){ //med
				map.put("MedList", medicineorderservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, page));
				int count = medicineorderservice.getSearchReport(dateStart, dateEnd, memberid).size();
				map.put("count", count);
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				return "Storehouse/page/report/search/order_med";
			}else if(ididStock==2){ //semen
				map.put("SemenList", semenorderservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, page));
				int count = semenorderservice.getSearchReport(dateStart, dateEnd, memberid).size();
				map.put("count", count);
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				return "Storehouse/page/report/search/order_semen";
			}else if(ididStock==3){ //raw
				map.put("RawList", raworderservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, page));
				int count = raworderservice.getSearchReport(dateStart, dateEnd, memberid).size();
				map.put("count", count);
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				return "Storehouse/page/report/search/order_raw";
			}else if(ididStock==4){// tool
				map.put("ToolList", toolorderservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, page));
				int count = toolorderservice.getSearchReport(dateStart, dateEnd, memberid).size();
				map.put("count", count);
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}
					map.put("countPage", countPage);
					map.put("page", page);
				return "Storehouse/page/report/search/order_tool";
			}
			return null;
		}
		@RequestMapping("search_borrow_pdf")
		public String search_borrow_pdf(@RequestParam("idtype") int idtype,
				@RequestParam("memberid") int memberid,
				@RequestParam("dateStart") String dateStart,
				@RequestParam("dateEnd") String dateEnd,
				@RequestParam(value="page",defaultValue="1") int page,
				Map<String, Object> map){
			map.put("ToolList", toolborrowservice.getSearchReportForNextPage(dateStart, dateEnd, memberid, idtype, page));
			int count = toolborrowservice.getSearchReport(dateStart, dateEnd, memberid, idtype).size();
			map.put("count", count);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
				map.put("countPage", countPage);
				map.put("page", page);
			return "Storehouse/page/report/search/borrow_tool";
		}
		@RequestMapping("search_Broken_pdf")
		public String search_Broken_pdf(@RequestParam("dateStart") String dateStart,
				@RequestParam("dateEnd") String dateEnd,
				@RequestParam(value="page",defaultValue="1") int page,
				Map<String, Object> map){
			map.put("ToolList",toolbrokenservice.getSearchReportForNextPage(dateStart, dateEnd, page));
			int count = toolbrokenservice.getSearchReport(dateStart, dateEnd).size();
			map.put("count", count);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
				map.put("countPage", countPage);
				map.put("page", page);
			return "Storehouse/page/report/search/tool_broken";
		}
		//----------------------------------------- Search For Release and borrow ---------------------
		//release medicine
		@RequestMapping(value="search_release_med")
		public String search_release_med(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			Medicine med = new Medicine();
			GroupMedicine group = new GroupMedicine();
			if(id==1){
				med.setTradeName(value);
			}
			if(id==2){
				group.setValue(value);
				med.setGroupMedicine(group);
				
			}
			List<Medicine> MedList = medicineservice.getSearchForRelease(med, page);
			int count = medicineservice.CountReleaseMedicine(med);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("MedRelease", MedList);
			map.put("count1", countPage);
			map.put("page1", page);
			return "Storehouse/page/medicine/list_for_release";
		}
		
		
		//release semen
		@RequestMapping(value="search_release_se")
		public String search_release_se(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			Semen semen = new Semen();
			Breed breed = new Breed();
			
			if(id==1){semen.setNameCattle(value);}
			if(id==2){semen.setHNumber(value);}
			if(id==3){
				breed.setValue(value);
				semen.setBreed(breed);
			}
			List<Semen> semenList = semenservice.getSearchForRelease(semen, page);
			int count =	semenservice.CountReleaseSemen(semen);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("List", semenList);
			map.put("count1", countPage);
			map.put("page1", page);
			return "Storehouse/page/semen_bucket/list_for_release";
		}
		//release raw 
		@RequestMapping(value="search_release_r")
		public String search_release_r(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			RawMaterial raw = new RawMaterial();
			TypeMaterial typeraw = new TypeMaterial();
			if(id == 1){
				raw.setName(value);
			}else if(id == 2){
				typeraw.setValue(value);
				raw.setTypeMaterial(typeraw);
			}
			List<RawMaterial> rawlist = rawmaterialservice.getSearchForRelease(raw, page);
			int count = rawmaterialservice.CountReleaseRaw(raw);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			map.put("List", rawlist);
			map.put("count1", countPage);
			map.put("page1", page);
			return "Storehouse/page/raw_material/list_for_release";
		}
		//release tool
		@RequestMapping(value="search_release_t")
		public String search_release_t(@RequestParam("id") int id,@RequestParam("value") String value,
								@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			Tool tool = new Tool();
			TypeTool typetool = new TypeTool();
			if(id==1){
				tool.setName(value);
			}else if(id==2)
			{
				typetool.setValue(value);
				tool.setTypeTool(typetool);
			}
			List<Tool> toolList = toolservice.getSearchForRelease(tool, page);
			int count = toolservice.CountReleaseTool(tool);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("List", toolList);
			map.put("count1", countPage);
			map.put("page1", page);
			return "Storehouse/page/tool/list_for_release";
		}
		//borrow tool
			@RequestMapping(value="search_borrow_t")
			public String search_borrow_t(@RequestParam("id") int id,@RequestParam("value") String value,
									@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
				Tool tool = new Tool();
				TypeTool typetool = new TypeTool();
				if(id==1){
					tool.setName(value);
				}else if(id==2)
				{
					typetool.setValue(value);
					tool.setTypeTool(typetool);
				}
				List<Tool> toolList = toolservice.getSearchForBorrow(tool, page);
				int count = toolservice.CountBorrowTool(tool);
				
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}

				map.put("List", toolList);
				map.put("count1", countPage);
				map.put("page1", page);
				return "Storehouse/page/tool/list_for_borrow";
			}	
			// Tool Broken
			@RequestMapping(value="search_Tool_Broken")
			public String search_Tool_Broken(@RequestParam("id") int id,@RequestParam("value") String value,
									@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
				Tool tool = new Tool();
				TypeTool typetool = new TypeTool();
				if(id==1){
					tool.setName(value);
				}else if(id==2)
				{
					typetool.setValue(value);
					tool.setTypeTool(typetool);
				}
				List<Tool> toolList = toolservice.getSearchForBorrow(tool, page); //borrow=broken ��������͹�ѹ
				int count = toolservice.CountBorrowTool(tool);
				
				int countPage = 0;
				if((count%10)==0){
					countPage=count/10;
				}else{
					countPage=(count/10)+1;
				}

				map.put("List", toolList);
				map.put("count1", countPage);
				map.put("page1", page);
				return "Storehouse/page/tool/list_Tool_broken";
			}
		
		
		//-------------------------------------------Search Raw--------------------------------------
		@RequestMapping(value="search_raw")
		public String search_raw(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			RawMaterial raw = new RawMaterial();
			TypeMaterial typeraw = new TypeMaterial();
			if(id == 1){
				raw.setName(value);
			}else if(id == 2){
				typeraw.setValue(value);
				raw.setTypeMaterial(typeraw);
			}
			List<RawMaterial> rawlist = rawmaterialservice.getSearch(raw, page);
			int count = rawmaterialservice.CountAllRaw(raw);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			map.put("rawList", rawlist);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/raw_material/list_view_raw";
		}
		
		@RequestMapping(value="search_stock_raw")
		public String search_stock_raw(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			RawMaterial raw = new RawMaterial();
			TypeMaterial typeraw = new TypeMaterial();
			if(id == 1){
				raw.setName(value);
			}else if(id == 2){
				typeraw.setValue(value);
				raw.setTypeMaterial(typeraw);
			}
			List<RawMaterial> rawlist = rawmaterialservice.getSearch(raw, page);
			int count = rawmaterialservice.CountAllRaw(raw);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			map.put("rawList", rawlist);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/raw_material/list_stock_raw";
		}
		@RequestMapping(value="search_import_raw")
		public String search_import_raw(@RequestParam("id") int id,@RequestParam("value") String value,
								@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			RawMaterialImport RawImReOr = new RawMaterialImport();
			RawMaterial raw = new RawMaterial();
			Member member = new Member();
			
			if(id==1){
				raw.setName(value);
				RawImReOr.setRawMaterial(raw);
			}
			if(id==2){
				member.setFirst(value);
				RawImReOr.setMember(member);
				
			}
			if(id==3){
				RawImReOr.setDay(value);
			}
			List<RawMaterialImport> RawimList = rawimportservice.getSearch(RawImReOr, page);
			int count = rawimportservice.CountAllRawMaterialImport(RawImReOr);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			map.put("RawimList", RawimList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/raw_material/list_import_raw";
		}
		@RequestMapping(value="search_release_raw")
		public String search_release_raw(@RequestParam("id") int id,@RequestParam("value") String value,
								@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			RawMaterialRelease RawImReOr = new RawMaterialRelease();
			RawMaterial raw = new RawMaterial();
			Member member = new Member();
			
			if(id==1){
				raw.setName(value);
				RawImReOr.setRawMaterial(raw);
			}
			if(id==2){
				member.setFirst(value);
				RawImReOr.setMember(member);
				
			}
			if(id==3){
				RawImReOr.setDay(value);
			}
			List<RawMaterialRelease> RawRList =  rawreleaseservice.getSearch(RawImReOr, page);
			int count = rawreleaseservice.CountAllRawMaterialRelease(RawImReOr);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			map.put("RawRList", RawRList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/raw_material/list_release_raw";
		}
		@RequestMapping(value="search_order_raw")
		public String search_order_raw(@RequestParam("id") int id,@RequestParam("value") String value,
								@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			RawMaterialOrder RawImReOr = new RawMaterialOrder();
			RawMaterial raw = new RawMaterial();
			Member member = new Member();
			
			if(id==1){
				raw.setName(value);
				RawImReOr.setRawMaterial(raw);
			}
			if(id==2){
				member.setFirst(value);
				RawImReOr.setMember(member);
				
			}
			if(id==3){
				RawImReOr.setDay(value);
			}
			List<RawMaterialOrder> RawOList = raworderservice.getSearch(RawImReOr, page);
			int count = raworderservice.CountAllRawMaterialOrder(RawImReOr);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			map.put("RawOList", RawOList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/raw_material/list_order_raw";
		}
		
		//-------------------------------------------Search Semen AND BUCKET--------------------------------------
		@RequestMapping(value="search_bucketForADDNITROGEN") //For module AddNitrogen
		public String search_bucketForADDNITROGEN(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			Bucket bucket = new Bucket();
			if(id==1){bucket.setNumber(value);}
			if(id==2){bucket.setName(value);}
			List<Bucket> BuckList = bucketservice.getSearchForAddNitrogen(bucket,page);
			int count =	bucketservice.countAllBucket(bucket);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("count", countPage);
			map.put("page", page);
			map.put("BucList", BuckList);
			return "Storehouse/page/semen_bucket/list_addnitrogen_bucket";
			
		}
		
		@RequestMapping(value="search_bucket")
		public String search_bucket(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			Bucket bucket = new Bucket();
			if(id==1){bucket.setNumber(value);}
			if(id==2){bucket.setName(value);}
			List<Bucket> BuckList = bucketservice.getSearch(bucket);
			
			map.put("BucList", BuckList);
			return "Storehouse/page/semen_bucket/list_addnitrogen_bucket";
			
		}
		@RequestMapping(value="search_bucket1")
		public String search_bucket1(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			Bucket bucket = new Bucket();
			if(id==1){bucket.setNumber(value);}
			if(id==2){bucket.setName(value);}
			List<Bucket> BuckList = bucketservice.getSearchViewForNextPage(bucket, page);
			int count =	bucketservice.countAllBucket(bucket);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("count", countPage);
			map.put("page", page);
			map.put("BucList", BuckList);
			return "Storehouse/page/semen_bucket/list_view_bucket";
			
		}
		@RequestMapping(value="search_semen")
		public String search_semen(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			Semen semen = new Semen();
			Breed breed = new Breed();
			
			if(id==1){semen.setNameCattle(value);}
			if(id==2){semen.setHNumber(value);}
			if(id==3){
				breed.setValue(value);
				semen.setBreed(breed);
			}
			List<Semen> semenList = semenservice.getSearch(semen, page);
			int count =	semenservice.CountAllSemen(semen);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("semenList", semenList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/semen_bucket/list_view_semen";
		}
		@RequestMapping(value="search_stock_semen")
		public String search_stock_semen(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			Semen semen = new Semen();
			Breed breed = new Breed();
			
			if(id==1){semen.setNameCattle(value);}
			if(id==2){semen.setHNumber(value);}
			if(id==3){
				breed.setValue(value);
				semen.setBreed(breed);
			}
			List<Semen> semenList = semenservice.getSearch(semen, page);
			int count =	semenservice.CountAllSemen(semen);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("semenList", semenList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/semen_bucket/list_stock_semen";
		}
		@RequestMapping(value="search_import_semen")
		public String search_import_semen(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			SemenImport SemenImReOr = new SemenImport();
			Semen semen = new Semen();
			Member member = new Member();
			
			if(id==1){
				semen.setNameCattle(value);;
				SemenImReOr.setSemen(semen);
			}
			if(id==2){
				member.setFirst(value);
				SemenImReOr.setMember(member);
				
			}
			if(id==3){
				SemenImReOr.setDay(value);
			}
			List<SemenImport> SemenimList = semenimportservice.getSearch(SemenImReOr, page);
			int count = semenimportservice.CountAllSemenImport(SemenImReOr);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("SemenimList", SemenimList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/semen_bucket/list_import_semen";
		}
		@RequestMapping(value="search_release_semen")
		public String search_release_semen(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			SemenRelease SemenImReOr = new SemenRelease();
			Semen semen = new Semen();
			Member member = new Member();
			
			if(id==1){
				semen.setNameCattle(value);;
				SemenImReOr.setSemen(semen);
			}
			if(id==2){
				member.setFirst(value);
				SemenImReOr.setMember(member);
				
			}
			if(id==3){
				SemenImReOr.setDay(value);
			}
			List<SemenRelease> SemenRList = semenreleaseservice.getSearch(SemenImReOr, page);
			int count = semenreleaseservice.CountAllSemenRelease(SemenImReOr);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("SemenRList", SemenRList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/semen_bucket/list_release_semen";
		}
		@RequestMapping(value="search_order_semen")
		public String search_order_semen(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			SemenOrder SemenImReOr = new SemenOrder();
			Semen semen = new Semen();
			Member member = new Member();
			
			if(id==1){
				semen.setNameCattle(value);;
				SemenImReOr.setSemen(semen);
			}
			if(id==2){
				member.setFirst(value);
				SemenImReOr.setMember(member);
				
			}
			if(id==3){
				SemenImReOr.setDay(value);
			}
			List<SemenOrder> SemenOList = semenorderservice.getSearch(SemenImReOr, page);
			int count = semenorderservice.CountAllSemenOrder(SemenImReOr);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("SemenOList", SemenOList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/semen_bucket/list_order_semen";
		}
		//-------------------------------------------Search Tool--------------------------------------
		@RequestMapping(value="search_tool")
		public String search_tool(@RequestParam("id") int id,@RequestParam("value") String value,
								@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			Tool tool = new Tool();
			TypeTool typetool = new TypeTool();
			if(id==1){
				tool.setName(value);
			}else if(id==2)
			{
				typetool.setValue(value);
				tool.setTypeTool(typetool);
			}
			List<Tool> toolList = toolservice.getSearch(tool, page);
			int count = toolservice.CountAllTool(tool);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("toolList", toolList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/tool/list_view_tool";
		}	
		@RequestMapping(value="search_stock_tool")
		public String search_stock_tool(@RequestParam("id") int id,@RequestParam("value") String value,
								@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			Tool tool = new Tool();
			TypeTool typetool = new TypeTool();
			if(id==1){
				tool.setName(value);
			}else if(id==2)
			{
				typetool.setValue(value);
				tool.setTypeTool(typetool);
			}
			List<Tool> toolList = toolservice.getSearch(tool, page);
			int count = toolservice.CountAllTool(tool);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("toolStockList", toolList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/tool/list_stock_tool";
		}
		@RequestMapping(value="search_import_tool")
		public String search_import_tool(@RequestParam("id") int id,@RequestParam("value") String value,
								@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			ToolImport ToolImReOr = new ToolImport();
			Tool tool = new Tool();
			Member member = new Member();
			
			if(id==1){
				tool.setName(value);
				ToolImReOr.setTool(tool);
			}
			if(id==2){
				member.setFirst(value);
				ToolImReOr.setMember(member);
				
			}
			if(id==3){
				ToolImReOr.setDay(value);
			}
			List<ToolImport> ToolimList = toolimportservice.getSearch(ToolImReOr, page);
			int count = toolimportservice.CountAllToolImport(ToolImReOr);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			map.put("ToolimList", ToolimList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/tool/list_import_tool";
		}
		
		@RequestMapping(value="search_release_tool")
		public String search_release_tool(@RequestParam("id") int id,@RequestParam("value") String value,
								@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			ToolRelease ToolImReOr = new ToolRelease();
			Tool tool = new Tool();
			Member member = new Member();
			
			if(id==1){
				tool.setName(value);
				ToolImReOr.setTool(tool);
			}
			if(id==2){
				member.setFirst(value);
				ToolImReOr.setMember(member);
				
			}
			if(id==3){
				ToolImReOr.setDay(value);
			}
			List<ToolRelease> ToolRList = toolreleaseservice.getSearch(ToolImReOr, page);
			int count = toolreleaseservice.CountAllToolRelease(ToolImReOr);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			map.put("ToolRList", ToolRList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/tool/list_release_tool";
		}
		
		@RequestMapping(value="search_order_tool")
		public String search_order_tool(@RequestParam("id") int id,@RequestParam("value") String value,
								@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			ToolOrder ToolImReOr = new ToolOrder();
			Tool tool = new Tool();
			Member member = new Member();
			
			if(id==1){
				tool.setName(value);
				ToolImReOr.setTool(tool);
			}
			if(id==2){
				member.setFirst(value);
				ToolImReOr.setMember(member);
				
			}
			if(id==3){
				ToolImReOr.setDay(value);
			}
			List<ToolOrder> ToolOList = toolorderservice.getSearch(ToolImReOr, page);
			int count = toolorderservice.CountAllToolOrder(ToolImReOr);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			map.put("ToolOList", ToolOList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/tool/list_order_tool";
		}
		
		//-------------------------------------------Search MEDICINE--------------------------------------

		@RequestMapping(value="search_medicine")
		public String search_medicine(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			Medicine med = new Medicine();
			GroupMedicine group = new GroupMedicine();
			if(id==1){
				med.setTradeName(value);
			}
			if(id==2){
				group.setValue(value);
				med.setGroupMedicine(group);
				
			}
			List<Medicine> MedList = medicineservice.getSearch(med, page);
			int count = medicineservice.CountAllMedicine(med);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("MedList", MedList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/medicine/list_view_medicine";
		}
		
		@RequestMapping(value="search_stock_medicine")
		public String search_stock_medicine(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			Medicine med = new Medicine();
			GroupMedicine group = new GroupMedicine();
			if(id==1){
				med.setTradeName(value);
			}
			if(id==2){
				group.setValue(value);
				med.setGroupMedicine(group);
				
			}
			List<Medicine> MedList = medicineservice.getSearch(med, page);
			int count = medicineservice.CountAllMedicine(med);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("MedList", MedList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/medicine/list_stock_medicine";
		}
		
		//search import medicine
		@RequestMapping(value="search_import_medicine")
		public String search_import_medicine(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			MedicineImport medim = new MedicineImport();
			Medicine med = new Medicine();
			Member member = new Member();
			if(id==1){
				med.setTradeName(value);
				medim.setMedicine(med);
			}
			if(id==2){
				member.setFirst(value);
				medim.setMember(member);
				
			}
			if(id==3){
				medim.setDay(value);
			}
			List<MedicineImport> MedImList = medicineimportservice.getSearch(medim, page);
			int count = medicineimportservice.CountAllMedicineImport(medim);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			map.put("MedIMList", MedImList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/medicine/list_import_medicine";
		}
		//search release medicine
	
		@RequestMapping(value="search_release_medicine")
		public String search_release_medicine(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			MedicineRelease medR = new MedicineRelease();
			Medicine med = new Medicine();
			Member member = new Member();
			if(id==1){
				med.setTradeName(value);
				medR.setMedicine(med);
			}
			if(id==2){
				member.setFirst(value);
				medR.setMember(member);
				
			}
			if(id==3){
				medR.setDay(value);
			}
			List<MedicineRelease> MedRList = medicinereleaseservice.getSearch(medR, page);
			int count = medicinereleaseservice.CountAllMedicineRelease(medR);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			map.put("MedRList", MedRList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/medicine/list_release_medicine";
		}
		//search order medicine
		@RequestMapping(value="search_order_medicine")
		public String search_order_medicine(@RequestParam("id") int id,@RequestParam("value") String value,
				@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
			MedicineOrder medO = new MedicineOrder();
			Medicine med = new Medicine();
			Member member = new Member();
			if(id==1){
				med.setTradeName(value);
				medO.setMedicine(med);
			}
			if(id==2){
				member.setFirst(value);
				medO.setMember(member);
				
			}
			if(id==3){
				medO.setDay(value);
			}
			List<MedicineOrder> MedOList = medicineorderservice.getSearch(medO, page);
			int count = medicineorderservice.CountAllMedicineOrder(medO);
			
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			map.put("MedOList", MedOList);
			map.put("count", countPage);
			map.put("page", page);
			return "Storehouse/page/medicine/list_order_medicine";
		}
	
}
