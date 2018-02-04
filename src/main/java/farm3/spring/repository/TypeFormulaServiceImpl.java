package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.TypeFormulaDao;
import farm3.spring.model.TypeFormula;
import farm3.spring.service.TypeFormulaService;
@Service
public class TypeFormulaServiceImpl implements TypeFormulaService {

	@Autowired
	private TypeFormulaDao typeformulaDao;

	@Transactional
	public void add(TypeFormula typeformula) {
		typeformulaDao.add(typeformula);
	}

	@Transactional
	public void edit(TypeFormula typeformula) {
		typeformulaDao.edit(typeformula);
	}

	@Transactional
	public void delete(int id) {
		typeformulaDao.delete(id);
	}

	@Transactional
	public TypeFormula getTypeFormula(int id) {
		return typeformulaDao.getTypeFormula(id);
	}

	@Transactional
	public List getAllTypeFormula() {
		return typeformulaDao.getAllTypeFormula();
	}

	@Transactional
	public List getSearch(Map<String, String> attributes) {
		return typeformulaDao.getSearch(attributes);
	}

}
