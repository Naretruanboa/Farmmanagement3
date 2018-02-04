package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.FormulaRecord2Dao;
import farm3.spring.model.FormulaRecord2;
import farm3.spring.service.FormulaRecord2Service;
@Service
public class FormulaRecord2ServiceImpl implements FormulaRecord2Service {
	@Autowired
	private FormulaRecord2Dao formularecord2dao;

	@Transactional
	public void add(FormulaRecord2 formularecord2) {
		formularecord2dao.add(formularecord2);
		
	}

	@Transactional
	public void edit(FormulaRecord2 formularecord2) {
		formularecord2dao.edit(formularecord2);
		
	}

	@Transactional
	public void delete(int id) {
		formularecord2dao.delete(id);
		
	}

	@Transactional
	public FormulaRecord2 getFormulaRecord2(int id) {
		// TODO Auto-generated method stub
		return formularecord2dao.getFormulaRecord2(id);
	}

	@Transactional
	public List getAllFormulaRecord2() {
		// TODO Auto-generated method stub
		return formularecord2dao.getAllFormulaRecord2();
	}

	@Transactional
	public List getSearch(Map<String, String> attributes) {
		// TODO Auto-generated method stub
		return formularecord2dao.getSearch(attributes);
	}
	
	@Transactional
	public List<FormulaRecord2> getSearch(FormulaRecord2 formula2,int page){
		return formularecord2dao.getSearch(formula2, page);
	}
	
	@Transactional
	public int countAllCattle(FormulaRecord2 formula2){
		return formularecord2dao.countAllCattle(formula2);
	}
	@Transactional
	public List getPrintFormula(int id){
		return formularecord2dao.getPrintFormula(id);
	}
}
