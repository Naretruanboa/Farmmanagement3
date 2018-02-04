package farm3.spring.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
import farm3.spring.service.UnitNutrientService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import farm3.spring.model.CattleDetail;
import farm3.spring.model.CattleNutrient;
import farm3.spring.model.RawMaterialNutrient;
import farm3.spring.model.RawMaterialPrice;
import farm3.spring.service.MemberService;
import farm3.spring.service.RawMaterialService;


@Controller
public class NutrientMaterialsController {
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
	@Autowired
	private RawMaterialService rawmaterialService;
	@Autowired
	private UnitNutrientService unitnnutrientservice;
	
	
	
	
	@RequestMapping("/materials")
	public ModelAndView Setaddrawnu(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		RawMaterialNutrient rawnu = new RawMaterialNutrient();
		map.put("rawmaterialnutrient",rawnu);
		map.put("raw", rawmaterialService.getAllRawMaterial());
		map.put("unitnu", unitnnutrientservice.getAllUnitNutrient());
		ModelAndView model = new ModelAndView("Nutrient/page/materials/select_materials");
		return model;
	}
		
	
	
//	 @RequestMapping(value = "/alertfood3", method = RequestMethod.GET)
//	    public String alertfood3(Map<String, Object> model) {
//	        return "Nutrient/page/alert/alert_stockRaw";
//	    }
//	
//	 @RequestMapping(value = "/alertfood6", method = RequestMethod.GET)
//	    public String alertfood6(Map<String, Object> model) {
//	        return "Nutrient/page/alert/alert_stockRawEXP";
//	    }
//	
	

	
	
	
}
