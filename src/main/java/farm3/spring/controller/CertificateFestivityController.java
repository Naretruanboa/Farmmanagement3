package farm3.spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import farm3.spring.model.CattleFatten;
import farm3.spring.model.CattleShow;
import farm3.spring.model.CattleStrain;
import farm3.spring.model.Color;
import farm3.spring.model.FattenList;
import farm3.spring.model.Festivity;
import farm3.spring.model.Gene;
import farm3.spring.model.Member;
import farm3.spring.model.Type;
import farm3.spring.myapp.AgeTool;
import farm3.spring.myapp.DateTool;
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
public class CertificateFestivityController {
	
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
	
	
	@RequestMapping("/Work")
	public ModelAndView Work(HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Member member = memberService.getMemberByUser(username);
		int privilege = member.getPrivilege().getId();
		Festivity festivity = new Festivity();
		map.put("festivity", festivity);
		map.put("auth", privilege);
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", geneService.getAllGene());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/festivity/festivity");
		return model;
	}
	
	@RequestMapping("/addWork")
	public ModelAndView addWork(HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Member member = memberService.getMemberByUser(username);
		Festivity festivity = new Festivity();
		map.put("festivity", festivity);
		map.put("userlist", memberService.getchkuser(username));
		map.put("typelist", getTypeList());
		map.put("genelist", getGeneList());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/festivity/newfestivity");
		return model;
	}
	
	@RequestMapping(value="/saveFestivity", method=RequestMethod.POST)
	public String saveFestivity(HttpSession session,Map<String, Object> map,@RequestParam( value="file1", required=false) MultipartFile file,
								@RequestParam( value="file2", required=false) MultipartFile file2,
								@ModelAttribute Festivity festivity,@RequestParam("title") String title){
		String username = (String)session.getAttribute("username");
		Member member = memberService.getMemberByUser(username);
		int userId = member.getId();
		String logo = title+"-logo.png";
		String poster = title+"-poster.png";
		if (!file.isEmpty()) {
            try {  
            	byte[] bytes = file.getBytes();
            	String path = context.getRealPath("")+File.separator+"img/festivity";
            	 File dr = new File(path);
            	String load = dr.getAbsolutePath()+File.separator+logo;
                  if (!dr.exists())
                  {   dr.mkdirs();}
            	   BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(load)));
            	   stream.write(bytes);
	               stream.close();
                  
                  if (!file2.isEmpty()) {
                	  try { 
                		byte[] bytes2 = file2.getBytes();
                		String path2 = context.getRealPath("")+File.separator+"img/festivity";
    	            	File dr3 = new File(path2);
    	            	String load3 = dr3.getAbsolutePath()+File.separator+poster;
    	            	   BufferedOutputStream stream3 = new BufferedOutputStream(new FileOutputStream(new File(load3)));
    		               stream3.write(bytes2);
    		               stream3.close();
                  }
                  catch (Exception e) {
  		            	return "CertificateofCattle/page/error";
  		            }
                  }
                festivity.setLogo(logo);
          		festivity.setPoster(poster);
          		festivity.setMember(memberService.getMember(userId));
          		festivity.setCowId("0");
          		festivity.setNewStatus(1);
          		festivityService.add(festivity);
          		
          		map.put("page", "addWork");
          		return "CertificateofCattle/page/success";
		}
            catch (Exception e) {
	            	return "CertificateofCattle/page/error";
	            }
		}
		else{
			return "CertificateofCattle/page/error";
		}
}
	
	@RequestMapping("/Edit_Work")
	public ModelAndView Edit_Work(@RequestParam("id") int id,HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Member member = memberService.getMemberByUser(username);
		Festivity festivity = new Festivity();
		map.put("festivity", festivity);
		map.put("festivitylist", festivityService.getFestivityById(id));
		map.put("authId", member.getPrivilege().getId());
		map.put("typelist", typeService.getAllType());
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", geneService.getAllGene());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/festivity/edit_festivity");
		return model;
	}
	
	
	@RequestMapping(value="/saveEdit_Work", method=RequestMethod.POST)
	public String saveEdit_Work(HttpSession session,Map<String, Object> map,@RequestParam( value="file1", required=false) MultipartFile file1,
								@RequestParam( value="file2", required=false) MultipartFile file2,
								@ModelAttribute Festivity festivity,@RequestParam("id") int id){
			//String browser ="CertificateofCattle/page/success2";
		
		String poster = festivity.getPoster();
		String logo = festivity.getLogo();
		if(!file1.isEmpty()){
			  try {  
	            	byte[] bytes = file1.getBytes();
			
	            	String path = context.getRealPath("")+File.separator+"img/festivity";
	            	File dr = new File(path);

	            	String load = dr.getAbsolutePath()+File.separator+logo;
	            	  if (!dr.exists())
	                  {   dr.mkdirs();}
	            	   BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(load)));

	            	   stream.write(bytes);
		               stream.close();
	            	   
	            	   
	            	   
	            	  // browser = "CertificateofCattle/page/success2";
			  }catch (Exception e) {
        	
				  return  "CertificateofCattle/page/error";
			  	}
		}
		
		
		if(!file2.isEmpty()){
			  try {  
	            	byte[] bytes2 = file2.getBytes();
			  		
	            	String path2 = context.getRealPath("")+File.separator+"img/festivity";
	            	File dr3 = new File(path2);
	            	String load3 = dr3.getAbsolutePath()+File.separator+poster;
	            	  if (!dr3.exists())
	                  {   dr3.mkdirs();}
	            	   BufferedOutputStream stream3 = new BufferedOutputStream(new FileOutputStream(new File(load3)));


	            	   stream3.write(bytes2);
		               stream3.close();
	            	   //browser = "CertificateofCattle/page/success2";
			  }catch (Exception e) {
      	
				  return  "CertificateofCattle/page/error";
			  	}
		}
		
		festivityService.edit(festivity);
		
		map.put("page", "Edit_Work?id="+festivity.getId().toString());
		return "CertificateofCattle/page/success"; 
	}
	
	
	@RequestMapping(value="/saveNew", method=RequestMethod.GET)
	public String saveNew(HttpSession session,Map<String, Object> map,@RequestParam("id") int[] id,
			@RequestParam("num") int num,@RequestParam(value="check") String[] chk){

	for(int i=0;i<num;i++){
		int n=id[i];
		if(chk[i]==null||chk[i]==""){
			chk[id[i]]="0";
			Festivity festivity = festivityService.getFestivity(id[i]);
			festivity.setNewStatus(Integer.parseInt(chk[i]));
			festivityService.edit(festivity);
		}
		else{
			Festivity festivity = festivityService.getFestivity(id[i]);
			festivity.setNewStatus(Integer.parseInt(chk[i]));
			festivityService.edit(festivity);
		}
		
		
		
	}
	
	return "redirect:index";
	}
	
		
	
	
	@RequestMapping("/cow_addWork1")
	public ModelAndView cow_addWork1(@RequestParam("id") int id,@RequestParam("gene") String gName,HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Member member = memberService.getMemberByUser(username);
		int i = 0;
		if(member.getPrivilege().getId()==1 || member.getPrivilege().getId()==2){
			i=1;
		}
		map.put("wId", id);
		map.put("cowshowlist", CowAddwork1(gName,id,i,username));
		map.put("cowshowlist2", CowInwork1(id,i,username));
		map.put("typelist", getTypeList());
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", getGeneList());
		map.put("authId", member.getPrivilege().getId());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/festivity/cow_addWork1");
		return model;
	}
	

	@RequestMapping(value="/In_Work", method=RequestMethod.GET)
	public String In_Work1(HttpSession session,Map<String, Object> map,@RequestParam("cId") String cId,
			@RequestParam("wId") int wId){
	
	Festivity festivity = festivityService.getFestivity(wId);
	cId = festivity.getCowId()+","+cId;
	festivity.setCowId(cId);
	festivityService.edit(festivity);
	
	
	return "CertificateofCattle/page/success";
	}
	
	
	@RequestMapping(value="/Out_Work")
	public String Out_Work(HttpSession session,Map<String, Object> map,@RequestParam("cId") String cId,@RequestParam("wId") int wId,
			@RequestParam("status") int status,@RequestParam("commen") String commen){
	
	Festivity festivity = festivityService.getFestivity(wId);
	String[] c = festivity.getCowId().split(",");
	String DId = "";
	for(int i=0;i<c.length;i++){

		if(!c[i].equals(cId)){
			DId = DId+c[i]+",";
		}
	}
	int num = DId.length();
	String DelResult = DId.substring(0, num-1);
	festivity.setCowId(DelResult);
	festivityService.edit(festivity);
	if(festivity.getType().getId()==1){
		CattleShow cattleshow = cattleshowService.getCattleShow(Integer.parseInt(cId));
		cattleshow.setCattleStatus(status);
		cattleshow.setCommen(commen);
		cattleshowService.edit(cattleshow);
	}
	if(festivity.getType().getId()==2){
		CattleStrain cattlestrain = cattlestrainService.getCattleStrain(Integer.parseInt(cId));
		cattlestrain.setCattleStatus(status);
		cattlestrain.setCommen(commen);
		cattlestrainService.edit(cattlestrain);
	}
	if(festivity.getType().getId()==3){
		CattleFatten cattlefatten = cattlefattenService.getCattleFatten(Integer.parseInt(cId));
		cattlefatten.setCattleStatus(status);
		cattlefatten.setCommen(commen);
		cattlefattenService.edit(cattlefatten);
	}
	return "CertificateofCattle/page/success";
	}
	
	
	@RequestMapping(value="/edit_cow_inwork")
	public String edit_cow_inwork(HttpSession session,Map<String, Object> map,@RequestParam("cId2") String cId,@RequestParam("wId2") int wId,
			@RequestParam("status2") int status){
	
	Festivity festivity = festivityService.getFestivity(wId);
	if(festivity.getType().getId()==1){
		CattleShow cattleshow = cattleshowService.getCattleShow(Integer.parseInt(cId));
		cattleshow.setCattleStatus(status);
		if(status==1){
		cattleshow.setCommen("-");
		}
		cattleshowService.edit(cattleshow);
	}
	if(festivity.getType().getId()==2){
		CattleStrain cattlestrain = cattlestrainService.getCattleStrain(Integer.parseInt(cId));
		cattlestrain.setCattleStatus(status);
		if(status==1){
			cattlestrain.setCommen("-");
			}
		cattlestrainService.edit(cattlestrain);
	}
	if(festivity.getType().getId()==3){
		CattleFatten cattlefatten = cattlefattenService.getCattleFatten(Integer.parseInt(cId));
		cattlefatten.setCattleStatus(status);
		if(status==1){
			cattlefatten.setCommen("-");
			}
		cattlefattenService.edit(cattlefatten);
	}
	return "CertificateofCattle/page/success";
	}
	
	@RequestMapping("/cow_addWork2")
	public ModelAndView cow_addWork2(@RequestParam("id") int id,@RequestParam("gene") String gName,HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		Member member = memberService.getMemberByUser(username);
		int i = 0;
		if(member.getPrivilege().getId()==1 || member.getPrivilege().getId()==2){
			i=1;
		}
		map.put("wId", id);
		map.put("cowlist", CowAddwork2(gName,id,i,username));
		map.put("cowlist2", CowInwork2(id,i,username));
		map.put("typelist", getTypeList());
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", getGeneList());
		map.put("authId", member.getPrivilege().getId());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/festivity/cow_addWork2");
		return model;
	}
	
	

	
	
	@RequestMapping(value="/AddDetailCowPan", method=RequestMethod.POST)
	public String AddDetailCowPan(HttpSession session,Map<String, Object> map,@RequestParam("weight") float weight,
			@RequestParam("start") float start,@RequestParam("lot") String lot,@RequestParam("id") int id){
		CattleStrain cattlestrain = cattlestrainService.getCattleStrain(id);
		cattlestrain.setWeight(weight);
		cattlestrain.setLot(lot);
		cattlestrain.setStrainStartPrice(start);
		cattlestrainService.edit(cattlestrain);
		
	return "redirect:index";
	}
	
	
	@RequestMapping("/cow_addWork3")
	public ModelAndView cow_addWork3(@RequestParam("id") int id,@RequestParam("gene") String gName,HttpSession session,Map<String, Object> map){
		
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Member member = memberService.getMemberByUser(username);
	
		
		Festivity festivity = festivityService.getFestivity(id);
		String start = festivity.getSWork();
		String end = festivity.getEWork();
		String fid = "";
		String fid2 = festivity.getCowId();
		List<Festivity> feslist = festivityService.FestivityByDate(start, end,3);
		for(Festivity f : feslist)
		{
			fid=fid+f.getCowId()+",";

		}
		int num = fid.length();
		String fid_result = fid.substring(0,num-1);
		if(member.getPrivilege().getId()==1 || member.getPrivilege().getId()==2){
			map.put("cowlist", cattlefattenService.CowFattenNotInFestivity(gName,fid_result));
			map.put("cowlist2", cattlefattenService.CowFattenInFestivity(fid2));
		}
		else
		{
			map.put("cowlist", cattlefattenService.MemberCowFattenFestivity(fid_result,username,2));
			map.put("cowlist2", cattlefattenService.MemberCowFattenFestivity(fid2, username, 1));
		}
		
		map.put("wId", id);
		map.put("authId", member.getPrivilege().getId());
		map.put("typelist", getTypeList());
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", getGeneList());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/festivity/cow_addWork3");
		return model;
	}
	
	
	
	@RequestMapping(value="/AddDetailCowKun", method=RequestMethod.POST)
	public String AddDetailCowKun(HttpSession session,Map<String, Object> map,@RequestParam("weight") float weight,
			@RequestParam("start") float start,@RequestParam("lot") String lot,@RequestParam("id") int id){
		CattleFatten cattlefatten = cattlefattenService.getCattleFatten(id);
		cattlefatten.setWeight(weight);
		cattlefatten.setLot(lot);
		cattlefatten.setStartPrice(start);
		cattlefattenService.edit(cattlefatten);
		
	return "redirect:index";
	}
	
	
	
	
	
	@RequestMapping(value="/DeleteWork")
	public String DeleteWork(HttpSession session,Map<String, Object> map,@RequestParam("Wid") int id){
	
	festivityService.delete(id);
	return "redirect:Work";
	}
	
	
	
	@RequestMapping("/fatten_list")
	public ModelAndView fatten_list(@RequestParam("id") int id,HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Member member = memberService.getMemberByUser(username);
		FattenList fattenlist = new FattenList();
		map.put("wId", id);
		map.put("fattenlist", fattenlist);
		map.put("cowlist", fattenlistService.getAllFattenListById(id));
		map.put("colorlist", getColorList());
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", getGeneList());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/cow/fatten_list");
		return model;
	}
	
	
	@RequestMapping(value="/add_fatten_list", method=RequestMethod.POST)
	public String add_fatten_list(HttpSession session,Map<String, Object> map,@ModelAttribute FattenList fattenlist){
		fattenlistService.add(fattenlist);
		
	return "redirect:index";
	}
	
	
	
	

	
	
	
	
	
	/*************************************findAll******************************************************/
	
	//add cow show to work
	private List<Map<String, ?>> CowAddwork1(String gene,int id,int privilege,String username){
		List<Map<String, ?>> Map = new ArrayList<Map<String, ?>>();
		
		Festivity festivity = festivityService.getFestivity(id);
		String start = festivity.getSWork();
		String end = festivity.getEWork();
		String fid = "";
		List<Festivity> feslist = feslist = festivityService.FestivityByDate(start, end,1);

		for(Festivity f : feslist)
		{
			fid=fid+f.getCowId()+",";
	
		}
		int num = fid.length();
		String fid_result = fid.substring(0,num-1);

		List<CattleShow> cowlist = new ArrayList<CattleShow>();
		if(privilege == 1){
			cowlist = cattleshowService.CowShowNotInFestivity(gene,fid_result);
		}
		if(privilege == 0){
			cowlist = cattleshowService.MemberCowShowFestivity(fid_result, username, 2);
		}
		 DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
		for (CattleShow cowshow : cowlist) {
			Map<String,Object> map  = new HashMap<String,Object>();
			map.put("idcow",cowshow.getId());
			map.put("name",cowshow.getName());
			DateTime dtNow = new DateTime();
			String dt = fmt.print(dtNow);
			String age = agetool.getAge(cowshow.getBirthday(), dt);
			map.put("age",age);
			map.put("gene", cowshow.getGene());
			map.put("sex", cowshow.getSex());
			map.put("commen", cowshow.getCommen());
			map.put("status", cowshow.getCattleStatus());
			Map.add(map);

		}

		return Map;
	}
	
	
	//view cow show in work
		private List<Map<String, ?>> CowInwork1(int id,int privilege,String username){
			List<Map<String, ?>> Map = new ArrayList<Map<String, ?>>();
			
			Festivity festivity = festivityService.getFestivity(id);
			String fid = festivity.getCowId();
			
			
			

			List<CattleShow> cowlist = new ArrayList<CattleShow>();
			if(privilege == 1){
				cowlist = cattleshowService.CowShowInFestivity(fid);
			}
			if(privilege == 0){
				cowlist = cattleshowService.MemberCowShowFestivity(fid, username, 1);
			}
			
			 DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
			for (CattleShow cowshow : cowlist) {
				Map<String,Object> map  = new HashMap<String,Object>();
				map.put("idcow",cowshow.getId());
				map.put("name",cowshow.getName());
				DateTime dtNow = new DateTime();
				String dt = fmt.print(dtNow);
				String age = agetool.getAge(cowshow.getBirthday(), dt);
				map.put("age",age);
				map.put("gene", cowshow.getGene());
				map.put("sex", cowshow.getSex());
				map.put("commen", cowshow.getCommen());
				map.put("status", cowshow.getCattleStatus());
				Map.add(map);

			}

			return Map;
		}
	
		
		
		
		
		
		//add cow pan to work
		private List<Map<String, ?>> CowAddwork2(String gene,int id,int privilege,String username){
			List<Map<String, ?>> Map = new ArrayList<Map<String, ?>>();
			
			Festivity festivity = festivityService.getFestivity(id);
			String start = festivity.getSWork();
			String end = festivity.getEWork();
			String fid = "";
		
			List<Festivity> feslist = festivityService.FestivityByDate(start, end,2);
			for(Festivity f : feslist)
			{
				fid=fid+f.getCowId()+",";

			}
			int num = fid.length();
			String fid_result = fid.substring(0,num-1);

			
			List<CattleStrain> cowlist = new ArrayList<CattleStrain>();
			if(privilege == 1){
				cowlist = cattlestrainService.CowStrainNotInFestivity(gene,fid_result);
			}
			if(privilege == 0){
				cowlist = cattlestrainService.MemberCowStrainFestivity(fid_result, username, 2);
			}
			
			
			 DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
			for (CattleStrain cow : cowlist) {
				Map<String,Object> map  = new HashMap<String,Object>();
				map.put("idcow",cow.getId());
				map.put("name",cow.getName());
				DateTime dtNow = new DateTime();
				String dt = fmt.print(dtNow);
				String age = agetool.getAge(cow.getBirthday(), dt);
				map.put("age",age);
				map.put("gene", cow.getGene());
				map.put("sex", cow.getSex());
				map.put("commen", cow.getCommen());
				map.put("status", cow.getCattleStatus());
				Map.add(map);

			}

			return Map;
		}
		
		
		//view cow pan in work
			private List<Map<String, ?>> CowInwork2(int id,int privilege,String username){
				List<Map<String, ?>> Map = new ArrayList<Map<String, ?>>();
				Festivity festivity = festivityService.getFestivity(id);
				String fid = festivity.getCowId();
			
				List<CattleStrain> cowlist = new ArrayList<CattleStrain>();
				if(privilege == 1){
					cowlist = cattlestrainService.CowStrainInFestivity(fid);
				}
				if(privilege == 0){
					cowlist = cattlestrainService.MemberCowStrainFestivity(fid, username, 1);
				}

				 DateTimeFormatter fmt = DateTimeFormat.forPattern("yyyy-MM-dd");
				for (CattleStrain cow : cowlist) {
					Map<String,Object> map  = new HashMap<String,Object>();
					map.put("idcow",cow.getId());
					map.put("name",cow.getName());
					DateTime dtNow = new DateTime();
					String dt = fmt.print(dtNow);
					String age = agetool.getAge(cow.getBirthday(), dt);
					map.put("age",age);
					map.put("gene", cow.getGene());
					map.put("sex", cow.getSex());
					map.put("commen", cow.getCommen());
					map.put("status", cow.getCattleStatus());
					Map.add(map);

				}

				return Map;
			}
			
			
			
			
		
	
	/******************************************LIST*********************************************************/
	
	@SuppressWarnings("unchecked")
	private Map<String, String> getTypeList(){
		Map<String, String> map = new HashMap<>();
		List<Type> List = typeService.getAllType();
		for (Type type : List) {
			map.put(type.getId() + "",type.getName() );
		}
		return map;
	}
	
	
	
	@SuppressWarnings("unchecked")
	private Map<String, String> getGeneList(){
		Map<String, String> map = new HashMap<>();
		List<Gene> List = geneService.getAllGene();
		for (Gene gene : List) {
			map.put(gene.getName() + "",gene.getName() );
		}
		return map;
	}
	
	@SuppressWarnings("unchecked")
	private Map<String, String> getColorList(){
		Map<String, String> map = new HashMap<>();
		List<Color> List = colorService.getAllColor();
		for (Color color : List) {
			map.put(color.getValue() + "",color.getValue() );
		}
		return map;
	}
	



}
