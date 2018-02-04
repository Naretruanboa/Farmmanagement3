package farm3.spring.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import farm3.spring.model.CattleFatten;
import farm3.spring.model.CattleShow;
import farm3.spring.model.CattleStrain;
import farm3.spring.model.Festivity;
import farm3.spring.model.Member;
import farm3.spring.model.Type;
import farm3.spring.myapp.AgeTool;
import farm3.spring.myapp.DateTool;
import farm3.spring.myapp.PageCount;
import farm3.spring.service.CattleFattenService;
import farm3.spring.service.CattleShowService;
import farm3.spring.service.CattleStrainService;
import farm3.spring.service.ColorService;
import farm3.spring.service.FattenListService;
import farm3.spring.service.FestivityService;
import farm3.spring.service.GeneService;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;
import farm3.spring.service.TypeService;




@Controller
public class CertificateSearchController {
	
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private PrivilegeService privilegeService;
	
	@Autowired
	private ColorService colorService;
	

	@Autowired
	private GeneService geneService;
	
	@Autowired
	private CattleShowService cattleshowService;
	
	@Autowired
	private CattleStrainService cattlestrainService;
	
	@Autowired
	private CattleFattenService cattlefattenService;
	
	@Autowired
	private TypeService typeService;
	
	@Autowired
	private FestivityService festivityService;
	
	
	@Autowired
	private FattenListService fattenlistService;
	
	@Autowired
	private ServletContext context;
	
	DateTool datetool = new DateTool();
	
	AgeTool agetool = new AgeTool();
	
	
	@RequestMapping(value="search_festivity")
	public String search_festivity(HttpSession session,@RequestParam("id") int id,@RequestParam("value") String value
			,@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
		
		String username = (String)session.getAttribute("username");
		Member member = memberService.getMemberByUser(username);
		int pivilege = member.getPrivilege().getId();
		Festivity festivity = new Festivity();
		Type type = new Type();
		if(id==1){
			festivity.setTitle(value);
		}
		if(id==2){
			type.setName(value);
			festivity.setType(type);
		}
		if(id==3){
			
			festivity.setGene(value);
		}
		if(pivilege==1||pivilege==2){
			int count = festivityService.CountAllFestivity(festivity);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			List<Festivity> festivityList = festivityService.getAllFestivity(festivity,page);
			map.put("festivitylist", getAllfestivityList(festivity, page));
			map.put("num", festivityService.getAllFestivity(festivity,page).size());
			map.put("authId", pivilege);
			
			map.put("count", countPage);
			map.put("page", page);
			}
		if(pivilege==3){
			festivity.setNewStatus(1);
			int count = festivityService.CountAllFestivityMember(festivity);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			
			List<Festivity> festivityList = festivityService.getAllFestivityMember(festivity,page);
			map.put("festivitylist", getAllfestivityList(festivity, page));
			map.put("num", festivityService.getAllFestivityMember(festivity,page).size());
			map.put("authId", pivilege);			
			map.put("count", countPage);
			map.put("page", page);
			}
		
		
		
		return "CertificateofCattle/page/festivity/festivity_list";
	}
	
	@RequestMapping(value="search_cattle_show")
	public String search_cattle_show(HttpSession session,@RequestParam("id") int id,@RequestParam("value") String value
			,@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
		
		String username = (String)session.getAttribute("username");
		Member member = memberService.getMemberByUser(username);
		int pivilege = member.getPrivilege().getId();
		CattleShow cattleshow = new CattleShow();
		Member user = new Member();
	
		if(id==1){
			cattleshow.setName(value);
		}
		if(id==2){
		
			cattleshow.setGene(value);
		}
		if(id==3){
			
			cattleshow.setFather(value);
		}
		if(id==4){
			
			cattleshow.setMother(value);
		}
		if(id==5){
		user.setFirst(value);
		cattleshow.setMember(user);
		}
		if(pivilege==1||pivilege==2){
			int count = cattleshowService.CountCattleShow(cattleshow);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("cowshowlist", AdminfindCowShow(cattleshow,page));
			
			//map.put("authId", pivilege);
			
			map.put("count", countPage);
			map.put("page", page);
			}
		if(pivilege==3){
			user.setId(member.getId());
			cattleshow.setMember(user);
			int count = cattleshowService.CountCattleShowByUser(cattleshow);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			
			map.put("cowshowlist", MemberfindCowShow(cattleshow,page));
			
			//map.put("authId", pivilege);			
			map.put("count", countPage);
			map.put("page", page);
			}
		
		
		
		return "CertificateofCattle/page/cow/cow1_list";
	}
	
	
	@RequestMapping(value="search_cattle_strain")
	public String search_cattle_strain(HttpSession session,@RequestParam("id") int id,@RequestParam("value") String value
			,@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
		
		String username = (String)session.getAttribute("username");
		Member member = memberService.getMemberByUser(username);
		int pivilege = member.getPrivilege().getId();
		CattleStrain cattlestrain = new CattleStrain();
		Member user = new Member();
	
		if(id==1){
			cattlestrain.setName(value);
		}
		if(id==3){
		
			cattlestrain.setGene(value);
		}
		if(id==2){
			
			cattlestrain.setPrivateNo(value);
		}
		/*if(id==4){
			
			cattleshow.setMother(value);
		}
		if(id==5){
		user.setName(value);
		cattleshow.setMember(user);
		}*/
		if(pivilege==1||pivilege==2){
			int count = cattlestrainService.CountCattleStrain(cattlestrain);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			map.put("cowstrainlist", AdminfindCowStrain(cattlestrain,page));
			
			map.put("authId", pivilege);
			
			map.put("count", countPage);
			map.put("page", page);
			}
		if(pivilege==3){
			user.setId(member.getId());
			cattlestrain.setMember(user);
			int count = cattlestrainService.CountCattleStrainByUser(cattlestrain);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			
			map.put("cowstrainlist", MemberfindCowStrain(cattlestrain,page));
			
			map.put("authId", pivilege);			
			map.put("count", countPage);
			map.put("page", page);
			}
		
		
		
		return "CertificateofCattle/page/cow/cow2_list";
	}
	
	
	
	@RequestMapping(value="search_cattle_fatten")
	public String search_cattle_fatten(HttpSession session,@RequestParam("id") int id,@RequestParam("value") String value
			,@RequestParam(value="page",defaultValue="1") int page,Map<String, Object> map){
		
		String username = (String)session.getAttribute("username");
		Member member = memberService.getMemberByUser(username);
		int pivilege = member.getPrivilege().getId();
		CattleFatten cattlefatten = new CattleFatten();
		Member user = new Member();
	
		
		if(id==1){
		
			cattlefatten.setGene(value);
		}
		if(id==2){
			
			cattlefatten.setLot(value);
		}
		/*if(id==4){
			
			cattleshow.setMother(value);
		}
		if(id==5){
		user.setName(value);
		cattleshow.setMember(user);
		}*/
		if(pivilege==1||pivilege==2){
			int count = cattlefattenService.CountCattleFatten(cattlefatten);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}
			List<CattleFatten> cowlist = cattlefattenService.SearchCattleFatten(cattlefatten, page);
			map.put("cowfattenlist", cowlist);
			
			map.put("authId", pivilege);
			
			map.put("count", countPage);
			map.put("page", page);
			}
		if(pivilege==3){
			user.setId(member.getId());
			cattlefatten.setMember(user);
			int count = cattlefattenService.CountCattleFattenByUser(cattlefatten);
			int countPage = 0;
			if((count%10)==0){
				countPage=count/10;
			}else{
				countPage=(count/10)+1;
			}

			List<CattleFatten> cowlist = cattlefattenService.SearchCattleFattenByUser(cattlefatten, page);
			map.put("cowfattenlist", cowlist);
			
			map.put("authId", pivilege);			
			map.put("count", countPage);
			map.put("page", page);
			}
		
		
		
		return "CertificateofCattle/page/cow/cow3_list";
	}
	/**********************************************************************************************/
	
	//map for calculator age (ADMIN)
		private List<Map<String, ?>> AdminfindCowShow(CattleShow cattleshow,int page){
			List<Map<String, ?>> CowShowMap = new ArrayList<Map<String, ?>>();
			List<CattleShow> cowlist = cattleshowService.SearchCattleShow(cattleshow, page);
			 DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
			for (CattleShow cowshow : cowlist) {
				Map<String,Object> map  = new HashMap<String,Object>();
				map.put("idcow",cowshow.getId());
				map.put("name",cowshow.getName());
				map.put("birthday",cowshow.getBirthday());
				map.put("father",cowshow.getFather());
				map.put("mother",cowshow.getMother());
				map.put("deverloper",cowshow.getDeverloper());
				DateTime dtNow = new DateTime();
				String dt = fmt.print(dtNow);
				String age = agetool.getAge(cowshow.getBirthday(), dt);
				map.put("age",age);
				map.put("gene", cowshow.getGene());
				map.put("sex", cowshow.getSex());
				CowShowMap.add(map);

			}

			return CowShowMap;
		}
		//map for calculator age (MEMBER)
			private List<Map<String, ?>> MemberfindCowShow(CattleShow cattleshow,int page){
				List<Map<String, ?>> CowShowMap = new ArrayList<Map<String, ?>>();
				List<CattleShow> cowlist = cattleshowService.SearchCattleShowByUser(cattleshow, page);
				 DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
				for (CattleShow cowshow : cowlist) {
					Map<String,Object> map  = new HashMap<String,Object>();
					map.put("idcow",cowshow.getId());
					map.put("name",cowshow.getName());
					map.put("birthday",cowshow.getBirthday());
					map.put("father",cowshow.getFather());
					map.put("mother",cowshow.getMother());
					map.put("deverloper",cowshow.getDeverloper());
					DateTime dtNow = new DateTime();
					String dt = fmt.print(dtNow);
					String age = agetool.getAge(cowshow.getBirthday(), dt);
					map.put("age",age);
					map.put("gene", cowshow.getGene());
					map.put("sex", cowshow.getSex());
					CowShowMap.add(map);

				}

				return CowShowMap;
			}
			
			//map for calculator age (ADMIN)
			private List<Map<String, ?>> AdminfindCowStrain(CattleStrain cattlestrain,int page){
				List<Map<String, ?>> CowStrainMap = new ArrayList<Map<String, ?>>();
				List<CattleStrain> cowlist = cattlestrainService.SearchCattleStrain(cattlestrain, page);
				 DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
				for (CattleStrain cowstrain : cowlist) {
					Map<String,Object> map  = new HashMap<String,Object>();
					map.put("idcow",cowstrain.getId());
					map.put("name",cowstrain.getName());
					map.put("birthday",cowstrain.getBirthday());
					map.put("father",cowstrain.getFather());
					map.put("mother",cowstrain.getMother());
					map.put("privateNo",cowstrain.getPrivateNo());
					DateTime dtNow = new DateTime();
					String dt = fmt.print(dtNow);
					String age = agetool.getAge(cowstrain.getBirthday(), dt);
					map.put("age",age);
					map.put("gene", cowstrain.getGene());
					map.put("sex", cowstrain.getSex());
					map.put("color", cowstrain.getColor());
					
					CowStrainMap.add(map);

				}

				return CowStrainMap;
			}
			
			//map for calculator age (ADMIN)
			private List<Map<String, ?>> MemberfindCowStrain(CattleStrain cattlestrain,int page){
				List<Map<String, ?>> CowStrainMap = new ArrayList<Map<String, ?>>();
				List<CattleStrain> cowlist = cattlestrainService.SearchCattleStrainByUser(cattlestrain, page);
				 DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
				for (CattleStrain cowstrain : cowlist) {
					Map<String,Object> map  = new HashMap<String,Object>();
					map.put("idcow",cowstrain.getId());
					map.put("name",cowstrain.getName());
					map.put("birthday",cowstrain.getBirthday());
					map.put("father",cowstrain.getFather());
					map.put("mother",cowstrain.getMother());
					map.put("privateNo",cowstrain.getPrivateNo());
					DateTime dtNow = new DateTime();
					String dt = fmt.print(dtNow);
					String age = agetool.getAge(cowstrain.getBirthday(), dt);
					map.put("age",age);
					map.put("gene", cowstrain.getGene());
					map.put("sex", cowstrain.getSex());
					map.put("color", cowstrain.getColor());
					
					CowStrainMap.add(map);

				}

				return CowStrainMap;
			}
			
			private List<Map<String, ?>> getAllfestivityList(Festivity festivity,int page){
				List<Map<String, ?>> FestivityMap = new ArrayList<Map<String, ?>>();
				List<Festivity> festlist = festivityService.getAllFestivity(festivity,page);
				 DateTimeFormatter fmt = DateTimeFormat.forPattern("dd-MM-yyyy");
				for (Festivity work : festlist) {
					Map<String,Object> map  = new HashMap<String,Object>();
					map.put("id",work.getId());
					map.put("newStatus",work.getNewStatus());
					map.put("title",work.getTitle());
					map.put("typeName",work.getType().getName());
					map.put("typeId",work.getType().getId());
					map.put("gene",work.getGene());
					DateTime d = new DateTime(work.getSWork());
					String dt = fmt.print(d);
					map.put("SWork",dt);
					FestivityMap.add(map);
				}
				return FestivityMap;
			}

}
