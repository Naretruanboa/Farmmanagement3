package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.FormulaRecordDao;
import farm3.spring.model.FormulaRecord;
import farm3.spring.service.FormulaRecordService;
@Service
public class FormulaRecordServiceImpl implements FormulaRecordService {

	@Autowired
	private FormulaRecordDao formularecordDao;

	@Transactional
	public void add(FormulaRecord formularecord) {
		formularecordDao.add(formularecord);
	}

	@Transactional
	public void edit(FormulaRecord formularecord) {
		formularecordDao.edit(formularecord);
	}

	@Transactional
	public void delete(int id) {
		formularecordDao.delete(id);
	}

	@Transactional
	public FormulaRecord getFormulaRecord(int id) {
		return formularecordDao.getFormulaRecord(id);
	}

	@Transactional
	public List getAllFormulaRecord() {
		return formularecordDao.getAllFormulaRecord();
	}

	@Transactional
	public List getSearch(Map<String, String> attributes) {
		return formularecordDao.getSearch(attributes);
	}
	@Transactional
	public List getPrintFormula(int id){
		return formularecordDao.getPrintFormula(id);
	}
	
	@Transactional
	public List<FormulaRecord> getSearch(FormulaRecord formula,int page){
		return formularecordDao.getSearch(formula, page);
	}
	
	@Transactional
	public int countAllCattle(FormulaRecord formula){
		return formularecordDao.countAllCattle(formula);
	}
		
}
