package farm3.spring.controller;

import java.util.Map;
import javax.activation.*;

import java.io.*;
import java.net.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import farm3.spring.model.Member;
import farm3.spring.service.MemberService;

import farm3.spring.myapp.PageCount;

@Controller
public class MainController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping({"","/","/index"})
		public ModelAndView home(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		
			ModelAndView model = new ModelAndView("HealthCare/index");
			return model;
	}
	
	
	@RequestMapping(value="/view") 
	public String view(Map<String, Object>map,HttpSession session){
		/*String id =  (int) session.getAttribute("id")+"";*/
		try {
			String id =  (int) session.getAttribute("id")+"";
			return "redirect:/index";
		} catch (Exception e) {
		// TODO: handle exception
			Member member =new Member();
			map.put("member", member);
			return "HealthCare/index";
		}
		
	}

	@RequestMapping(value="/error")
	public String error(Map<String, Object>map,HttpSession session){
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		return "error";
	}
	@RequestMapping(value="/denied")
	public String denied(Map<String, Object>map,HttpSession session){
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		return "denied";
	}
	@RequestMapping(value="/contact")
	public String contact(Map<String, Object>map,HttpSession session){
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		return "contact";
	}
	@RequestMapping(value="/development")
	public String development(Map<String, Object>map,HttpSession session){
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		return "development";
	}
	
	//OTHER
	@RequestMapping(value="page") //�Ѻ�ӹǹ page
	public String page(Map<String, Object> map,@RequestParam("pagePresent") int pagePresent,
			@RequestParam("pageLast") int pageLast){
		PageCount pageCount = new PageCount();
		map.put("page",pageCount.getPage(pagePresent, pageLast));
		return "Storehouse/page/page";
	}
	@RequestMapping(value="page1") //�Ѻ�ӹǹ page����Ѻ�ԡ
	public String page1(Map<String, Object> map,@RequestParam("pagePresent1") int pagePresent,
			@RequestParam("pageLast1") int pageLast){
		PageCount pageCount = new PageCount();
		map.put("page1",pageCount.getPage(pagePresent, pageLast));
		return "Storehouse/page/page2";
	}
}
