package farm3.spring.controller;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import farm3.spring.model.CattleShow;
import farm3.spring.model.Color;
import farm3.spring.model.Farm;
import farm3.spring.model.Festivity;
import farm3.spring.model.FormList;
import farm3.spring.model.Gene;
import farm3.spring.model.Member;
import farm3.spring.model.Standard;
import farm3.spring.myapp.MD5;
import farm3.spring.service.ColorService;
import farm3.spring.service.FarmService;
import farm3.spring.service.FestivityService;
import farm3.spring.service.FormListService;
import farm3.spring.service.GeneService;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;
import farm3.spring.service.StandardService;

@Controller
public class CertificateMainController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private PrivilegeService privilegeService;
	@Autowired
	private ColorService colorService;
	@Autowired
	private GeneService geneService;
	@Autowired
	private FormListService formlistService;
	@Autowired
	private FarmService farmService;	
	@Autowired
	private StandardService standardService;	
	@Autowired
	private FestivityService festivityService;	
	MD5 md5=new MD5();
	
	@RequestMapping("/Certificate")
	public ModelAndView home(HttpSession session,Map<String, Object> map) {
		Member member = new Member();
		String username = (String)session.getAttribute("username");
		map.put("userlist", memberService.getchkuser(username));
		map.put("member", member);
	
		ModelAndView model = new ModelAndView("CertificateofCattle/index");
		return model;
		
	}	
	
	@RequestMapping("news")
	public ModelAndView news(HttpSession session,Map<String, Object> map) {
		Member member = new Member();
		String username = (String)session.getAttribute("username");
		map.put("userlist", memberService.getchkuser(username));
		map.put("newslist", festivityService.getAllFestivityMember());
		map.put("member", member);
		ModelAndView model = new ModelAndView("CertificateofCattle/news");
		return model;
		
	}
	
	/*
	 * 
	 * 													SETTING	 
	 * 
	 */
	
	@RequestMapping("/Setlist")
	public ModelAndView Setlist(HttpSession session,Map<String, Object> map){
		Farm farm = new Farm();
		Color color = new Color();
		Gene gene = new Gene();

		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("userlist", memberService.getchkuser(username));
		map.put("gene", gene);
		map.put("color", color);
		map.put("farm", farm);

		map.put("farmlist", farmService.getAllFarm());
		map.put("formlist", formlistService.getAllFormList());
		map.put("colorlist", colorService.getAllColor());
		map.put("genelist", geneService.getAllGene());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/setting/setlist");
		return model;
	}
	
	@RequestMapping(value="/getStandard", method=RequestMethod.GET)
	public String getStandard(@RequestParam("id") int id,HttpSession session,
								Map<String, Object> map){
			map.put("num", id);
			map.put("standardlist", standardService.getAllStandard());
		return "CertificateofCattle/page/setting/get_standard";
	}
	
	/*@ResponseBody
	@RequestMapping(value="checkColor",method = RequestMethod.POST)
	public String checkColor(@RequestParam("colorName") String name){
		String msg ="yes";
		int chk = colorService.checkColor(name).size();
		if(chk>0){
			msg="no";
		}
		return msg; 
	}
	*/
	/*@RequestMapping(value="addColor",method = RequestMethod.POST)
	public String addColor(@ModelAttribute Color color,Map<String, Object> map){
			colorService.add(color);
			return "redirect:index";
	}*/
	
	
	@ResponseBody
	@RequestMapping(value="checkGene",method = RequestMethod.POST)
	public String checkGene(@RequestParam("geneName") String name){
		String msg ="yes";
		int chk = geneService.checkGene(name).size();
		if(chk>0){
			msg="no";
		}
		return msg; 
	}
	
	
	@RequestMapping(value="addGene",method = RequestMethod.POST)
	public String addColor(@ModelAttribute Gene gene,Map<String, Object> map){
			geneService.add(gene);
			return "redirect:index";
	}
	
	
	@RequestMapping(value="addForm",method = RequestMethod.POST)
	public String addColor(@RequestParam("flist") String flist,Map<String, Object> map){
			FormList formlist = formlistService.getFormList(1);
			formlist.setName(flist);
			formlistService.edit(formlist);
			return "redirect:index";
	}
	
	
	/*@RequestMapping(value="editExcise",method = RequestMethod.POST)
	public String editExcise(@ModelAttribute CalPercen calpercen,Map<String, Object> map){

				calpercenService.edit(calpercen);
	
			return "redirect:index";
			
			
	}
	
	@RequestMapping(value="editFarm",method = RequestMethod.POST)
	public String editExcise(@ModelAttribute Farm farm,@RequestParam("farmAddress") String address,Map<String, Object> map){
			farm.setFarmAddress(address);
			farmService.edit(farm);	
	
			return "redirect:index";
			
			
	}*/
	
	
	@RequestMapping(value="editStandard",method = RequestMethod.POST)
	public String editStandard(@RequestParam("standard") int i,@RequestParam("start1") int start1,
							   @RequestParam("start2") int start2,@RequestParam("start3") int start3,
							   @RequestParam("end1") int end1,@RequestParam("end2") int end2,
							   @RequestParam("end3") int end3,Map<String, Object> map)
	{

			Standard standard = standardService.getStandard(1);
			if(i==1){
				standard.setStartCalf1(start1);
				standard.setStartCalf2(start2);
				standard.setStartCalf3(start3);
				standard.setEndCalf1(end1);
				standard.setEndCalf2(end2);
				standard.setEndCalf3(end3);
			}
			if(i==2){
				standard.setStartIntermediate1(start1);
				standard.setStartIntermediate2(start2);
				standard.setStartIntermediate3(start3);
				standard.setEndIntermediate1(end1);
				standard.setEndIntermediate2(end2);
				standard.setEndIntermediate3(end3);
				
			}
			if(i==3){
				standard.setStartJunior1(start1);
				standard.setStartJunior2(start2);
				standard.setStartJunior3(start3);
				standard.setEndJunior1(end1);
				standard.setEndJunior2(end2);
				standard.setEndJunior3(end3);
			}
			if(i==4){
				standard.setStartSenior1(start1);
				standard.setStartSenior2(start2);
				standard.setStartSenior3(start3);
				standard.setEndSenior1(end1);
				standard.setEndSenior2(end2);
				standard.setEndSenior3(end3);
			}
			standardService.edit(standard);
				
			return "redirect:index";
			
			
	}
	
	
	@RequestMapping(value="deleteColor",method = RequestMethod.POST)
	public String deleteColor(@RequestParam("id") int id,Map<String, Object> map){
			colorService.delete(id);
			return "redirect:index";
	}
	
	
	@RequestMapping(value="deleteGene",method = RequestMethod.POST)
	public String deleteGene(@RequestParam("id") int id,Map<String, Object> map){
			geneService.delete(id);
			return "redirect:index";
	}
	

}
