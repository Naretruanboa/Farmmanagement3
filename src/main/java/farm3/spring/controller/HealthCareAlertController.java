		package farm3.spring.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import farm3.spring.model.Alert;
import farm3.spring.model.Member;
import farm3.spring.service.AlertService;
import farm3.spring.service.CattleService;
import farm3.spring.service.MemberService;
import farm3.spring.service.StatusAlertService;


@Controller
public class HealthCareAlertController {
	
	@Autowired
	private MemberService memberservice;
	
	@Autowired
	private CattleService cattleservice;
	
	@Autowired
	private AlertService alertservice;
	
	@Autowired
	private StatusAlertService statusalertservice;
	
	@RequestMapping(value="/alert_list")
	public String alert_list(HttpSession session,Map<String, Object> map){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberservice.getMemberByUsername(sessionUsername));
		map.put("alert",alertservice.getAllalert());
		map.put("date1", alertservice.Date1());
		map.put("date2", alertservice.Date2());
		map.put("date3", alertservice.Date3());
		
/*		map.put("ulist",memberservice.getMemberByUsername(sessionUsername));
		int xxx = memberservice.getAllMember().size();
		map.put("aaa", xxx);
		
		int yyy = cattleservice.getAllCattle().size();
		map.put("bbb", yyy);*/
		return "HealthCare/alert/alert_list";
	}
	
	@RequestMapping(value="/closeAlert", method=RequestMethod.GET)
	public String closeAlert(HttpSession session,Map<String, Object> map,@RequestParam("id") int[] id,
			@RequestParam("num") int num,@RequestParam(value="check") int[] chk){
		String sessionUsername = (String)session.getAttribute("username");  
		map.put("ulist",memberservice.getMemberByUsername(sessionUsername));
		Member u = memberservice.getMemberByUser(sessionUsername);
		int UserId = u.getId();
		for(int i=0;i<num;i++){
			
			Alert alert = alertservice.getalert(id[i]);
			alert.setStatusAlert(statusalertservice.getStatusAlert(chk[i]));
			alert.setMember(memberservice.getMember(UserId));
			alertservice.edit(alert);
		}
		
		return "redirect:index";
	}
}
