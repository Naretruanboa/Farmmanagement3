package farm3.spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import farm3.spring.model.Cattle;
import farm3.spring.model.Farm;
import farm3.spring.model.Member;
import farm3.spring.myapp.MD5;
import farm3.spring.service.FarmService;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;


@Controller
public class NutrientMainController {
	
	@Autowired
	ServletContext context;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private FarmService farmService;

	@RequestMapping("/Nutrient")
	public String index(HttpSession session,Map<String, Object> map) {	
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));  //show name last header
		return "Nutrient/index";		
	}
	
	
	
	 
	
	/*@RequestMapping("/optimize")
	public String optimize(HttpSession session,Map<String, Object> map,
			@RequestParam(value="param")double[] param) {	
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		double[] d = chargeService.optimize(param);
		map.put("d", d );
	
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));  //show name last header
		return "i";		
	
	
	alertfood?id=6
	
	}*/
	
	
		
	}