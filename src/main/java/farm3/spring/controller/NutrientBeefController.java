package farm3.spring.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

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
public class NutrientBeefController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private RawMaterialService rawmaterialservice;
	
	@RequestMapping("/setnutrientbeef")
	public ModelAndView setnutrientbeef(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("/Nutrient/page/beef/setnutrient");
		return model;
	}
	

	
	@RequestMapping("/chooserawmaterialbeef")
	public ModelAndView chooserawmaterialbeef(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("/Nutrient/page/beef/chooserawmaterial");
		return model;
	}
	
	@RequestMapping("/setrawmaterialbeef")
	public ModelAndView setrawmaterialbeef(HttpSession session,Map<String, Object> map,Model model,
			@ModelAttribute CattleNutrient cattlenutrient,@ModelAttribute CattleDetail cattledetail){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		 model.addAttribute("cattlenutrient", cattlenutrient);
		 model.addAttribute("cattledetail", cattledetail);
		 RawMaterialNutrient rawmaterialnutrient = new RawMaterialNutrient();
			map.put("rawlist", rawmaterialservice.getAllRawMaterial());
		ModelAndView model2 = new ModelAndView("/Nutrient/page/beef/setrawmaterial");
		return model2;
	}
	
	@RequestMapping("/calculatebeef")
	public ModelAndView calculatebeef(HttpSession session,Map<String, Object> map,Model model,
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
		ModelAndView model1 = new ModelAndView("/Nutrient/page/beef/calculate");
		return model1;
	}
	
	@RequestMapping("/chooserawmaterialforcalculatebeef")
	public ModelAndView chooserawmaterialforcalculatebeef(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("/Nutrient/page/beef/chooserawmaterialforcalculate");
		return model;
	}
	
	//
	@RequestMapping("/setrawmateriallowcostbeef")
	public ModelAndView setrawmateriallowcostbeef(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("/Nutrient/page/beef/setrawmateriallowcost");
		return model;
	}
	
	@RequestMapping("/setlistbeef")
	public ModelAndView setlistbeef(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("/Nutrient/page/beef/setlistbeef");
		return model;
	}
	
}
