package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.RawMaterialFormulaDao;
import farm3.spring.model.FormulaRecord2;
import farm3.spring.model.RawMaterialFormula;
import farm3.spring.service.RawMaterialFormulaService;
@Service
public class RawMaterialFormulaServiceImpl implements RawMaterialFormulaService {
	@Autowired 
	RawMaterialFormulaDao rawmaterialformuladao;

	@Transactional
	public void add(RawMaterialFormula rawmaterialformula) {
		rawmaterialformuladao.add(rawmaterialformula);
		
	}

	@Transactional
	public void edit(RawMaterialFormula rawmaterialformula) {
		rawmaterialformuladao.edit(rawmaterialformula);
		
	}

	@Transactional
	public void delete(int id) {
		rawmaterialformuladao.delete(id);
		
	}

	@Transactional
	public RawMaterialFormula getRawMaterialFormula(int id) {
		return rawmaterialformuladao.getRawMaterialFormula(id);
	}

	@Transactional
	public List getAllRawMaterialFormula() {
		return rawmaterialformuladao.getAllRawMaterialFormula();
	}

	@Transactional
	public List getSearch(Map<String, String> attributes) {
		return rawmaterialformuladao.getSearch(attributes);
	}
	
	@Transactional
	public List<RawMaterialFormula> getSearch(RawMaterialFormula rawformula,int page){
		return rawmaterialformuladao.getSearch(rawformula, page);
	}
	
	@Transactional
	public int countAllCattle(RawMaterialFormula rawformula){
		return rawmaterialformuladao.countAllCattle(rawformula);
	}
	@Transactional
	public List getPrintRawFormula(int id){
		return rawmaterialformuladao.getPrintRawFormula(id);
	}
}
