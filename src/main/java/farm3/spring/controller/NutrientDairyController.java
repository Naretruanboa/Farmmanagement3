package farm3.spring.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.joptimizer.optimizers.LPOptimizationRequest;
import com.joptimizer.optimizers.LPPrimalDualMethod;

import farm3.spring.model.Cattle;
import farm3.spring.model.CattleDetail;
import farm3.spring.model.CattleNutrient;
import farm3.spring.model.FormulaRecord;
import farm3.spring.model.FormulaRecord2;
import farm3.spring.model.RawMaterial;
import farm3.spring.model.RawMaterialFormula;
import farm3.spring.model.RawMaterialNutrient;
import farm3.spring.model.RawMaterialPrice;
import farm3.spring.myapp.Response;
import farm3.string.Util;
import farm3.spring.service.CattleNutrientService;
import farm3.spring.service.CattleService;
import farm3.spring.service.FormulaRecord2Service;
import farm3.spring.service.FormulaRecordService;
import farm3.spring.service.MemberService;
import farm3.spring.service.RawMaterialFormulaService;
import farm3.spring.service.RawMaterialNutrientService;
import farm3.spring.service.RawMaterialPriceService;
import farm3.spring.service.RawMaterialService;
import farm3.spring.service.StatusCattleService;
import farm3.spring.service.TypeCattleService;
import farm3.spring.service.TypeFormulaService;
//import farm3.spring.service.NutrientRawService;

import farm3.spring.model.NutrientRaw;

@Controller
public class NutrientDairyController extends HttpServlet {


	@Autowired
	private MemberService memberService;
	
	//@Autowired
	//private NutrientRawService nutrientrawservice;
	
	@Autowired
	private TypeCattleService typecattleservice;
	
	@Autowired
	private StatusCattleService statuscattleservice;
	
	@Autowired
	private CattleService cattleservice;
	
	@Autowired
	private CattleNutrientService cattlenutrientservice;
	
	@Autowired
	private RawMaterialService rawmaterialservice;

	@Autowired
	private RawMaterialNutrientService rawmaterialnutrientservice;
	@Autowired
	private RawMaterialPriceService rawmaterialpriceservice;
	@Autowired
	private FormulaRecordService formularecordservice;
	@Autowired
	private FormulaRecord2Service formularecord2service;
	@Autowired
	private RawMaterialFormulaService rawmaterialformulaservice;
	@Autowired
	private TypeFormulaService typeformulaservice;
	
		
	@RequestMapping("/setnutrientdairy")
	public ModelAndView setnutrientdairy(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("/Nutrient/page/dairy/setnutrient");
		return model;
	}
	
	@RequestMapping(value="chooserawmaterialdairy",method=RequestMethod.GET)
	public String Medi(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		RawMaterialNutrient rawmaterialnutrient = new RawMaterialNutrient();
		map.put("rawlist", rawmaterialservice.getAllRawMaterial());
		return "Nutrient/page/dairy/chooserawmaterial";
	}
	
	@RequestMapping("/setrawmaterialdairy")
	public ModelAndView setrawmaterialdairy(
			HttpSession session,Map<String, Object> map,Model model,
			@ModelAttribute CattleNutrient cattlenutrient,@ModelAttribute CattleDetail cattledetail){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		 model.addAttribute("cattlenutrient", cattlenutrient);
		 model.addAttribute("cattledetail", cattledetail);
		 RawMaterialNutrient rawmaterialnutrient = new RawMaterialNutrient();
			map.put("rawlist", rawmaterialservice.getAllRawMaterial());
		ModelAndView model3 = new ModelAndView("/Nutrient/page/dairy/setrawmaterial");
		return model3;
	}
	
	@RequestMapping("/calculatelowcost")
	public ModelAndView calculatedairy(HttpSession session,Map<String, Object> map,Model model,
			@ModelAttribute RawMaterialPrice rawmaterialprice){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		/*double[][] G = new double[][] {{-0.90 ,-0.87,-0.89,-0.91,-0.89,-0.91}, {-0.12,-0.07,-0.42,-0.23,-0.42,-0.23},{-0.67,-0.72,-0.73,-0.64,-0.73,-0.64},{-0.08,-0.03,-0.08,-0.21,-0.08,-0.21},{0,0,0,0,0,0},{-0.02,0,-0.01,0,-0.01,0},{-0.39,-0.63,-0.27,-0.10,-0.27,-0.10},{-49.0,-43.0,-35.0,-66.0,-35.0,-66.0}};*/
		/*double[][] G = new double[8][];
		G[0] = new double[] {-0.90 ,-0.87,-0.89,-0.91,-0.89,-0.91};
		G[1] = new double[] {-0.12 ,-0.07,-0.42,-0.23,-0.42,-0.23};
		G[2] = new double[] {-0.67 ,-0.72,-0.73,-0.64,-0.73,-0.64};
		G[3] = new double[] {-0.08 ,-0.03,-0.08,-0.21,-0.08,-0.21};
		G[4] = new double[] {0     ,0    ,0    ,0    ,0    ,0};
		G[5] = new double[] {-0.02 ,0    ,-0.01,0    ,-0.01,0};
		G[6] = new double[] {-0.39 ,-0.63,-0.27,-0.10,-0.27,-0.10};
		G[7] = new double[] {-49.0 ,-43.0,-35.0,-66.0,-35.0,-66.0};*/
		model.addAttribute("rawmaterialprice", rawmaterialprice);
		map.put("rawlist", rawmaterialservice.getAllRawMaterial());
		ModelAndView model1 = new ModelAndView("/Nutrient/page/dairy/calculate");
		return model1;
	}

	@RequestMapping("/calculatedairywithParam")
	public @ResponseBody String /*ModelAndView*/ calculatedairywithParam(HttpSession session,Map<String, Object> map,Model model,
			@RequestParam(value="param")double[] param,
			@RequestParam(value="G")String _GString,
			@RequestParam(value="dim")int dim,
			@RequestParam(value="idR")int[] idR,
			@RequestParam(value="h")double[] h,
			@RequestParam(value="lb")double[] lb,
			@RequestParam(value="ub")double[] ub,
			@ModelAttribute RawMaterialPrice rawmaterialprice
			){
		
		
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		String[] _G = _GString.split(",");
		double[][] G = new double[_G.length/dim][dim];
		for (int i = 0; i < _G.length/dim; i++) {
			for (int j = 0; j < dim; j++) {
				G[i][j] = Double.parseDouble(_G[i*dim+j] );
			}
			
		}
		double[] c = cattlenutrientservice.getC(param);
		map.put("c", c );
		int[] IDR = cattlenutrientservice.getIdRaw(idR);
		map.put("IDR", IDR );
		double[] d = cattlenutrientservice.optimize(param,G,lb,ub,h);
		map.put("d", d );
		double[] hh = cattlenutrientservice.getH(h);
		double[] ll = cattlenutrientservice.getLB(lb);
		double[] uu = cattlenutrientservice.getUB(ub);
		String[] gg = cattlenutrientservice.getG(_G);
		
		map.put("hh", hh );
		map.put("ll", ll );
		map.put("uu", uu );
		map.put("gg", gg );
		model.addAttribute("rawmaterialprice", rawmaterialprice);
		map.put("rawlist", rawmaterialservice.getAllRawMaterial());
		ModelAndView model1 = new ModelAndView("/Nutrient/page/dairy/calculate");
		//return model1;
		return "hello";
	}

	
	// test optimize
	
	@RequestMapping(value = "/helloJson", method = RequestMethod.POST)
	public @ResponseBody Response helloJson(@RequestBody NutrientRaw data,Map<String, Object> map) {
		Response res = new Response("OK", data, data, null);
		NutrientRaw nut = res.getNutrientRaw();
		double[] c = nut.getParam();
		double[][] gg = nut.getGg();
		double[] height = nut.getHeight();
		double[] lb = nut.getLb();
		double[] ub = nut.getUb();
		
//		map.put("c", c);
//		map.put("gg", gg);
//		map.put("height", height);
//		map.put("lb", lb);
//		map.put("ub", ub);
		
		
		
		
		int[] idr = nut.getIdr();
		int dim = nut.getDim();
	
		double[] result = this.optimize(c, gg, lb, ub, height, dim);
		//double[] result = {555,777};
		res.setResult(result);
		//nutrientrawservice.optimize(c, gg, lb, ub, height);
		//map.put("d", d );
		//map.put("IDR", idr);
//		map.put("rawlist", rawmaterialservice.getAllRawMaterial());
		
		/*System.out.println("Param: " + java.util.Arrays.asList(c).toString());
		System.out.println("Gg: " + java.util.Arrays.asList(gg).toString());
		System.out.println("Height: " + java.util.Arrays.asList(height).toString());
		System.out.println("Lb: " + java.util.Arrays.asList(lb).toString());
		System.out.println("Ub: " + java.util.Arrays.asList(ub).toString());
		System.out.println("Idr: " + java.util.Arrays.asList(idr).toString());
		System.out.println("Dim: " + dim);*/
//		ModelAndView res = new ModelAndView("/Nutrient/page/dairy/calculate");
		return res;
		
//		return "/Nutrient/page/dairy/calculate";
		
	}
	
	@RequestMapping("/chooserawmaterialforcalculatedairy")
	public ModelAndView chooserawmaterialforcalculatedairy(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("/Nutrient/page/dairy/chooserawmaterialforcalculate");
		return model;
	}
	
	@RequestMapping("/setrawmateriallowcostdairy")
	public ModelAndView setrawmateriallowcost(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("/Nutrient/page/dairy/setrawmateriallowcost");
		return model;
	}
	
	@RequestMapping("/setlistdairy")
	public ModelAndView setlistdairy(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("/Nutrient/page/dairy/setlistdairy");
		return model;
	}
	
	@RequestMapping("/edit_cattlenu")
	public String edit_cattle(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Cattle cattle = cattleservice.getCattle(id);
		map.put("cattle", cattle);
		RawMaterial rawmaterial = rawmaterialservice.getRawMaterial(id);
		map.put("rawmaterial", rawmaterial);
		RawMaterialNutrient rawmaterialnutrient = rawmaterialnutrientservice.getRawMaterialNutrient(id);
		map.put("rawmaterialnutrient", rawmaterialnutrient);
		
		map.put("typecattle", typecattleservice.getAllTypeCattle());//�������͡�����  ��������ʴ������ػ�ó�
		map.put("statuscattle",statuscattleservice.getAllStatusCattle());//���˹��·����㹤�ѧ�͡�����
		map.put("cattletlist",cattlenutrientservice.getAllCattleNutrient());
		return "Nutrient/page/dairy/edit_cattle";
	}
	
	
	
	
	@RequestMapping("/edited_cattlenu")
	public String edited_cattle(HttpSession session,Map<String, Object> map,@ModelAttribute Cattle cattle) {
		
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		
		cattleservice.edit(cattle);
		
		return "redirect:setlist";
	}
	
	@RequestMapping("/setlist")
	public ModelAndView Setlist(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Cattle cattle = new Cattle();
		map.put("cattles", cattleservice.getAllCattle());
		ModelAndView model = new ModelAndView("/Nutrient/page/dairy/setlist");
		return model;
	}
	
	@RequestMapping("/listData") //listunit raw
	public @ResponseBody String listData(Model model,@RequestParam int id) {
		RawMaterialNutrient rawmaterialnutrient =  rawmaterialnutrientservice.getRawMaterialNutrient(id);
		//System.out.println(rawmaterialnutrient);
		//Medicine med = medicineservice.getMedicine(id);
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = Util.encodeUnicode(gson.toJson(rawmaterialnutrient));
	 return json;
	}
	
	@RequestMapping("/listData1") //listunit raw
	public @ResponseBody String listData1(Model model,@RequestParam int id) {	
		RawMaterialPrice rawmaterialprice =  rawmaterialpriceservice.getRawMaterialPrice(id);
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = Util.encodeUnicode(gson.toJson(rawmaterialprice));
	 return json;
	}
	
	@RequestMapping("/listData0") //listunit raw
	public @ResponseBody String listData0(Model model,@RequestParam int id) {
		RawMaterial rawmaterial = rawmaterialservice.getRawMaterial(id);
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = Util.encodeUnicode(gson.toJson(rawmaterial));
	 return json;
	}
	
	@RequestMapping("savecal")
	public String savecal(@RequestParam("price1") float price1,
			@RequestParam("total1") float total1,
			@RequestParam("price01") float price01,
			@RequestParam("price02") float price02,
			@RequestParam("price03") float price03,
			@RequestParam("price04") float price04,
			@RequestParam("price05") float price05,
			@RequestParam("price06") float price06,
			@RequestParam("solve1") float sol1,
			@RequestParam("solve2") float sol2,
			@RequestParam("solve3") float sol3,
			@RequestParam("solve4") float sol4,
			@RequestParam("solve5") float sol5,
			@RequestParam("solve6") float sol6,
			@RequestParam("ee1") float nu1,
			@RequestParam("ee2") float nu2,
			@RequestParam("ee3") float nu3,
			@RequestParam("ee4") float nu4,
			@RequestParam("ee5") float nu5,
			@RequestParam("ee6") float nu6,
			@RequestParam("hh1") float need1,
			@RequestParam("hh2") float need2,
			@RequestParam("hh3") float need3,
			@RequestParam("hh4") float need4,
			@RequestParam("hh5") float need5,
			@RequestParam("hh6") float need6,
			@RequestParam("IDR1") int raw1,
			@RequestParam("IDR2") int raw2,
			@RequestParam("IDR3") int raw3,
			@RequestParam("IDR4") int raw4,
			@RequestParam("IDR5") int raw5,
			@RequestParam("IDR6") int raw6){
			
		System.out.println(price1);
		System.out.println(total1);
		System.out.println(price01);
		System.out.println(price02);
		System.out.println(price03);
		System.out.println(price04);
		System.out.println(price05);
		System.out.println(price06);
		//FormulaRecord2 formularecord2 = formularecord2service.getFormulaRecord2(raw1);		
		FormulaRecord2 formularecord2 =new FormulaRecord2();
		/*rawmaterialformula.setFormulaRecord2(formularecord2service.);*/
		formularecord2.setCost(price1);
		formularecord2.setSumweight(total1);
		formularecord2.setDm1(need1);
		formularecord2.setDm2(nu1);
		formularecord2.setCp1(need2);
		formularecord2.setCp2(nu2);
		formularecord2.setTdn1(need3);
		formularecord2.setTdn2(nu3);
		formularecord2.setNdf1(need4);
		formularecord2.setNdf2(nu4);
		formularecord2.setVita1(need5);
		formularecord2.setVita2(nu5);
		formularecord2.setVite1(need6);
		formularecord2.setVite2(nu6);
		formularecord2.setTypeFormula(typeformulaservice.getTypeFormula(2));
		formularecord2service.add(formularecord2);		
		int s = formularecord2.getId();	
		
		if(raw1!=0){
			RawMaterial rawmaterial = rawmaterialservice.getRawMaterial(raw1);
			String rawmat1 = rawmaterial.getName();
			RawMaterialFormula rawmaterialformula1 = new RawMaterialFormula();
			rawmaterialformula1.setName(rawmat1);
			rawmaterialformula1.setPrice(price01);
			rawmaterialformula1.setValue(sol1);
			rawmaterialformula1.setFormulaRecord2(formularecord2service.getFormulaRecord2(s));
			rawmaterialformulaservice.add(rawmaterialformula1);
			}
		if(raw2!=0){
			RawMaterial rawmaterial1 = rawmaterialservice.getRawMaterial(raw2);
			String rawmat2 = rawmaterial1.getName();
			RawMaterialFormula rawmaterialformula2 = new RawMaterialFormula();
			rawmaterialformula2.setName(rawmat2);
			rawmaterialformula2.setPrice(price02);
			rawmaterialformula2.setValue(sol2);
			rawmaterialformula2.setFormulaRecord2(formularecord2service.getFormulaRecord2(s));
			rawmaterialformulaservice.add(rawmaterialformula2);
			
			}
		if(raw3!=0){
			RawMaterial rawmaterial2 = rawmaterialservice.getRawMaterial(raw3);
			String rawmat3 = rawmaterial2.getName();
			RawMaterialFormula rawmaterialformula3 = new RawMaterialFormula();
			rawmaterialformula3.setName(rawmat3);
			rawmaterialformula3.setPrice(price03);
			rawmaterialformula3.setValue(sol3);
			rawmaterialformula3.setFormulaRecord2(formularecord2service.getFormulaRecord2(s));
			rawmaterialformulaservice.add(rawmaterialformula3);
			}
		if(raw4!=0){
			RawMaterial rawmaterial3 = rawmaterialservice.getRawMaterial(raw4);
			String rawmat4 = rawmaterial3.getName();		
			RawMaterialFormula rawmaterialformula4 = new RawMaterialFormula();
			rawmaterialformula4.setName(rawmat4);
			rawmaterialformula4.setPrice(price04);
			rawmaterialformula4.setValue(sol4);
			rawmaterialformula4.setFormulaRecord2(formularecord2service.getFormulaRecord2(s));
			rawmaterialformulaservice.add(rawmaterialformula4);
			}
		if(raw5!=0){
			RawMaterial rawmaterial5 = rawmaterialservice.getRawMaterial(raw5);
			String rawmat5 = rawmaterial5.getName();
			RawMaterialFormula rawmaterialformula5 = new RawMaterialFormula();
			rawmaterialformula5.setName(rawmat5);
			rawmaterialformula5.setPrice(price05);
			rawmaterialformula5.setValue(sol5);
			rawmaterialformula5.setFormulaRecord2(formularecord2service.getFormulaRecord2(s));
			rawmaterialformulaservice.add(rawmaterialformula5);
			}
		if(raw6!=0){
			RawMaterial rawmaterial6 = rawmaterialservice.getRawMaterial(raw6);
			String rawmat6 = rawmaterial6.getName();
			RawMaterialFormula rawmaterialformula6 = new RawMaterialFormula();
			rawmaterialformula6.setName(rawmat6);
			rawmaterialformula6.setPrice(price06);
			rawmaterialformula6.setValue(sol6);
			rawmaterialformula6.setFormulaRecord2(formularecord2service.getFormulaRecord2(s));
			rawmaterialformulaservice.add(rawmaterialformula6);
			}
		return "redirict:calculatedairy";
	}
	
//	private double[] add(double[] d, double _d) {
//		double[] data = new double[d.length+1];
//		for (int i=0; i<data.length; i++) {
//			if (i == data.length-1)
//				data[i] = _d;
//			else
//				data[i] = d[i];
//		}
//		return data;
//	}
	
	public double[] optimize (double[] c,double[][] gg,double[] lb,double[] ub,double[] h, int dim) {
		//double[] c = new double[] { -1., -1. };

		//Inequalities constraints
		//double[][] G = new double[][] {{-0.90 ,-0.87,-0.89,-0.91}, {-0.12,-0.07,-0.42,-0.23},{-0.67,-0.72,-0.73,-0.64},{-0.08,-0.03,-0.08,-0.21},{0,0,0,0},{-0.02,0,-0.01,0},{-0.39,-0.63,-0.27,-0.10},{-49.0,-43.0,-35.0,-66.0},{0,0,-8.74,0},{-0.59,-0.22,0,0},{-1.0,-1.0,-1.0,-1.0}};
		//double[][] G = gg;
		/*double[] h = new double[] {-83,-10,-45,-18,-500,-20,-100};*/
		/*double[] h = new double[] {-89,-12,-77,-13,-500,-20,-100};*/
		
		//Bounds on variables
		/*	double[] lb = new double[] {0,0,0,0,0,0};
			double[] ub = new double[] {100.0,100.0,100.0,100.0,100.0,100.0};
			double[][] A = new double[][]{{1., 1., 1., 1., 1., 1., 1., 1., 1., 1. 			 }};	 
			*/
//////		
//		double[][] _gg = new double[gg.length+1][12];
//		for (int i=0; i<_gg.length; i++) {
//			if (i <_gg.length-1) 
//				_gg[i] = gg[i];
//			else						 // 1   2   3  4   5    6   7   8   9  10   11  12
//				_gg[i] = new double[] { 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0., 0. };
//			System.out.print("Data: " + i + " => ");
//			for (int j=0; j<12; j++) {
//				System.out.print( " // " + _gg[i][j]);
//			}
//			System.out.println();
//		}
//		c = add(c, 0.);
//		lb = add(lb, 0.);
//		ub = add(ub, 0.);
//		
		double[] b = new double[] {100.};
		//double[] cc = new double[] {0.};
		double[][] A = new double[1][dim+3];
		for (int i=1; i<= dim; i++){
			A[0][i-1]=1;
//			System.out.print(A);
		}
		
		//optimization problem
		LPOptimizationRequest or = new LPOptimizationRequest();
		or.setC(c);
		//or.setG(_gg);
		or.setG(gg);
		or.setH(h);
		or.setLb(lb);
		or.setUb(ub);
		or.setA(A);
		or.setB(b);
		//or.setC(cc);
		
		or.setDumpProblem(true); 
		
		//optimization
		LPPrimalDualMethod opt = new LPPrimalDualMethod();
		opt.setLPOptimizationRequest(or);
		try {
			int returnCode = opt.optimize();
		}
		catch(Exception e){
			System.out.print("Error");
		}
		double[] sol = opt.getOptimizationResponse().getSolution();
//		System.out.println("Length: " + sol.length);
		double aa = 0;
//		double [] sum = null;
		for (int i=0; i<sol.length;i++) 
			aa = aa + Math.round(sol[i]*100.)/100.;
			 System.out.println("Total weigth: " + aa);
			 for (int j=0; j<sol.length; j++){
				 System.out.println( "X" + (j+1) + ": " + Math.round(sol[j]*100.)/100.);
//				    sol[j] += (Math.round(sol[j]*100.)/100.);
			 }
		/*for (int i = 0; i <= dim; i++) {
			if(sol[i]<0.001){
				sol[i]=0;
			}
			sol[i] = Math.round(sol[i]*100)/100.00;
			System.out.println(sol[i]);	
		}*/
			 return sol;
				
		}
	
//	 System.out.println("Length: " + sol.length);
//     double aa = 0;
//     for (int i=0; i<sol.length; i++) aa = aa + Math.round(sol[i]*100.)/100.;
//     System.out.println("Total weigth: " + aa);
//     for (int i=0; i<sol.length; i++){
//         System.out.println( "X" + (i+1) + ": " + Math.round(sol[i]*100.)/100.);


}
