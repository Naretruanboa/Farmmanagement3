package farm3.spring.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.persistence.Entity;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import farm3.spring.model.Bucket;
import farm3.spring.model.RawMaterial;
import farm3.spring.model.Semen;
import farm3.spring.model.SemenImport;
import farm3.spring.model.SemenOrder;
import farm3.spring.model.SemenRelease;

import farm3.spring.service.BreedService;
import farm3.spring.service.BucketService;
import farm3.spring.service.ColorService;
import farm3.spring.service.MemberService;
import farm3.spring.service.SemenImportService;
import farm3.spring.service.SemenOrderService;
import farm3.spring.service.SemenReleaseService;
import farm3.spring.service.SemenService;
import farm3.spring.service.TypeBucketService;
import farm3.string.Util;

@Controller
public class StorehouseSemenbucketController {
	@Autowired
	private TypeBucketService typebucketservice;
	@Autowired
	private SemenImportService semenimportservice;
	@Autowired
	private SemenReleaseService semenreleaseservice;
	@Autowired
	private SemenOrderService semenorderservice;
	@Autowired
	private MemberService memberService;
	@Autowired
	private BucketService bucketservice;
	@Autowired
	private BreedService breedservice;
	@Autowired
	private SemenService semenservice;
	@Autowired
	private ColorService colorservice;

	@RequestMapping("/stock_semen") // ˹�Ҥ���ѧ�������
	public ModelAndView stock_semen(HttpSession session, Map<String, Object> map) {

		String sessionUsername = (String) session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Semen semen = new Semen();
		map.put("semen", semenservice.getAllSemen());
		ModelAndView model = new ModelAndView("Storehouse/page/semen_bucket/stock_semen");
		return model;
	}
	@RequestMapping("/import_semen") // ����ҹ������
	public ModelAndView import_semen(HttpSession session, Map<String, Object> map) {

		String sessionUsername = (String) session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("semen", semenservice.getAllSemen());
		map.put("bucket", bucketservice.getAllBucket());
		map.put("listimport", semenimportservice.getAllSemenImport());
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String re = sdfDate.format(date);
		map.put("day", re);
		ModelAndView model = new ModelAndView("Storehouse/page/semen_bucket/import_semen");
		return model;
		
	}
	
	@RequestMapping(value="imported_semen",method = RequestMethod.POST)
	public String imported_semen(@RequestParam("memberid") int memberid,
			@RequestParam("Semenid") int Semenid,
			@RequestParam("beforequantity") int beforeQuantity,
			@RequestParam("quantity") int quantity,
			@RequestParam("price") int price,
			@RequestParam("day") String day){
		
		/*SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
	    Date now = new Date();
	    String dayimport = sdfDate.format(now);
	    String newday;
		if(day==""){
			newday=dayimport;
		}else{
			newday=day;
		}	*/    
		 int total = beforeQuantity + quantity;
		 Semen sem = semenservice.getSemen(Semenid);
		 sem.setQuantity(total);
		 sem.setStatusalert(0);
		 semenservice.edit(sem);
		 
		 SemenImport semenimport = new SemenImport();
		 semenimport.setMember(memberService.getMember(memberid));
		 semenimport.setDay(day);
		 semenimport.setSemen(semenservice.getSemen(Semenid));
		 semenimport.setBeforeQuantity(beforeQuantity);
		 semenimport.setQuantity(quantity);
		 semenimport.setPrice(price);
		 semenimportservice.add(semenimport);
		return "redirect:import_semen";
	}
	@RequestMapping("cancle_import_semen")
	public String cancle_import_semen(@RequestParam("id") int id){
		SemenImport seim = semenimportservice.getSemenImport(id);
		int semenid = seim.getSemen().getId();
		Semen semen = semenservice.getSemen(semenid);
		
		int quantityStock = semen.getQuantity();
		int quantityimport = seim.getQuantity();
		semen.setQuantity(quantityStock-quantityimport);
		semenservice.edit(semen);
		semenimportservice.delete(id);
		return "redirect:import_semen";
	}
	
	@RequestMapping("/listquantitysemen") //listquantity semen
	public @ResponseBody String listRawUnit(Model model,@RequestParam int id) {
		Semen se = semenservice.getSemen(id);
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = Util.encodeUnicode(gson.toJson(se));
	 return json;
	}
	@RequestMapping("/release_semen") // �ԡ�������
	public ModelAndView release_semen(HttpSession session, Map<String, Object> map) {

		String sessionUsername = (String) session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("semen", semenservice.getAllSemenForRelease());
		map.put("listrelease", semenreleaseservice.getAllSemenRelease());
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String re = sdfDate.format(date);
		map.put("day", re);
		ModelAndView model = new ModelAndView("Storehouse/page/semen_bucket/release_semen");
		return model;

	}
	
	@RequestMapping("Saverelease_semen")
	public String Saverelease_semen(@RequestParam("id") int id,
									@RequestParam("day") String day,
									@RequestParam("quantity") int quantity,
									Map<String, Object> map,HttpSession session)
	{
		
		String sessionUsername = (String)session.getAttribute("username");
		int memberid = memberService.getMemberByUser(sessionUsername).getId(); 
		Semen semen = semenservice.getSemen(id);
		int quantitysemen = semenservice.getSemen(id).getQuantity();
		int total = quantitysemen - quantity;
		semen.setQuantity(total);
		semenservice.edit(semen);
		
		SemenRelease semenrelease = new SemenRelease();
		semenrelease.setMember(memberService.getMember(memberid));
		semenrelease.setDay(day);
		semenrelease.setQuantity(quantity);
		semenrelease.setSemen(semenservice.getSemen(id));
		semenreleaseservice.add(semenrelease);
		return "redirect:release_semen";
		
	}
	@RequestMapping("cancle_release_semen")
	public String cancle_release_semen(@RequestParam("id") int id){
		SemenRelease semenre = semenreleaseservice.getSemenRelease(id);
		int semenid = semenre.getSemen().getId();
		Semen semem = semenservice.getSemen(semenid);
		int quantityrelease = semenre.getQuantity();
		int quantitystock = semem.getQuantity();
		semem.setQuantity(quantityrelease+quantitystock);
		semenservice.edit(semem);
		semenreleaseservice.delete(id);
		//System.out.println(quantityrelease+""+quantitystock);
		return "redirect:release_semen";
	}

	/*@RequestMapping("/order_semen") // ��觹������/�ѧ�麹������
	public ModelAndView order_semen(HttpSession session, Map<String, Object> map) {

		String sessionUsername = (String) session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("semen", semenservice.getAllSemen());
		SemenOrder ordersemen = new SemenOrder();
		map.put("ordersemen",ordersemen );
		map.put("listorder", semenorderservice.getAllSemenOrder());
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String re = sdfDate.format(date);
		map.put("day", re);
		ModelAndView model = new ModelAndView("Storehouse/page/semen_bucket/order_semen");
		return model;

	}
	@RequestMapping("/ordered_semen") // ��觹������/�ѧ�麹������
	public String ordered_semen(@ModelAttribute SemenOrder semenorder) {
		semenorderservice.add(semenorder);
		return "redirect:order_semen";
	}
	@RequestMapping("cancle_order_semen")
	public String cancle_order_semen(@RequestParam int id){
		semenorderservice.delete(id);
		return "redirect:order_semen";
	} */
	@RequestMapping("/addnitrogen_bucket") // ������ਹ����
	public ModelAndView addnitrogen_bucket(HttpSession session, Map<String, Object> map) {

		String sessionUsername = (String) session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Bucket bucket = new Bucket();
		map.put("bucket", bucketservice.getBucketForsaveSemen());
		map.put("Nitrogen", bucketservice.getBucketForAddNitrogen());
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String day = sdfDate.format(date);
		map.put("day", day);
		ModelAndView model = new ModelAndView("Storehouse/page/semen_bucket/addnitrogen_bucket");
		return model;
	
	}
	@RequestMapping("/Saveaddnitrogen_bucket")
	public String Saveaddnitrogen_bucket(@RequestParam("id") int idd,
										@RequestParam("dayinN") String dayin,
										@RequestParam("dayExpN") String dayexp
										){
		Bucket bucket = bucketservice.getBucket(idd);
		bucket.setDayInN(dayin);
		bucket.setDayExpN(dayexp);
		bucketservice.edit(bucket);
		
		return "redirect:addnitrogen_bucket";
	}

	@RequestMapping("/view_semen") // �����Ź������
	public ModelAndView view_semen(HttpSession session, Map<String, Object> map) {

		String sessionUsername = (String) session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("semen", semenservice.getAllSemen());
		ModelAndView model = new ModelAndView("Storehouse/page/semen_bucket/view_semen");
		return model;
	}

	@RequestMapping("/add_semen") // ŧ����¹�������
	public ModelAndView add_semen(HttpSession session, Map<String, Object> map) {

		String sessionUsername = (String) session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Semen semen = new Semen();
		map.put("semen", semen);
		map.put("breed", breedservice.getAllBreed()); // dropdown list ��¾ѹ���
		map.put("bucket", bucketservice.getBucketForsaveSemen());
		map.put("color", colorservice.getAllColor());
		ModelAndView model = new ModelAndView("Storehouse/page/semen_bucket/add_semen");
		return model;
		
	}
	@ResponseBody
	@RequestMapping(value="chkSemen")
	public String chkSemen(@RequestParam("namecattle") String nameCattle){
		String msg ="yes";
		int chk = semenservice.getSemenByNameCattle(nameCattle).size();
		if(chk>0){
			msg="no";
		}
		return msg; 
	}
	@ResponseBody // add �����Ź��������кѹ�֡
	@RequestMapping(value = "addsemen", method = RequestMethod.POST)
	public String addsemen(@ModelAttribute Semen Semen, Map<String, Object> map) {
		semenservice.add(Semen);
		return null;
	}

	@RequestMapping("/view_bucket") // �����Ŷѧ�纹������
	public ModelAndView view_bucket(HttpSession session, Map<String, Object> map) {

		String sessionUsername = (String) session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Bucket bucket = new Bucket();
		map.put("bucket", bucketservice.getAllBucket());
		ModelAndView model = new ModelAndView("Storehouse/page/semen_bucket/view_bucket");
		return model;

	}

	@RequestMapping("/add_bucket") // ŧ����¹�ѧ�纹������
	public ModelAndView add_bucket(HttpSession session, Map<String, Object> map) {

		String sessionUsername = (String) session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Bucket bucket = new Bucket();
		map.put("bucket", bucket);
		map.put("semen", semenservice.getAllSemen());
		map.put("type", typebucketservice.getAllTypeBucket());
		ModelAndView model = new ModelAndView("Storehouse/page/semen_bucket/add_bucket");
		return model;

	}

	@ResponseBody // add �����Ŷѧ�纹����������㹰ҹ������
	@RequestMapping(value = "addbucket", method = RequestMethod.POST)
	public String addbucket(@ModelAttribute Bucket Bucket, Map<String, Object> map) {
		bucketservice.add(Bucket);
		return null;
	}

	// �������---------------------------------------------------------------
	@RequestMapping("/edit_semen")
	public ModelAndView edit_semen(HttpSession session, Map<String, Object> map, @RequestParam int id) {

		String sessionUsername = (String) session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Semen semen = semenservice.getSemen(id);
		map.put("semen", semen);
		map.put("breed", breedservice.getAllBreed());
		map.put("bucket", bucketservice.getAllBucket());
		map.put("color", colorservice.getAllColor());
		ModelAndView model = new ModelAndView("Storehouse/page/semen_bucket/edit_semen");
		return model;
	
	}

	@RequestMapping("/edited_semen")
	public ModelAndView edited_semen(HttpSession session, Map<String, Object> map, @ModelAttribute Semen semen) {
		
		semenservice.edit(semen);
		ModelAndView model = new ModelAndView("Storehouse/page/semen_bucket/view_bucket");
		return model;
	}

	@RequestMapping("/del_semen")
	public String del_semen(HttpSession session, Map<String, Object> map, @RequestParam int id) {
		String sessionUsername = (String) session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		semenservice.delete(id);
		return "redirect:view_semen";
	}

	// �ѧ�纹������---------------------------------------------------------------
	@RequestMapping("/edit_bucket")
	public ModelAndView edit_bucket(HttpSession session, Map<String, Object> map, @RequestParam int id) {

		String sessionUsername = (String) session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Bucket bucket = bucketservice.getBucket(id);
		map.put("bucket", bucket);
		map.put("type", typebucketservice.getAllTypeBucket());
		ModelAndView model = new ModelAndView("Storehouse/page/semen_bucket/edit_bucket");
		return model;
	}

	@RequestMapping("/edited_bucket")
	public String edited_bucket(HttpSession session, Map<String, Object> map, @ModelAttribute Bucket bucket) {

		String sessionUsername = (String) session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		bucketservice.edit(bucket);
		return "redirect:view_bucket";
	}

	@RequestMapping("/del_bucket")
	public String del_bucket(HttpSession session, Map<String, Object> map, @RequestParam int id) {
		String sessionUsername = (String) session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		bucketservice.delete(id);
		return "redirect:view_bucket";
	}

}
