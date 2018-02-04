package farm3.spring.controller;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import farm3.spring.model.Disease;
import farm3.spring.service.CableDiseaseService;
import farm3.spring.service.CattleService;
import farm3.spring.service.DiseaseService;
import farm3.spring.service.GroupMedicineService;
import farm3.spring.service.MedicineService;
import farm3.spring.service.MemberService;
import farm3.spring.service.PrivilegeService;
import farm3.spring.service.StatusMedicineService;
import farm3.spring.service.TreatmentHistoryService;
import farm3.spring.service.UnitMedicineService;


@Controller
public class HealthCareAutoCompleteController {
	
	@Autowired
	private MedicineService medicineservice;
	
	@Autowired
	private DiseaseService diseaseService;
	
	@Autowired
	private CableDiseaseService cableDiseaseService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private PrivilegeService privilegeService;
	
	@Autowired
	private CattleService cattleservice;
	
	@Autowired
	private TreatmentHistoryService treatmenthistoryservice;
	
	
	@Autowired
	private UnitMedicineService unitmedicineservice;
	
	@Autowired
	private GroupMedicineService groupmedicineservice;
	
	@Autowired
	private StatusMedicineService statusmedicineservice;
	
	
	
	
	@ResponseBody
    @RequestMapping(value = "/auto", method = RequestMethod.GET)
    public List<String> autoGroup1(@RequestParam("term") String text){
	
	List<String> matchName = getidCow(text);

	return matchName;
    }
	
	
	
	private List<String> getidCow(String text) {
		
		String msg = AddMSG();
		List<String> returnMatch = new ArrayList<String>();
		String [] data =msg.toString().split(",");	
		for (String string : data) {
		    if (string.toUpperCase().indexOf(text.toUpperCase())!= -1) {
		    	returnMatch.add(string);
		    }
		}
		
		return returnMatch;
		
	}
	
	
	private String AddMSG(){
		int num = diseaseService.getAllDisease().size(), i = 0 ,a =0;
				
				//cattleinfoService.getAllCattleInfo().size(),num1 = calfService.getAllCalf("�ժ��Ե").size(),i=0,a=0;
		String[] data=new String[num+1];
		//String[] data1=new String[num1+1];
		String total="";
		List<Disease> diseaselist = diseaseService.getAllDisease();
		
		for(Disease get : diseaselist){
			data[i] = get.getSymptomsOfDisease();
			total = total + get.getSymptomsOfDisease()+",";
			i+=1;
		}


		int last = total.length();
		String result = total.substring(0,last);
		return result;

	}

}
