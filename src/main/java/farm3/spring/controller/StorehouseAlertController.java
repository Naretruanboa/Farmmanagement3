package farm3.spring.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import farm3.spring.model.AlertStorehouse;
import farm3.spring.model.Bucket;
import farm3.spring.model.Medicine;
import farm3.spring.model.MedicineImport;
import farm3.spring.model.RawMaterial;
import farm3.spring.model.RawMaterialImport;
import farm3.spring.model.Semen;
import farm3.spring.model.Tool;
import farm3.spring.service.AlertStorehouseService;
import farm3.spring.service.BucketService;
import farm3.spring.service.MedicineImportService;
import farm3.spring.service.MedicineService;
import farm3.spring.service.MemberService;
import farm3.spring.service.RawMaterialImportService;
import farm3.spring.service.RawMaterialService;
import farm3.spring.service.SemenService;
import farm3.spring.service.ToolService;

@Controller
public class StorehouseAlertController {
	@Autowired
	private BucketService bucketservice;
	@Autowired
	private MedicineImportService medicineimportservice;
	@Autowired
	private RawMaterialImportService rawmaterialimportservice;
	@Autowired
	private AlertStorehouseService alertservice;
	@Autowired
	private MemberService memberService;
	@Autowired
	private ToolService toolservice;
	@Autowired
	private MedicineService medicineservice;
	@Autowired
	private RawMaterialService rawmaterialservice;
	@Autowired
	private SemenService semenservice;
	
	@RequestMapping("/alert") 
	public String alert(HttpSession session,Map<String, Object> map,
			@RequestParam(value="id",defaultValue="1") int id) {
		String model="";
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			return "no_login";
		}  
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		
		AlertStorehouse alert = alertservice.getAlertStorehouse(1);
		//medicine low stock
		int stockM = alert.getStockMedicine();
		int M = medicineservice.CheckAlertStock(stockM).size();  //ત�¡�ùѺ count 㹴ҵ����
		//System.out.println(M);
		if(M>0){
			map.put("Medecine", medicineservice.CheckAlertStock(stockM));
			//map.put("count1", M);
		}
		//semen stock
		int stockSemen = alert.getStockSemen();
		int S = semenservice.CheckAlertStock(stockSemen).size();
		//System.out.println(S);
		if(S>0){
			map.put("Semen", semenservice.CheckAlertStock(stockSemen));
		}
		//raw stock
		int stockRaw = alert.getStockRaw();
		int R = rawmaterialservice.CheckAlertStock(stockRaw).size();
		if(R>0){
			map.put("Raw", rawmaterialservice.CheckAlertStock(stockRaw));
		}
		//tool stock
		int stockTool = alert.getStockTool();
		int T = toolservice.CheckAlertStock(stockTool).size();
		if(T>0){
			map.put("Tool", toolservice.CheckAlertStock(stockTool));
		}
		
		//exp medicine and Rawmaterial
		int dayexpMed = alert.getExpMedicine();
		int MedExp = medicineimportservice.CheckAlertExp(dayexpMed).size(); 
		if(MedExp>0){
			map.put("mediExp", medicineimportservice.CheckAlertExp(dayexpMed)); 
		}
		int dayExpRaw = alert.getExpRaw();
		int RawExp = rawmaterialimportservice.CheckAlertExpRaw(dayExpRaw).size();
		if(RawExp>0){
		map.put("rawExp", rawmaterialimportservice.CheckAlertExpRaw(dayExpRaw));
		}
		//exp Nitrogen
		
		int dayexpBuc = alert.getExpBucket();
		int BucketNitro = bucketservice.CheckAlertExpNitrogen(dayexpBuc).size();
		if(BucketNitro>0){
		map.put("bucExp", bucketservice.CheckAlertExpNitrogen(dayexpBuc));
		}
		
		int totalalertMedicine = M+MedExp;
		int totalalertRaw = R+RawExp;
		int totalalertSemen = S;
		int totalalertTool = T;
		int totalalertBucket = BucketNitro;
		
		map.put("AlertM", totalalertMedicine);
		map.put("AlertRaw", totalalertRaw);
		map.put("AlertSemen", totalalertSemen);
		map.put("AlertTool", totalalertTool);
		map.put("AlertBucket", totalalertBucket);
		
		if(id==1){
			model = "Storehouse/page/alert/alert_stockMed";
		}
		else if(id==2){
			model = "Storehouse/page/alert/alert_stockSemen";
		}
		else if(id==3){
			model = "Storehouse/page/alert/alert_stockRaw";
		}
		else if(id==4){
			model = "Storehouse/page/alert/alert_stockTool";
		}
		else if(id==5){
			model = "Storehouse/page/alert/alert_stockMedEXP";
		}
		else if(id==6){
			model = "Storehouse/page/alert/alert_stockRawEXP";
		}
		else if(id==7){
			model = "Storehouse/page/alert/alert_stockBucketEXP";
		}
		return model;
	}
	
	
	@RequestMapping("alert_stockBucketEXP")
	public String alert_stockBucketEXP(@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
		
		AlertStorehouse alert = alertservice.getAlertStorehouse(1);
		int day = alert.getExpBucket();
		List<Bucket> List = bucketservice.CheckAlertExpNitrogenForNextpage(day, page); 
		int count = bucketservice.CheckAlertExpNitrogen(day).size();
		//System.out.println(count);
		int countPage = 0;
		if((count%10)==0){
			countPage=count/10;
		}else{
			countPage=(count/10)+1;
		}
			map.put("BucketList", List);
			map.put("count", countPage);
			map.put("page", page);
			map.put("num",  bucketservice.CheckAlertExpNitrogenForNextpage(day, page).size());
		
		return "Storehouse/page/alert/list_alert_stockBucketEXP";
	}
	
	@RequestMapping("alert_stockRawEXP")
	public String alert_stockRawEXP(@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
		
		AlertStorehouse alert = alertservice.getAlertStorehouse(1);
		int day = alert.getExpRaw();
		List<RawMaterialImport> List = rawmaterialimportservice.CheckAlertExpRawForNextpage(day, page); 
		int count = rawmaterialimportservice.CheckAlertExpRaw(day).size();
		int countPage = 0;
		if((count%10)==0){
			countPage=count/10;
		}else{
			countPage=(count/10)+1;
		}
			map.put("RawList", List);
			map.put("count", countPage);
			map.put("page", page);
			map.put("num",  rawmaterialimportservice.CheckAlertExpRawForNextpage(day, page).size());
			return "Storehouse/page/alert/list_alert_stockRawEXP";
	}
	
	@RequestMapping("alert_stockMedEXP")
	public String alert_stockMedEXP(@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
		
		AlertStorehouse alert = alertservice.getAlertStorehouse(1);
		int day = alert.getExpMedicine();
		List<MedicineImport> List = medicineimportservice.CheckAlertExpForNextpage(day, page);  //ત�¡�ùѺ count 㹴ҵ����
		int count = medicineimportservice.CheckAlertExp(day).size();
		//System.out.println(count);
		int countPage = 0;
		if((count%10)==0){
			countPage=count/10;
		}else{
			countPage=(count/10)+1;
		}
			map.put("MEDICI", List);
			map.put("count", countPage);
			map.put("page", page);
			map.put("num",  medicineimportservice.CheckAlertExpForNextpage(day, page).size());
		
		return "Storehouse/page/alert/list_alert_stockMedEXP";
	}
	
	@RequestMapping("alert_stockTool")
	public String alert_stockTool(@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
		
		AlertStorehouse alert = alertservice.getAlertStorehouse(1);
		int stock = alert.getStockTool();
		List<Tool> List = toolservice.CheckAlertStockForNextpage(stock, page); 
		int count = toolservice.CheckAlertStock(stock).size();
		//System.out.println(count);
		int countPage = 0;
		if((count%10)==0){
			countPage=count/10;
		}else{
			countPage=(count/10)+1;
		}
			map.put("ToolList", List);
			map.put("count", countPage);
			map.put("page", page);
			map.put("num",  toolservice.CheckAlertStockForNextpage(stock, page).size());
		
		return "Storehouse/page/alert/list_alert_stockTool";
	}
	@RequestMapping("alert_stockRaw")
	public String alert_stockRaw(@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
		
		AlertStorehouse alert = alertservice.getAlertStorehouse(1);
		int stock = alert.getStockRaw();
		List<RawMaterial> List = rawmaterialservice.CheckAlertStockForNextpage(stock, page); 
		int count = rawmaterialservice.CheckAlertStock(stock).size();
		//System.out.println(count);
		int countPage = 0;
		if((count%10)==0){
			countPage=count/10;
		}else{
			countPage=(count/10)+1;
		}
			map.put("RawList", List);
			map.put("count", countPage);
			map.put("page", page);
			map.put("num",  rawmaterialservice.CheckAlertStockForNextpage(stock, page).size());
		
		return "Storehouse/page/alert/list_alert_stockRaw";
	}
	
	@RequestMapping("alert_stockSemen")
	public String alert_stockSemen(@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
		
		AlertStorehouse alert = alertservice.getAlertStorehouse(1);
		int stock = alert.getStockSemen();
		List<Semen> alertStockSemen = semenservice.CheckAlertStockForNextpage(stock, page); 
		int count = semenservice.CheckAlertStock(stock).size();
		//System.out.println(count);
		int countPage = 0;
		if((count%10)==0){
			countPage=count/10;
		}else{
			countPage=(count/10)+1;
		}
			map.put("SEMENLIST", alertStockSemen);
			map.put("count", countPage);
			map.put("page", page);
			map.put("num",  semenservice.CheckAlertStockForNextpage(stock, page).size());
		
		return "Storehouse/page/alert/list_alert_stockSemen";
	}
	
	@RequestMapping("alert_stockMed")
	public String alert_stockMed(@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
		
		AlertStorehouse alert = alertservice.getAlertStorehouse(1);
		int stockM = alert.getStockMedicine();
		List<Medicine> alertStockMed = medicineservice.CheckAlertStockForNextpage(stockM, page);  //ત�¡�ùѺ count 㹴ҵ����
		int count = medicineservice.CheckAlertStock(stockM).size();
		//System.out.println(count);
		int countPage = 0;
		if((count%10)==0){
			countPage=count/10;
		}else{
			countPage=(count/10)+1;
		}
			map.put("MEDICI", alertStockMed);
			map.put("count", countPage);
			map.put("page", page);
			map.put("num",  medicineservice.CheckAlertStockForNextpage(stockM, page).size());
		
		return "Storehouse/page/alert/list_alert_stockMed";
	}
	
	//close Stock Medicine
	@RequestMapping(value="closeAlertMedicine")
	public String closeAlertMedicine(Map<String, Object> map,@RequestParam("id") int[] id,
			@RequestParam("check") int[] chk,@RequestParam("num") int num){
		
		AlertStorehouse alert = alertservice.getAlertStorehouse(1);
		//medicine low stock
		int stockM = alert.getStockMedicine();
		//int num = medicineservice.CheckAlertStock(stockM).size();
		//System.out.println(num);
		for(int i=0;i<num;i++){
			Medicine med = medicineservice.getMedicine(id[i]);
			med.setStatusalert(chk[i]);
			medicineservice.edit(med);
		}
		return "redirect:alert";
	}
	//close Stock Semen
		@RequestMapping(value="closeAlertSemen")
		public String closeAlertSemen(Map<String, Object> map,@RequestParam("id") int[] id,
				@RequestParam("check") int[] chk,@RequestParam("num") int num){
			
			for(int i=0;i<num;i++){
				Semen semen = semenservice.getSemen(id[i]);
				semen.setStatusalert(chk[i]);
				semenservice.edit(semen);
			}
			return "redirect:alert";
		}
		//close Stock TOOL
		@RequestMapping(value="closeAlertTool")
			public String closeAlertTool(Map<String, Object> map,@RequestParam("id") int[] id,
				@RequestParam("check") int[] chk,@RequestParam("num") int num){
				for(int i=0;i<num;i++){
					Tool T = toolservice.getTool(id[i]);
					T.setStatusalert(chk[i]);
					toolservice.edit(T);
				}
				return "redirect:alert";
		}
		//close Stock RAW
		@RequestMapping(value="closeAlertRaw")
				public String closeAlertRaw(Map<String, Object> map,@RequestParam("id") int[] id,
						@RequestParam("check") int[] chk,@RequestParam("num") int num){
					
					for(int i=0;i<num;i++){
						RawMaterial Raw = rawmaterialservice.getRawMaterial(id[i]);
						Raw.setStatusalert(chk[i]);
						rawmaterialservice.edit(Raw);
					}
					return "redirect:alert";
		}
		//close Stock MEDICINE EXP
				@RequestMapping(value="closeAlertMedicineEXP")
						public String closeAlertMedicineEXP(Map<String, Object> map,@RequestParam("id") int[] id,
								@RequestParam("check") int[] chk,@RequestParam("num") int num){
							
							for(int i=0;i<num;i++){
								MedicineImport med = medicineimportservice.getMedicineImport(id[i]);
								med.setStatus(chk[i]);
								medicineimportservice.edit(med);
							}
							return "redirect:alert";
				}		
				//close Stock RAW EXP
				@RequestMapping(value="closeAlertRawEXP")
						public String closeAlertRawEXP(Map<String, Object> map,@RequestParam("id") int[] id,
								@RequestParam("check") int[] chk,@RequestParam("num") int num){
							
							for(int i=0;i<num;i++){
								RawMaterialImport Raw = rawmaterialimportservice.getRawMaterialImport(id[i]);
								Raw.setStatus(chk[i]);
								rawmaterialimportservice.edit(Raw);
							}
							return "redirect:alert";
				}
				//close Stock BUCKET EXP
				@RequestMapping(value="closeAlertBucketEXP")
						public String closeAlertBucketEXP(Map<String, Object> map,@RequestParam("id") int[] id,
								@RequestParam("check") int[] chk,@RequestParam("num") int num){
							
							for(int i=0;i<num;i++){
								Bucket Bucket = bucketservice.getBucket(id[i]);
								Bucket.setStatusalert(chk[i]);
								bucketservice.edit(Bucket);
							}
							return "redirect:alert";
				}
}
