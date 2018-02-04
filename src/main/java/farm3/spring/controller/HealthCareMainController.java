package farm3.spring.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import farm3.spring.model.Cattle;
import farm3.spring.model.Member;
import farm3.spring.myapp.MD5;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;



@Controller
public class HealthCareMainController {
	@Autowired
	private MemberService memberService;/*
	
	@Autowired
	private PrivilegeService privilegeService;*/
	
	MD5 md5 = new MD5();
	//�ԧ��˹�� index
	@RequestMapping("/HealthCare")
		public String home(HttpSession session,Map<String, Object> map) {
			
			String sessionUsername = (String)session.getAttribute("username");
			map.put("ulist", memberService.getMemberByUsername(sessionUsername));

			return "HealthCare/index";
		}
	
	
}
