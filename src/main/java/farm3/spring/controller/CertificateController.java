package farm3.spring.controller;

import java.io.BufferedOutputStream;
import java.io.*;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
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
import farm3.spring.model.Gene;
import farm3.spring.model.Member;

import farm3.spring.service.CattleFattenService;
import farm3.spring.service.CattleShowService;
import farm3.spring.service.CattleStrainService;
import farm3.spring.service.ColorService;
import farm3.spring.service.FattenListService;
import farm3.spring.service.FestivityService;
import farm3.spring.service.GeneService;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;
import farm3.spring.myapp.DateTool;
import farm3.spring.myapp.MD5;
import farm3.spring.myapp.AgeTool;


@Controller
public class CertificateController {
	
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
	private FattenListService fattenlistService;
	
	@Autowired
	private FestivityService festivityService;
	
	
	@Autowired
	private ServletContext context;
	
	MD5 md5;
	
	
	DateTool datetool = new DateTool();
	
	AgeTool agetool = new AgeTool();

	private CattleFattenService registerService;
	
	
	@RequestMapping("/ViewCow1")
	public ModelAndView ViewCowsh(HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Member member = memberService.getMemberByUser(username);
		
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", geneService.getAllGene());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/cow/viewcow1");
		return model;
	}
	
	
	@RequestMapping("/addCow1")
	public ModelAndView addCow1(HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", geneService.getAllGene());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/cow/addcow1");
		return model;
	}
	
	
	@RequestMapping(value="saveCow1",method = RequestMethod.POST)
	public String saveCow1(HttpSession session,Map<String, Object> map,@RequestParam( value="file1", required=false) MultipartFile file,
			@RequestParam( value="file2", required=false) MultipartFile file2,@RequestParam("name") String name,
			@RequestParam("birthday") String birthday,@RequestParam("gene") String gene,@RequestParam("gender") String gender,
			@RequestParam("mom") String mom,@RequestParam("dad") String dad,@RequestParam("depv") String depvName){

		 int n = cattleshowService.CheckCattleShowName(name).size();
		 if (n>0){
			 map.put("msgerror", "มีโคชื่อนี้อยู่แล้ว");
			 return "CertificateofCattle/page/error2";
		 }
		 else{

				String GetUser = (String)session.getAttribute("username");
				List<Member> memberlist = memberService.getchkuser(GetUser);
				  CattleShow cattleshow = new CattleShow();
				  
                  cattleshow.setBirthday(birthday);
                  cattleshow.setCattleStatus(1);
 
                  cattleshow.setDeverloper(depvName);
                  cattleshow.setFather(dad);
                  cattleshow.setGene(gene);
                  cattleshow.setMother(mom);
                  cattleshow.setName(name);
                  cattleshow.setCommen("-");

                  cattleshow.setSex(gender);
                  for(Member member : memberlist){
                	  cattleshow.setMember(memberService.getMember(member.getId()));
          			}
                  cattleshowService.add(cattleshow);  
                  
                  int c = cattleshow.getId();
  				  String ImageName = Integer.toString(c)+"-pic.jpg";
  				  String ImageName2 = Integer.toString(c)+"-pidegree.jpg";
  				  cattleshow = cattleshowService.getCattleShow(c);
                  cattleshow.setPic(ImageName);
                  cattleshow.setPedegree(ImageName2);
                  cattleshowService.edit(cattleshow);

				  
				if (!file.isEmpty()) {
		            try {  
		            	byte[] bytes = file.getBytes();
		                 
		            	String path = context.getRealPath("")+File.separator+"img/pic_cattle/cattle_show";
		            	 File pic = new File(path);
		            	 String cow_img = pic.getAbsolutePath()+File.separator+ImageName;

		            	  if (!pic.exists())
		                  {   pic.mkdirs();}
		                  BufferedOutputStream stream =
		                          new BufferedOutputStream(new FileOutputStream(new File(cow_img)));

		                  stream.write(bytes);
		                  stream.close();
		            	} catch (Exception e) {
		            	
		            	return "CertificateofCattle/page/error";
		            		}
						}
		                  
		                  if (!file2.isEmpty()) {
		                	  try { 
		                		byte[] bytes2 = file2.getBytes();
		                		String path2 = context.getRealPath("")+File.separator+"img/pic_pedigree/cattle_show";
		                		  File ped = new File(path2);
		                		  String cow_ped = ped.getAbsolutePath()+File.separator+ImageName2;
				
				            	  if (!ped.exists())
				                  {   ped.mkdirs();}
				            	   BufferedOutputStream stream3 =
					                          new BufferedOutputStream(new FileOutputStream(new File(cow_ped)));

					                  stream3.write(bytes2);
					                  stream3.close();
					                 
					                  
		  		            } catch (Exception e) {
		  		            	
		  		            	return "CertificateofCattle/page/error";
		  		            }
		                  
		                  }
		        
		                

		                
		           
		
		map.put("page", "addCow1");
		return "CertificateofCattle/page/success";
	}
}
	
	
	
	@RequestMapping("/Edit1")
	public ModelAndView Edit1(HttpSession session,Map<String, Object> map,@RequestParam("id") int id){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Member member = memberService.getMemberByUser(username);
		map.put("cowshowlist", cattleshowService.getAllCattleShow(id));
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", geneService.getAllGene());
		map.put("colorlist", colorService.getAllColor());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/cow/edit_show");
		return model;
	}
	
	
//Save Edit1
	@RequestMapping(value="saveEdit1",method = RequestMethod.POST)
	public String saveEdit1(HttpSession session,Map<String, Object> map,@RequestParam("id") int id,
			@RequestParam( value="file1", required=false) MultipartFile file,
			@RequestParam( value="file2", required=false) MultipartFile file2,@RequestParam("name") String name,
			@RequestParam("birthday") String birthday,@RequestParam("gene") String gene,@RequestParam("gender") String gender,
			@RequestParam("mom") String mom,@RequestParam("dad") String dad,@RequestParam("depv") String depvName){
	
				String ImageName = id+"-pic.jpg";
				String ImageName2 = id+"-pidegree.jpg";
				String GetUser = (String)session.getAttribute("username");
				List<Member> memberlist = memberService.getchkuser(GetUser);
				  CattleShow cattleshow = cattleshowService.getCattleShow(id);
		/*		int Iduser;
				List<Member> memberlist = memberService.getchkuser(GetUser);
				for(Member member : memberlist){
					Iduser = member.getId();
				}*/
				if (!file.isEmpty()) {
		            try {  
		            	byte[] bytes = file.getBytes();
		            
		            	
		            	String path = context.getRealPath("")+File.separator+"img/pic_cattle/cattle_show";
		            	 File pic = new File(path);
		            	 String cow_img = pic.getAbsolutePath()+File.separator+ImageName;
		            	 

		            	  if (!pic.exists())
		                  {   pic.mkdirs();}
		                  BufferedOutputStream stream =
		                          new BufferedOutputStream(new FileOutputStream(new File(cow_img)));

		                  stream.write(bytes);
		            
		                  stream.close();
		                  
		                  
		                  cattleshow.setPic(ImageName);
		             
		                
		            } catch (Exception e) {
		            	
		            	return "CertificateofCattle/page/error";
		            }
				}
		                
		                  if (!file2.isEmpty()) {
		                	  try { 
		                		byte[] bytes2 = file2.getBytes();
		                		 String path2 = context.getRealPath("")+File.separator+"img/pic_pedigree/cattle_show";
		                		  File ped = new File(path2);
		                		  String cow_ped = ped.getAbsolutePath()+File.separator+ImageName2;
				
				            	  if (!ped.exists())
				                  {   ped.mkdirs();}
				            	   BufferedOutputStream stream3 =
					                          new BufferedOutputStream(new FileOutputStream(new File(cow_ped)));

					                  stream3.write(bytes2);
					                
					                  stream3.close();
					                  cattleshow.setPedegree(ImageName2);
					                  
		  		            } catch (Exception e) {
		  		            	
		  		            	return "CertificateofCattle/page/error";
		  		            }
		                  
		                  }
		            
		         

	
                  cattleshow.setBirthday(birthday);
                  cattleshow.setDeverloper(depvName);
                  cattleshow.setFather(dad);
                  cattleshow.setGene(gene);
                  cattleshow.setMother(mom);
                  cattleshow.setName(name);
                  cattleshow.setSex(gender);
               
                  cattleshowService.edit(cattleshow);
                  
                  String page = "Edit1?id="+cattleshow.getId().toString(); 
                  map.put("page", page);
		
		return "CertificateofCattle/page/success";
	
}
	
	
	@RequestMapping("/ViewCow2")
	public ModelAndView ViewCowph(HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Member member = memberService.getMemberByUser(username);
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", geneService.getAllGene());
		map.put("colorlist", colorService.getAllColor());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/cow/viewcow2");
		return model;
	}
	
	@RequestMapping("/addCow2")
	public ModelAndView addCow2(HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("userlist", memberService.getchkuser(username));
		map.put("colorlist", colorService.getAllColor());
		map.put("genelist", geneService.getAllGene());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/cow/addcow2");
		return model;
	}
	
	
	


@RequestMapping("/report_certificateshow")
public ModelAndView certificateshow(HttpSession session,Map<String, Object> map){
	String username = (String)session.getAttribute("username");
	if(username==null){
		ModelAndView model = new ModelAndView("no_login");
		return model;
	}
	int privilege = memberService.getMemberByUser(username).getPrivilege().getId();
	//int privilege = memberService.getMemberByUsername(username).getPrivilege().getId();
	map.put("authId", privilege);
	map.put("userlist", memberService.getchkuser(username));
	map.put("colorlist", colorService.getAllColor());
	map.put("genelist", geneService.getAllGene());
	map.put("festivity_list", festivityService.getFestivityByType(1));
	ModelAndView model = new ModelAndView("CertificateofCattle/page/report/report_certificateshow");
	return model;
}
	
	@RequestMapping("/report_certificatepun")
	public ModelAndView certificatepun(HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		int privilege = memberService.getMemberByUser(username).getPrivilege().getId();
		map.put("authId", privilege);
		map.put("userlist", memberService.getchkuser(username));
		map.put("colorlist", colorService.getAllColor());
		map.put("genelist", geneService.getAllGene());
		map.put("festivity_list", festivityService.getFestivityByType(2));
		ModelAndView model = new ModelAndView("CertificateofCattle/page/report/report_certificatepun");
		return model;
}
	
	@RequestMapping("/report_certificatekun")
	public ModelAndView certificatekun(HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("userlist", memberService.getchkuser(username));
		map.put("colorlist", colorService.getAllColor());
		map.put("genelist", geneService.getAllGene());
		map.put("festivity_list", festivityService.getFestivityByType(3));
		ModelAndView model = new ModelAndView("CertificateofCattle/page/report/report_certificatekun");
		return model;
	}
	
	
	

	@RequestMapping(value="saveCow2",method = RequestMethod.POST)
	public String saveCow2(HttpSession session,Map<String, Object> map,@RequestParam("color") String color,
			@RequestParam( value="file1", required=false) MultipartFile file,@RequestParam("description") String description,
			@RequestParam( value="file2", required=false) MultipartFile file2,@RequestParam("name") String name,
			@RequestParam("birthday") String birthday,@RequestParam("gene") String gene,@RequestParam("sex") String gender,
			@RequestParam("mom") String mom,@RequestParam("dad") String dad,@RequestParam("privateNo") String privateNo){
		 int n = cattlestrainService.CheckCattleStrainName(name).size();
		 int n2 = cattlestrainService.CheckCattleStrainPrivateNo(privateNo).size();
		
		 if (n>0){
			 map.put("msgerror", "มีโคชื่อนี้อยู่แล้ว");
			 return "page/error2";
		 }
		 if (n2>0){
			 map.put("msgerror", "มีโคหมายเลขนี้อยู่แล้ว");
			 return "page/error2";
		 }
		 
		 else{
			 
				String GetUser = (String)session.getAttribute("username");
				List<Member> memberlist = memberService.getchkuser(GetUser);
				  CattleStrain cattlestrain = new CattleStrain();
			 
			  cattlestrain.setBirthday(birthday);
              cattlestrain.setCattleStatus(1);
     
              cattlestrain.setColor(color);
              cattlestrain.setFather(dad);
              cattlestrain.setGene(gene);
              cattlestrain.setMother(mom);
              cattlestrain.setName(name);
            
              cattlestrain.setPrivateNo(privateNo);
              cattlestrain.setSex(gender);
              cattlestrain.setCommen("-");
              cattlestrain.setDescription(description);
              for(Member member : memberlist){
            	  cattlestrain.setMember(memberService.getMember(member.getId()));
      			}
              cattlestrainService.add(cattlestrain);
              
                int c = cattlestrain.getId();
				String ImageName = c+"-pic.jpg";
				String ImageName2 = c+"-pidegree.jpg";
				
				cattlestrain = cattlestrainService.getCattleStrain(c);
				cattlestrain.setPic(ImageName);
                cattlestrain.setPedigree(ImageName2);
                cattlestrainService.edit(cattlestrain);
                
				
				if (!file.isEmpty()) {
		            try {  
		            	byte[] bytes = file.getBytes();
		         
		            	String path = context.getRealPath("")+File.separator+"img/pic_cattle/cattle_strain";
		            	 File pic = new File(path);
		            	 String cow_img = pic.getAbsolutePath()+File.separator+ImageName;


		            	  if (!pic.exists())
		                  {   pic.mkdirs();}
		                  BufferedOutputStream stream =
		                          new BufferedOutputStream(new FileOutputStream(new File(cow_img)));

		                  stream.write(bytes);
		                 
		                  stream.close();
		            } catch (Exception e) {
		            	
		            	return "CertificateofCattle/page/error";
		            }
				}
		
		               
		                  
		                  if (!file2.isEmpty()) {
		                	  try { 
		                		byte[] bytes2 = file2.getBytes();
		                		 String path2 = context.getRealPath("")+File.separator+"img/pic_pedigree/cattle_strain";
		                		  File ped = new File(path2);
		                		  String cow_ped = ped.getAbsolutePath()+File.separator+ImageName2;
				            	
				            	  if (!ped.exists())
				                  {   ped.mkdirs();}
				            	   BufferedOutputStream stream3 =
					                          new BufferedOutputStream(new FileOutputStream(new File(cow_ped)));
					                  
					                  stream3.write(bytes2);
					                  stream3.close();

					                  
		  		            } catch (Exception e) {
		  		            	
		  		            	return "CertificateofCattle/page/error";
		  		            }
		                  
		                  }
		        
		                
		                
		                
		                  
		                  map.put("page", "addCow2");

		return "CertificateofCattle/page/success";
	}
}
	
	
	
	@RequestMapping("/Edit2")
	public ModelAndView Edit2(HttpSession session,Map<String, Object> map,@RequestParam("id") int id){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Member member = memberService.getMemberByUser(username);
		map.put("cowstrainlist", cattlestrainService.getCattleStrainlist(id));
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", geneService.getAllGene());
		map.put("colorlist", colorService.getAllColor());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/cow/edit_cow2");
		return model;
	}
	
	
	
	
	
	@RequestMapping(value="saveEditCow22",method = RequestMethod.POST)
	public String saveEdit2(HttpSession session,Map<String, Object> map,@RequestParam("color") String color,
			@RequestParam( value="file1", required=false) MultipartFile file,
			@RequestParam( value="file2", required=false) MultipartFile file2,@RequestParam("name") String name,
			@RequestParam("birthday") String birthday,@RequestParam("gene") String gene,@RequestParam("sex") String gender,
			@RequestParam("mom") String mom,@RequestParam("dad") String dad,@RequestParam("privateNo") String privateNo,
			@RequestParam("id") int id,@RequestParam("wborn") float wborn,@RequestParam("wwean") float wwean,
			@RequestParam("wyear") float wyear,@RequestParam("rateMilk") String rateMilk,@RequestParam("grandfather") String grandfather,
			@RequestParam("grandmother") String grandmother,@RequestParam("momGrandfather") String momGrandfather,
			@RequestParam("dadGrandfather") String dadGrandfather,@RequestParam("dadGrandmother") String dadGrandmother,
			@RequestParam("momGrandmother") String momGrandmother,@RequestParam("grandpa") String grandpa,
			@RequestParam("grandma") String grandma,@RequestParam("dadGrandpa") String dadGrandpa,
			@RequestParam("momGrandpa") String momGrandpa,@RequestParam("dadGrandma") String dadGrandma,
			@RequestParam("momGrandma") String momGrandma,@RequestParam("lot") String lot,@RequestParam("description") String description){
		
				String ImageName = id+"-pic.jpg";
				String ImageName2 = id+"-pidegree.jpg";
				String GetUser = (String)session.getAttribute("username");
				List<Member> memberlist = memberService.getchkuser(GetUser);
				  CattleStrain cattlestrain = cattlestrainService.getCattleStrain(id);
		/*		int Iduser;
				List<Member> memberlist = memberService.getchkuser(GetUser);
				for(Member member : memberlist){
					Iduser = member.getId();
				}*/
				if (!file.isEmpty()) {
		            try {  
		            	byte[] bytes = file.getBytes();
		         
		            	
		            	String path = context.getRealPath("")+File.separator+"img/pic_cattle/cattle_strain";
		            	 File pic = new File(path);
		            	 String cow_img = pic.getAbsolutePath()+File.separator+ImageName;
		            	 
		            	  
		            	 
		            	  
		            	  if (!pic.exists())
		                  {   pic.mkdirs();}
		                  BufferedOutputStream stream =
		                          new BufferedOutputStream(new FileOutputStream(new File(cow_img)));
		                
		                  stream.write(bytes);
		                  stream.close();
		                  
		                  cattlestrain.setPic(ImageName);
		                  
				            } catch (Exception e) {
		  		            	
		  		            	return "CertificateofCattle/page/error";
		  		            }
		            }
				
				
		                  
		                  if (!file2.isEmpty()) {
		                	  try { 
		                		byte[] bytes2 = file2.getBytes();
								 String path2 = context.getRealPath("")+File.separator+"img/pic_pedigree/cattle_strain";
		                		  File ped = new File(path2);
		                		  String cow_ped = ped.getAbsolutePath()+File.separator+ImageName2;
				
				            	  if (!ped.exists())
				                  {   ped.mkdirs();}
				            	   BufferedOutputStream stream3 =
					                          new BufferedOutputStream(new FileOutputStream(new File(cow_ped)));
					               
					                  stream3.write(bytes2);
					                
					                  stream3.close();
					                  cattlestrain.setPedigree(ImageName2);
					                  System.out.println(cow_ped);
		                
		            } catch (Exception e) {
		            	
		            	return "CertificateofCattle/page/error";
		            }
				}
					
					cattlestrain.setBirthday(birthday);
	                cattlestrain.setColor(color);
	                cattlestrain.setFather(dad);
	                cattlestrain.setGene(gene);
	                cattlestrain.setMother(mom);
	                cattlestrain.setName(name);
				    cattlestrain.setPrivateNo(privateNo);
	                cattlestrain.setSex(gender);
	                cattlestrain.setGrandfather(grandfather);//�?ู�?
	                cattlestrain.setGrandmother(grandmother);//ย�?า
	                cattlestrain.setDadGrandfather(dadGrandfather);//�?�?อ�?ู�?
	                cattlestrain.setDadGrandmother(dadGrandmother);//�?�?อย�?า
	                cattlestrain.setMomGrandfather(momGrandfather);//�?ม�?�?ู�?
	                cattlestrain.setMomGrandmother(momGrandmother);//�?ม�?ย�?า
	                cattlestrain.setGrandpa(grandpa);//ตา
	                cattlestrain.setGramdma(grandma);//ยาย
	                cattlestrain.setDadGrandpa(dadGrandpa);//�?�?อตา
	                cattlestrain.setDadGrandma(dadGrandma);//�?�?อยาย
	                cattlestrain.setMomGrandpa(momGrandpa);//�?ม�?ตา
	                cattlestrain.setMomGrandma(momGrandma);//�?ม�?ยาย
	                cattlestrain.setWeightBirth(wborn);
	                cattlestrain.setWeightWean(wwean);
	                cattlestrain.setWeightYear(wyear);
	                cattlestrain.setLot(lot);
	                cattlestrain.setRateMilk(rateMilk);
	                cattlestrain.setDescription(description);

	                
              
                 cattlestrainService.edit(cattlestrain);
               

         		String page = "Edit2?id="+cattlestrain.getId().toString(); 
         		map.put("page", page);
		
		return "CertificateofCattle/page/success";
	
}
	
	
	
	
	
	
	
	@RequestMapping("/ViewCow3")
	public ModelAndView ViewCowkh(HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
	
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Member member = memberService.getMemberByUser(username);

		
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", geneService.getAllGene());
		map.put("car", cattlefattenService.getAllCattleFatten());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/cow/viewcow3");
		return model;
	}
	
	
	@RequestMapping("/addCow3")
	public ModelAndView addCow3(HttpSession session,Map<String, Object> map){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("userlist", memberService.getchkuser(username));
		map.put("colorlist", colorService.getAllColor());
		map.put("genelist", geneService.getAllGene());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/cow/addcow3");
		return model;
	}
	
	
	

	@RequestMapping(value="saveCow3",method = RequestMethod.POST)
	public String saveCow3(HttpSession session,Map<String, Object> map,@RequestParam( value="file1", required=false) MultipartFile file,
			@RequestParam("num") int num,@RequestParam("lot") String lot,@RequestParam("gene") String gene
			,@RequestParam("weight") float weight){
		String GetUser = (String)session.getAttribute("username");
		List<Member> memberlist = memberService.getchkuser(GetUser);
		
		if (!file.isEmpty()) {
            try {  
            	CattleFatten cattlefatten = new CattleFatten();
        		cattlefatten.setCattleStatus(1);
        		cattlefatten.setGene(gene);
        		cattlefatten.setLot(lot);
        		cattlefatten.setQuantity(num);
        		cattlefatten.setWeight(weight);
        		cattlefatten.setCommen("-");
        		for(Member member:memberlist){
        			int userId = member.getId();
        			cattlefatten.setMember(memberService.getMember(userId));
        		}
        		cattlefattenService.add(cattlefatten);
        		
        		
        		String ImageName = cattlefatten.getId()+"-pic.jpg";
            	byte[] bytes = file.getBytes();
         
            	
            	
            	String path = context.getRealPath("")+File.separator+"img/pic_cattle/cattle_fatten";
           	 File pic = new File(path);
           	 String cow_img = pic.getAbsolutePath()+File.separator+ImageName;
            	 
            	
            	  
            	  if (!pic.exists())
                  {   pic.mkdirs();}
                  BufferedOutputStream stream =
                          new BufferedOutputStream(new FileOutputStream(new File(cow_img)));

                  stream.write(bytes);
                
                  stream.close();
           
               
                  int x =cattlefatten.getId();
              	CattleFatten cattlefatten1 = cattlefattenService.getCattleFatten(x);
              	cattlefatten1.setPic(ImageName);
              	cattlefattenService.edit(cattlefatten1);
                  
            } catch (Exception e) {
            	
            	return "CertificateofCattle/page/error";
            }
           
		}
		
      	
         map.put("page","addCow3");
         	
		  return "CertificateofCattle/page/success";
		
	}
	
	
	
	@RequestMapping("/Edit3")
	public ModelAndView Edit3(HttpSession session,Map<String, Object> map,@RequestParam("id") int id){
		String username = (String)session.getAttribute("username");
		if(username==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		Member member = memberService.getMemberByUser(username);
		map.put("cowfattenlist", cattlefattenService.getAllCattleFatten(id));
		map.put("userlist", memberService.getchkuser(username));
		map.put("genelist", geneService.getAllGene());
		map.put("colorlist", colorService.getAllColor());
		ModelAndView model = new ModelAndView("CertificateofCattle/page/cow/edit_fatten");
		return model;
	}
	
	
	@RequestMapping(value="saveEdit3",method = RequestMethod.POST)
	public String saveEdit3(HttpSession session,Map<String, Object> map,@RequestParam( value="file1", required=false) MultipartFile file,
			@RequestParam("num") int num,@RequestParam("lot") String lot,@RequestParam("gene") String gene
			,@RequestParam("weight") float weight,@RequestParam("id") int id){
		String GetUser = (String)session.getAttribute("username");
		List<Member> memberlist = memberService.getchkuser(GetUser);
		CattleFatten cattlefatten = cattlefattenService.getCattleFatten(id);
		if (!file.isEmpty()) {
            try {  
	
        		String ImageName = id+"-pic.jpg";
            	byte[] bytes = file.getBytes();
         
            	
            	String path = context.getRealPath("")+File.separator+"img/pic_cattle/cattle_fatten";
           	 File pic = new File(path);
           	 String cow_img = pic.getAbsolutePath()+File.separator+ImageName;
        
            	  
            	  if (!pic.exists())
                  {   pic.mkdirs();}
                  BufferedOutputStream stream =
                          new BufferedOutputStream(new FileOutputStream(new File(cow_img)));
                  stream.write(bytes);
                   stream.close();
           
               
               
             
              	cattlefatten.setPic(ImageName);
           
                  
            } catch (Exception e) {
            	
            	return "CertificateofCattle/page/error";
            }
		}
		
		

		cattlefatten.setGene(gene);
		cattlefatten.setLot(lot);
		cattlefatten.setQuantity(num);
		cattlefatten.setWeight(weight);
		cattlefattenService.edit(cattlefatten);
		
		
 		String page = "Edit3?id="+cattlefatten.getId().toString(); 
 		map.put("page", page);
		  return "CertificateofCattle/page/success";
		
	}
	
	
	
	@RequestMapping(value="/Del_Cow1")
	public String Del_Cow1(HttpSession session,Map<String, Object> map,@RequestParam("Did") int id){
	
	cattleshowService.delete(id);
	return "redirect:ViewCow1";
	}
	
	
	@RequestMapping(value="/Del_Cow2")
	public String Del_Cow2(HttpSession session,Map<String, Object> map,@RequestParam("Did") int id){
	
	cattlestrainService.delete(id);
	return "redirect:ViewCow2";
	}
	
	
	@RequestMapping(value="/Del_Cow3")
	public String Del_Cow3(HttpSession session,Map<String, Object> map,@RequestParam("Did") int id){
	
	cattlefattenService.delete(id);
	return "redirect:ViewCow3";
	}
	
	@RequestMapping(value="/Del_fattenlist")
	public String Del_fattenlist(HttpSession session,Map<String, Object> map,@RequestParam("Did") int id,@RequestParam("wId") int wId){
	
	fattenlistService.delete(id);
	return "redirect:fatten_list?id="+wId;
	}
	
/* **************************findcow****/	
//map for calculator age (ADMIN)
/*	private List<Map<String, ?>> AdminfindCowShow(){
		List<Map<String, ?>> CowShowMap = new ArrayList<Map<String, ?>>();
		List<CattleShow> cowlist = cattleshowService.getAllCattleShow();
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
		private List<Map<String, ?>> MemberfindCowShow(int userId){
			List<Map<String, ?>> CowShowMap = new ArrayList<Map<String, ?>>();
			List<CattleShow> cowlist = cattleshowService.getAllCattleShowByUser(userId);
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
		private List<Map<String, ?>> AdminfindCowStrain(){
			List<Map<String, ?>> CowStrainMap = new ArrayList<Map<String, ?>>();
			List<CattleStrain> cowlist = cattlestrainService.getAllCattleStrain();
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
		private List<Map<String, ?>> MemberfindCowStrain(int userId){
			List<Map<String, ?>> CowStrainMap = new ArrayList<Map<String, ?>>();
			List<CattleStrain> cowlist = cattlestrainService.getAllCattleStrainByUser(userId);
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
		}*/
	
}
