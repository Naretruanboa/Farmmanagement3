package farm3.spring.controller;

import java.util.List;
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

import farm3.spring.model.Member;
import farm3.spring.myapp.MD5;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private PrivilegeService privilegeService;
	MD5 md5 = new MD5();
	
	//register
		@RequestMapping("/register") //�����ԧ��
		public String register(HttpSession session,Map<String, Object> map) {
			String sessionUsername = (String)session.getAttribute("username");
			map.put("ulist", memberService.getMemberByUsername(sessionUsername));
			Member member = new Member();
			map.put("member", member); //map�ҵ���� ����觤���
			return "Nutrient/register"; 
		}
		//login
		@RequestMapping(value = "login",method = RequestMethod.POST)
			public String login(Map<String, Object> map,HttpSession session,@RequestParam("username") 
				String username, @RequestParam("password") String password){ //���¡�� session�ҵ�Ǩ�ͺ
				String link;
				String newpassword = md5.getMD5(password); //����¹pass�� MD5
				Member member = memberService.getLogin(username, newpassword);
				if(member != null){
					session.setAttribute("username", member.getUsername()); //���� session �����Ҩ��� ����� user ����������
					session.setAttribute("privilege", member.getPrivilege().getId()); //�� session ������ privilege ���Ţ������
					link = "index"; //���login finish go to member page
					
				}else{
					link = "index"; //if no login finish goto index page
				}
			return "redirect:"+link;		
		} 
		@RequestMapping(value="/logout") //logout
		public String logout(HttpSession session){
			session.invalidate();
			return "redirect:index";
		}
		
		@ResponseBody  //ત username���
		@RequestMapping(value="checkUser")
		public String check(@RequestParam("username") String username){
			int chk = memberService.getMemberByUsername(username).size();
			String msg="yes";
			if(chk>0){
				msg = "no";
			}
		
			return msg;
		}
		
		@ResponseBody //ત���ʺѵû�ЪҪ�
		@RequestMapping(value="/checkIdCardNo")
		public String checkIdCardNo(Map<String, Object>map, @RequestParam("idCardNo") String idCardNo){
			String result = "false",check="true";
			int size = idCardNo.length();
			int chk = memberService.checkIdCard(idCardNo).size();
			try { 
				Double.parseDouble(idCardNo);
				
			} catch (Exception e) {
				// TODO: handle exception
				check="false";
			}
			if(size==13 && check.equals("true")){
				int sum=0;
				int num = 0;
				for(int i=13;i>=2;i--){
					sum += (Integer.parseInt(idCardNo.substring(num,num+1))*i);
					num++;
				}
				if(((11-(sum%11))%10)==Integer.parseInt(idCardNo.substring(num,num+1))){
					result="true";
				}
				if(chk>0){
					result="duplicate";
				}
			}else{
				result="false";
			}
			return result;
		}
		//save and add data Member
		@RequestMapping(value="saveRegister",method = RequestMethod.POST)
		public String saveRegister(@ModelAttribute Member member, Map<String, Object> map){
			String newpass = md5.getMD5(member.getPassword()); //�������� md5
			member.setPassword(newpass);// set password �� MD5
			member.setPrivilege(privilegeService.getPrivilege(7)); //��駤���Է��� ��˹��ء����������դ��������Ѥ�������Ҥ��¡�˹��Է�����蹷���ѧ
			memberService.add(member); //add ����������
			return "redirect:index";
		}
		
		@RequestMapping(value="/member")
		public ModelAndView Member(HttpSession session,Map<String, Object> map){
			String sessionUsername = (String)session.getAttribute("username");
			map.put("ulist", memberService.getMemberByUsername(sessionUsername));
			if(sessionUsername==null){
				ModelAndView model = new ModelAndView("no_login");
				return model;
			}
			ModelAndView model = new ModelAndView("Nutrient/Member");
			return model;
		}
		
		@RequestMapping("/edit_memberBylogin")
		public ModelAndView edit_memberBylogin(HttpSession session,Map<String, Object> map,@RequestParam int id){
			String sessionUsername = (String)session.getAttribute("username");
			if(sessionUsername==null){
				ModelAndView model = new ModelAndView("no_login");
				return model;
			}
			map.put("ulist", memberService.getMemberByUsername(sessionUsername)); 
			
			map.put("member", memberService.getMember(id));
			map.put("pri", privilegeService.getAllPrivilege());
			ModelAndView model = new ModelAndView("Nutrient/edit_memberBylogin");
			return model;
		
		}
		@RequestMapping("/edited_member")
		public String edited_member(@ModelAttribute Member member, Map<String, Object> map){
			memberService.edit(member);
			return "redirect:index";
		}
		
		@ResponseBody
		@RequestMapping(value="checkLogin")
		public String checkLogin(@RequestParam("username") String username,@RequestParam("password") String pass){
			//System.out.println(username+" AND "+pass);
			String newpass=md5.getMD5(pass);
			Member checkUsepass = memberService.getLogin(username, newpass);
			String msg="no";
			if(checkUsepass!=null){
				msg = "yes";
			}
			return msg;
		}
		@RequestMapping(value="changePASSWORD",method=RequestMethod.POST)
		public String changePASSWORD(@RequestParam("old_pass") String old_pass,
				@RequestParam("new_pass") String new_pass,HttpSession session){
			String sessionUsername = (String)session.getAttribute("username");
			String MD5pass = md5.getMD5(old_pass);
			Member mem = memberService.getLogin(sessionUsername, MD5pass);
			if(mem!=null){
				String newMD5Pass = md5.getMD5(new_pass);
				mem.setPassword(newMD5Pass);
				memberService.edit(mem);
				return "redirect:index";
			}else{
				return "page/error";
			}
		}
		
		@RequestMapping(value="/saveResetPass",method=RequestMethod.POST)
		public String saveResetPass(Map<String, Object>map, @RequestParam("user_id") int id,@RequestParam("pass1") String pass,
				@RequestParam("pass2") String pass2,HttpSession session){
			String newpass = md5.getMD5(pass);
			Member member = memberService.getMember(id);
			member.setPassword(newpass);
			memberService.edit(member);
			return "redirect:index";
			
		}
		
		@RequestMapping("/UnknowPass")
		public ModelAndView UnknowPass(HttpSession session,Map<String, Object> map,@RequestParam(value="key",required=false) String key){
			if(key!=null){
				map.put("key", key);
				}
				ModelAndView model = new ModelAndView("unknow_pass");
				return model;
		}
		
		@RequestMapping(value="getQuestion",method=RequestMethod.GET)
		public String getQuestion(Map<String, Object>map, 
				@RequestParam("username") String username,
				HttpSession session,
				@RequestParam(value="key",required=false) String key){
			int i = memberService.getMemberByUsername(username).size();
			System.out.println(i);
			if(i==1){
			 	map.put("key", key);
				map.put("userlist", memberService.getMemberByUsername(username));
				return "unknow_pass2";
			 	}
			 	else
			 	{
			 	map.put("key","���ͼ����ҹ���١��ͧ!");
			 	return "redirect:UnknowPass";
			 	}
		}
		@RequestMapping(value="getAnswer",method=RequestMethod.POST)
		public String getAnswer(Map<String, Object>map, 
				@RequestParam("username") String username,
				@RequestParam("answer") String answer,HttpSession session){
			List<Member> List = memberService.getMemberByUsername(username);
		 	String path="";
		 	for(Member mem : List)
		 	{
		 		if(mem.getAnswer().equals(answer)){
		 			map.put("user_id",mem.getId());
		 			path = "unknow_pass3";
		 		}
		 		else
			 	{
		 		map.put("username", username);
			 	map.put("key","�ӵͺ���١��ͧ!");
			 	path = "redirect:getQuestion";
			 	}
		 	}
		 	return path;
		}
		
}
