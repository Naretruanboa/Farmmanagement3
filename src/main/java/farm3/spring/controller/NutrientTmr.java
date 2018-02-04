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
public class NutrientTmr {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/Set_tmr")
	public ModelAndView setnutrientbeef(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");   //show name last header
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ModelAndView model = new ModelAndView("/Nutrient/page/tmr/dairyTMR");
		return model;
	}
	
}
