package farm3.spring.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import farm3.spring.service.FormulaRecord2Service;
import farm3.spring.service.FormulaRecordService;
import farm3.spring.service.MemberService;
import farm3.spring.service.RawMaterialNutrientService;
import farm3.spring.service.RawMaterialService;
import farm3.spring.model.FormulaRecord;
import farm3.spring.model.FormulaRecord2;
import farm3.spring.model.Member;
import farm3.spring.model.Privilege;
import farm3.spring.model.RawMaterial;
import farm3.spring.model.RawMaterialNutrient;
import farm3.spring.model.TypeMaterial;
import farm3.spring.myapp.PageCount;

@Controller
public class NutrientSearchController {
	
@Autowired
private RawMaterialService rawmaterialservice;

@Autowired
private MemberService memberservice;

@Autowired
private RawMaterialNutrientService RawMaterialNutrientService;

@Autowired
private FormulaRecordService formularecordservice;

@Autowired
private FormulaRecord2Service formularecord2service;

@RequestMapping(value="search_rawnu")
public String search_rawnu(@RequestParam("id") int id,@RequestParam("value") String value,
		@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
	
	RawMaterialNutrient rawnu = new RawMaterialNutrient();
	RawMaterial raw = new RawMaterial();
	
	if(id == 1){
		raw.setName(value);
		rawnu.setRawMaterial(raw);
	}
	
	List<RawMaterialNutrient> rawlist = RawMaterialNutrientService.getSearch(rawnu, page);
	int count = RawMaterialNutrientService.CountAllRaw(rawnu);
	int countPage = 0;
	if((count%10)==0){
		countPage=count/10;
	}else{
		countPage=(count/10)+1;
	}
	map.put("rawListtttt", rawlist);
	map.put("count", countPage);
	map.put("page", page);
	return "Nutrient/page/setting/list_rawnu";
	
}

@RequestMapping(value="search_formu")
public String search_formu(@RequestParam("id") int id,@RequestParam("value") Float value,
		@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
	
	FormulaRecord2 formulaRecord2 = new FormulaRecord2();
	
	if(id == 1){
		formulaRecord2.setSumweight(value);
	}
	
	List<FormulaRecord2> forl = formularecord2service.getSearch(formulaRecord2, page);
	int count = formularecord2service.countAllCattle(formulaRecord2);
	int countPage = 0;
	if((count%10)==0){
		countPage=count/10;
	}else{
		countPage=(count/10)+1;
	}
	map.put("x", forl);
	map.put("count", countPage);
	map.put("page", page);
	return "Nutrient/page/report/Search_ReportCalculate";
	
}

@RequestMapping(value="search_memberN")
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
	
	return "Nutrient/page/setting/list_set_member";
}
}