package farm3.spring.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

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

import farm3.spring.model.SemenOrder;
import farm3.spring.model.Farm;
import farm3.spring.model.Member;
import farm3.spring.model.Color;
import farm3.spring.model.GroupMedicine;
import farm3.spring.model.Breed;
import farm3.spring.model.Sync;
import farm3.spring.model.TypeAlert;
import farm3.spring.model.TypeSync;
import farm3.spring.model.Semen;

import farm3.spring.service.ColorService;
import farm3.spring.service.GroupMedicineService;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;
import farm3.spring.service.SemenOrderService;
import farm3.spring.service.BreedService;
import farm3.spring.service.BucketService;
import farm3.spring.service.SyncService;
import farm3.spring.service.TypeAlertService;
import farm3.spring.service.TypeSyncService;
import farm3.spring.service.FarmService;
import farm3.spring.service.SemenService;

@Controller
public class HealthCareSemenController {

	@Autowired
	private SemenService semenservice;
	@Autowired
	private BucketService bucketservice;
	@Autowired
	private MemberService memberService;
	@Autowired
	private SemenOrderService semenorderservice;

	
	@RequestMapping("/view_semen_Health") // ¢éÍÁÙÅ¹éÓàª×éÍ
	public String view_semen(HttpSession session, Map<String, Object> map) {

		String sessionUsername = (String) session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Semen semen = new Semen();
		map.put("semen", semenservice.getAllSemen());
		return "HealthCare/semen_bucket/view_semen";
	}
	@RequestMapping("/order_semen") // สั่งน้ำเชื้อ/ถังเก้บน้ำเชื้อ
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
		ModelAndView model = new ModelAndView("HealthCare/semen_bucket/order_semen");
		return model;

	}
	@RequestMapping("/ordered_semen") // สั่งน้ำเชื้อ/ถังเก้บน้ำเชื้อ
	public String ordered_semen(@ModelAttribute SemenOrder semenorder) {
		semenorderservice.add(semenorder);
		return "redirect:order_semen";
	}
	@RequestMapping("cancle_order_semen")
	public String cancle_order_semen(@RequestParam int id){
		semenorderservice.delete(id);
		return "redirect:order_semen";
	}
	




}