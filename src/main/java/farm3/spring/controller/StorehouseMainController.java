package farm3.spring.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import farm3.spring.model.AlertStorehouse;
import farm3.spring.service.AlertStorehouseService;
import farm3.spring.service.BucketService;
import farm3.spring.service.MemberService;
import farm3.spring.service.MedicineImportService;
import farm3.spring.service.MedicineService;
import farm3.spring.service.RawMaterialImportService;
import farm3.spring.service.RawMaterialService;
import farm3.spring.service.SemenService;
import farm3.spring.service.ToolBrokenService;
import farm3.spring.service.ToolService;

@Controller
public class StorehouseMainController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private AlertStorehouseService alertservice;
	@Autowired
	private MedicineImportService medicineimportservice;
	@Autowired
	private RawMaterialImportService rawmaterialimportservice;
	@Autowired
	private ToolService toolservice;
	@Autowired
	private MedicineService medicineservice;
	@Autowired
	private RawMaterialService rawmaterialservice;
	@Autowired
	private SemenService semenservice;
	@Autowired
	private ToolBrokenService toolbrokenservice;
	@Autowired
	private BucketService bucketservice;
	
	
	@RequestMapping("/Storehouse")
	public ModelAndView Storehouse(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		
		AlertStorehouse alert = alertservice.getAlertStorehouse(1);
		//medicine low stock
		int stockM = alert.getStockMedicine();
		int M = medicineservice.CheckAlertStock(stockM).size();  //ત�¡�ùѺ count 㹴ҵ����
		
		//semen stock
		int stockSemen = alert.getStockSemen();
		int S = semenservice.CheckAlertStock(stockSemen).size();
		
		//raw stock
		int stockRaw = alert.getStockRaw();
		int R = rawmaterialservice.CheckAlertStock(stockRaw).size();
		
		//tool stock
		int stockTool = alert.getStockTool();
		int T = toolservice.CheckAlertStock(stockTool).size();
		
		//exp medicine and Rawmaterial		
		int dayexpMed = alert.getExpMedicine();
		int MedExp = medicineimportservice.CheckAlertExp(dayexpMed).size();//�ӹǹ
		
		int dayExpRaw = alert.getExpRaw();
		int RawExp = rawmaterialimportservice.CheckAlertExpRaw(dayExpRaw).size();
		
		//exp Nitrogen
		int dayexpBuc = alert.getExpBucket();
		int BucketNitro = bucketservice.CheckAlertExpNitrogen(dayexpBuc).size();
		
		int toolbroken = toolbrokenservice.getSendToolBroken().size();
		map.put("Toolbroken", toolbroken);
		
		map.put("MedicineStock", M);
		map.put("MedicineExp", MedExp);
		map.put("RawStock", R);
		map.put("RawExp", RawExp);
		map.put("SemenStock", S);
		map.put("ToolStock", T);
		map.put("BucketExp", BucketNitro);
		int totalalertMedicine = M+MedExp;
		int totalalertRaw = R+RawExp;
		int totalalertSemen = S;
		int totalalertTool = T;
		int totalalertBucket = BucketNitro;
		
		map.put("Medi", totalalertMedicine);
		map.put("Raw", totalalertRaw);
		map.put("Semen", totalalertSemen);
		map.put("Tool", totalalertTool);
		map.put("Bucket", totalalertBucket);
		map.put("Total", (totalalertMedicine+totalalertRaw+totalalertSemen+totalalertTool+totalalertBucket+toolbroken));
		ModelAndView model = new ModelAndView("Storehouse/Storehouseindex");
		return model;
	}
	
}
