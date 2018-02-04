package farm3.spring.controller;

import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.DateFormatter;
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

import farm3.spring.model.Tool;
import farm3.spring.model.ToolBorrow;
import farm3.spring.model.ToolBroken;
import farm3.spring.model.ToolImport;
import farm3.spring.model.ToolOrder;
import farm3.spring.model.ToolRelease;
import farm3.spring.service.MemberService;
import farm3.spring.service.StatusService;
import farm3.spring.service.ToolBorrowService;
import farm3.spring.service.ToolBrokenService;
import farm3.spring.service.ToolImportService;
import farm3.spring.service.ToolOrderService;
import farm3.spring.service.ToolReleaseService;
import farm3.spring.service.ToolService;
import farm3.spring.service.TypeToolService;
import farm3.spring.service.UnitToolService;
import farm3.string.Util;


@Controller
public class StorehouseToolController {
	@Autowired
	private ToolBrokenService toolbrokenservice;
	@Autowired
	private StatusService statusservice;
	@Autowired
	private ToolImportService toolimportservice;
	@Autowired
	private ToolOrderService toolorderservice;
	@Autowired
	private ToolBorrowService toolborrowservice;
	@Autowired
	private ToolReleaseService toolreleaseservice;
	@Autowired
	private MemberService memberService;
	@Autowired
	private ToolService toolservice;
	@Autowired
	private TypeToolService typetoolservice;
	@Autowired
	private UnitToolService unittoolservice;
	
	@RequestMapping("save_decrease_tool")
	public String save_decrease_tool(@RequestParam("id") int id,
			@RequestParam("quantity_decrease") int quantity_decrease){
		Tool tool = toolservice.getTool(id);
		int quantityTool = toolservice.getTool(id).getQuantity();		
		int totalquantity = quantityTool - quantity_decrease;
		tool.setQuantity(totalquantity);
		toolservice.edit(tool);
		return "redirect:stock_tool";
	}
	
	@RequestMapping("/stock_tool") 
	public ModelAndView stock_tool(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Tool tool = new Tool();
		map.put("tool", toolservice.getAllTool());
		//map.put("typetool", value)
		ModelAndView model = new ModelAndView("Storehouse/page/tool/stock_tool");
		return model;
		
	}
	@RequestMapping("/Tool_broken")
	public ModelAndView Tool_broken(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("member", memberService.getAllMember());
		map.put("toolbroken", toolbrokenservice.getSendToolBroken());
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String re = sdfDate.format(date);
		map.put("day", re);
		ModelAndView model = new ModelAndView("Storehouse/page/tool/Tool_broken");
		return model;
		
	}
	@RequestMapping("save_Tool_broken")
	public String save_Tool_broken(@RequestParam("id") int id,
			@RequestParam("memberid") int memberid,
			@RequestParam("daybroken") String daybroken,
			@RequestParam("quantity") int quantity,
			Map<String, Object> map,HttpSession session)
	{
		
		
		Tool tool = toolservice.getTool(id);
		int quantityTool = toolservice.getTool(id).getQuantity();
		int quantityToolBroken = toolservice.getTool(id).getQuantityBroken();
		
		int totalquantity = quantityTool - quantity; 
		int totalquantityBroken = quantityToolBroken + quantity; 
		
		 tool.setQuantity(totalquantity);
		 tool.setQuantityBroken(totalquantityBroken);
		 toolservice.edit(tool);
		 
		ToolBroken toolbroken = new ToolBroken();
		toolbroken.setMember(memberService.getMember(memberid));
		toolbroken.setTool(toolservice.getTool(id));
		toolbroken.setQuantity(quantity);
		toolbroken.setDayBroken(daybroken);
		toolbroken.setStatus(statusservice.getStatus(5));
		toolbrokenservice.add(toolbroken);
		
		return "redirect:Tool_broken";
	}
	@RequestMapping("return_tool_broken")
	public String return_tool_broken(@RequestParam("id") int id){
		ToolBroken toolbroken = toolbrokenservice.getToolBroken(id);
		int toolid = toolbroken.getTool().getId();
		Tool tool = toolservice.getTool(toolid);
		
		int quantityToolBroken = tool.getQuantityBroken(); 
		int quantityTool = toolservice.getTool(toolid).getQuantity(); 
		int quantityBroken =toolbroken.getQuantity();
		
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String day = sdfDate.format(date);
		
		tool.setQuantity(quantityTool+quantityBroken);
		tool.setQuantityBroken(quantityToolBroken-quantityBroken);
		toolservice.edit(tool);
		toolbroken.setStatus(statusservice.getStatus(6));
		toolbroken.setDayReturn(day);
		toolbrokenservice.edit(toolbroken);
		
		
		return "redirect:Tool_broken";
	}
	@RequestMapping("cancle_tool_broken")
	public String cancle_tool_broken(@RequestParam("id") int id){
		ToolBroken toolbroken = toolbrokenservice.getToolBroken(id);
		int toolid = toolbroken.getTool().getId();
		Tool tool = toolservice.getTool(toolid);
		
		int quantityToolBroken = tool.getQuantityBroken(); 
		int quantityTool = toolservice.getTool(toolid).getQuantity(); 
		int quantityBroken =toolbroken.getQuantity();
		
		tool.setQuantity(quantityTool+quantityBroken);
		tool.setQuantityBroken(quantityToolBroken-quantityBroken);
		toolservice.edit(tool);
		
		toolbrokenservice.delete(id);
		
		return "redirect:Tool_broken";
	}
	
	@RequestMapping("/borrow_tool")
	public ModelAndView borrow_tool(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("tool", toolservice.getAllToolForBorrow());
		map.put("listBrrow", toolborrowservice.getToolBorrow());
		map.put("member", memberService.getAllMember());
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String re = sdfDate.format(date);
		map.put("day", re);
		ModelAndView model = new ModelAndView("Storehouse/page/tool/borrow_tool");
		return model;
		
	}
	@RequestMapping("SaveBorrow_tool")
	public String SaveBrrow_tool(@RequestParam("id") int id,
			@RequestParam("memberid") int memberid,
			@RequestParam("dayborrow") String dayborrow,
			@RequestParam("dayreturn") String dayreturn,
			@RequestParam("quantity") int quantity,
			Map<String, Object> map,HttpSession session)
	{
		
		
		Tool tool = toolservice.getTool(id);
		int quantityTool = toolservice.getTool(id).getQuantity();
		int quantityToolBorrow = toolservice.getTool(id).getQuantityBorrow();
		
		int totalquantity = quantityTool - quantity; //update qrt 
		int totalquantityBorrow = quantityToolBorrow + quantity; //update qrt borrow
		 tool.setQuantity(totalquantity);
		 tool.setQuantityBorrow(totalquantityBorrow);
		 toolservice.edit(tool);
		 
		 ToolBorrow toolborrow = new ToolBorrow();
		 toolborrow.setMember(memberService.getMember(memberid));
		 toolborrow.setTool(toolservice.getTool(id));
		 toolborrow.setQuantity(quantity);
		 toolborrow.setDayBorrow(dayborrow);
		 toolborrow.setDayReturn(dayreturn);
		 toolborrow.setStatus(statusservice.getStatus(1));
		 toolborrowservice.add(toolborrow);
		
		return "redirect:borrow_tool";
	}
	@RequestMapping("return_tool")
	public String return_tool(@RequestParam("id") int id){
		
		ToolBorrow toolborrow = toolborrowservice.getToolBorrow(id); //id of tool borrow
		int toolid = toolborrow.getTool().getId(); //get id tool at tooborrow
		
		Tool tool = toolservice.getTool(toolid);
		int quantityBrrowatTool = tool.getQuantityBorrow(); 
		int quantityTool = toolservice.getTool(toolid).getQuantity(); 
		int quantityBorrow = toolborrow.getQuantity();
		
		tool.setQuantity(quantityTool+quantityBorrow);
		tool.setQuantityBorrow(quantityBrrowatTool-quantityBorrow);
		toolservice.edit(tool);
		toolborrow.setStatus(statusservice.getStatus(2));
		toolborrowservice.edit(toolborrow);
		
		return "redirect:borrow_tool";
	}
	@RequestMapping("cancle_borrow_tool")
	public String cancle_borrow_tool(@RequestParam("id") int id){
		//System.out.println(id);
		ToolBorrow toolborrow = toolborrowservice.getToolBorrow(id); //id of tool borrow
		int toolid = toolborrow.getTool().getId(); //get id tool at tooborrow
		Tool tool = toolservice.getTool(toolid);
		
		int quantityBrrowatTool = tool.getQuantityBorrow(); 
		int quantityTool = toolservice.getTool(toolid).getQuantity(); 
		int quantityBorrow = toolborrow.getQuantity();
		
		tool.setQuantity(quantityTool+quantityBorrow);
		tool.setQuantityBorrow(quantityBrrowatTool-quantityBorrow);
		toolservice.edit(tool);
		toolborrowservice.delete(id);
		return "redirect:borrow_tool";
	}
	
	@RequestMapping("/import_tool") 
	public ModelAndView import_tool(HttpSession session,Map<String, Object> map) {
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ToolImport toolimport = new ToolImport();
		map.put("Toolimport", toolimport); 
		
		map.put("listtoolimport",toolimportservice.getAllToolImport());
		map.put("tool", toolservice.getAllTool());
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String re = sdfDate.format(date);
		map.put("day", re);
		//System.out.println(re);
		/*Calendar calendar = new GregorianCalendar();
		int year = calendar.get(Calendar.YEAR);
		int month = calendar.get(Calendar.MONTH); // Jan = 0, dec = 11
		int dayOfMonth = calendar.get(Calendar.DAY_OF_MONTH);
		int hour = calendar.get(Calendar.HOUR); // 12 hour clock
		int hourOfDay = calendar.get(Calendar.HOUR_OF_DAY); // 24 hour clock
		int minute = calendar.get(Calendar.MINUTE);
		int second = calendar.get(Calendar.SECOND);
		int ampm = calendar.get(Calendar.AM_PM); //0 = AM , 1 = PM
		String day = year+"-"+month+"-"+dayOfMonth;
		System.out.println(day);
		map.put("day", day);*/
		ModelAndView model = new ModelAndView("Storehouse/page/tool/import_tool");
		return model;
	
	}
	@RequestMapping(value="imported_tool",method = RequestMethod.POST)
	public String imported_tool(@RequestParam("memberid") int memberid,
								@RequestParam("toolid") int toolid,
								@RequestParam("beforeQuantity") int beforeQuantity,
								@RequestParam("quantity") int quantity,
								@RequestParam("day") String day,
								@RequestParam("import_") String import_,
								@RequestParam("place") String place,
								Map<String, Object> map ){
		  int total = beforeQuantity + quantity;
		  Tool tool = toolservice.getTool(toolid);
		  tool.setQuantity(total);
		  tool.setStatusalert(0);
		  toolservice.edit(tool);
		//System.out.println(total);
		ToolImport toolimport = new ToolImport();
		toolimport.setTool(toolservice.getTool(toolid));
		toolimport.setMember(memberService.getMember(memberid));
		toolimport.setBeforeQuantity(beforeQuantity);
		toolimport.setQuantity(quantity);
		toolimport.setDay(day);
		toolimport.setImportTool(import_);
		toolimport.setPlace(place);
		toolimportservice.add(toolimport);
		return "redirect:import_tool";
	}
	@RequestMapping("cancle_import_tool")
	public String cancle_import_tool(@RequestParam("id") int id){
		ToolImport toolim = toolimportservice.getToolImport(id);
		int toolid = toolim.getTool().getId();
		Tool tool = toolservice.getTool(toolid);
		
		int quantityStock = tool.getQuantity();
		int quantityimport = toolim.getQuantity();
		tool.setQuantity(quantityStock-quantityimport);
		toolservice.edit(tool);
		toolimportservice.delete(id);
		return "redirect:import_tool";
	}
	@RequestMapping("/listToolUnit") 
	public @ResponseBody String listToolUnit(Model model,@RequestParam int id) {
		Tool tool = toolservice.getTool(id);
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String json = Util.encodeUnicode(gson.toJson(tool));
		return json;
	}
	@RequestMapping("/order_tool") 
	public ModelAndView order_tool(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		ToolOrder toolorder = new ToolOrder();
		map.put("Toolorder", toolorder);
		
		map.put("listtoolorder",toolorderservice.getAllToolOrder());
		map.put("tool", toolservice.getAllTool());
		
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String re = sdfDate.format(date);
		map.put("day", re);
		ModelAndView model = new ModelAndView("Storehouse/page/tool/order_tool");
		return model;
		
	}
	
	@RequestMapping("ordered_tool") 
	public String ordered_tool(@ModelAttribute ToolOrder toolorder){
		toolorderservice.add(toolorder);
		return "redirect:order_tool";
	}
	@RequestMapping("cancle_order_tool") 
	public String cancle_order_tool(@RequestParam int id){
		toolorderservice.delete(id);
		return "redirect:order_tool";
	}
	
	@RequestMapping("/release_tool")
	public ModelAndView release_tool(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		map.put("toolrelease", toolservice.getAllToolForRelease());
		map.put("listrelease", toolreleaseservice.getAllToolRelease());
		Date date = new Date();
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
	    String re = sdfDate.format(date);
		map.put("day", re);
		ModelAndView model = new ModelAndView("Storehouse/page/tool/release_tool");
		return model;
		
	}
	@RequestMapping("/Saverelease_tool")
	public String Saverelease_tool(@RequestParam("id") int id,
									@RequestParam("day") String day,
									@RequestParam("quantity") int quantity,
									Map<String, Object> map,HttpSession session) {
		String sessionUsername = (String)session.getAttribute("username");
		
		int memberid = memberService.getMemberByUser(sessionUsername).getId(); //get id member มา
		Tool tool = toolservice.getTool(id);
		int quantityofTool= toolservice.getTool(id).getQuantity();
		//System.out.println("Q="+ quantityofTool);
		int total = quantityofTool-quantity;
		//System.out.println("TOTAL="+total);
		tool.setQuantity(total);
		toolservice.edit(tool);
		ToolRelease toolrelease = new ToolRelease();
		toolrelease.setMember(memberService.getMember(memberid));
		toolrelease.setQuantity(quantity);
		toolrelease.setDay(day);
		toolrelease.setTool(toolservice.getTool(id));
		toolreleaseservice.add(toolrelease);
		return "redirect:release_tool";
	}
	@RequestMapping("cancle_release_tool")
	public String cancle_release_tool(@RequestParam int id){
		int quantityrelease = toolreleaseservice.getToolRelease(id).getQuantity();
		int quantityStock = toolreleaseservice.getToolRelease(id).getTool().getQuantity();
		Tool toolid = toolreleaseservice.getToolRelease(id).getTool();
		toolid.setQuantity(quantityrelease+quantityStock);
		toolservice.edit(toolid);
		toolreleaseservice.delete(id);
		return "redirect:release_tool";
	}
	
	@RequestMapping("/view_tool") 
	public ModelAndView view_tool(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Tool tool = new Tool();
		map.put("tools", toolservice.getAllTool());
		ModelAndView model = new ModelAndView("Storehouse/page/tool/view_tool");
		return model;
		
	}
	
	@RequestMapping("/add_tool") 
	public ModelAndView add_tool(HttpSession session,Map<String, Object> map) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Tool tool = new Tool();
		map.put("tool", tool);
		map.put("typetool", typetoolservice.getAllTypeTool());
		map.put("unittool", unittoolservice.getAllUnitTool());
		ModelAndView model = new ModelAndView("Storehouse/page/tool/add_tool");
		return model;
		
	}
	@ResponseBody 
	@RequestMapping(value="chkTool",method = RequestMethod.POST)
	public String chkTool(@RequestParam("name") String name){
		String msg ="yes";
		int chk = toolservice.getToolByName(name).size();
		if(chk>0){
			msg="no";
		}
		return msg; 
	}
	@ResponseBody 
	@RequestMapping(value="addtool",method = RequestMethod.POST)
	public String addtool(@ModelAttribute Tool Tool, Map<String, Object> map){
		toolservice.add(Tool);
		return null;
	}

	
	@RequestMapping("/edit_tool")
	public ModelAndView edit_tool(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		
		String sessionUsername = (String)session.getAttribute("username");
		if(sessionUsername==null){
			ModelAndView model = new ModelAndView("no_login");
			return model;
		}
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		Tool tool = toolservice.getTool(id);
		map.put("tool", tool);
		map.put("typetool", typetoolservice.getAllTypeTool());
		map.put("unittool", unittoolservice.getAllUnitTool());
		ModelAndView model = new ModelAndView("Storehouse/page/tool/edit_tool");
		return model;
		
	}
	@RequestMapping("/edited_tool")
	public String edited_tool(HttpSession session,Map<String, Object> map,@ModelAttribute Tool tool) {
		String sessionUsername = (String)session.getAttribute("username");
		map.put("ulist", memberService.getMemberByUsername(sessionUsername));
		toolservice.edit(tool);
		return "redirect:view_tool";
		
	}
	
	@RequestMapping("/del_tool")
	public String del_tool(HttpSession session,Map<String, Object> map,@RequestParam int id) {
		toolservice.delete(id);
		return "redirect:view_tool";
	}
}
