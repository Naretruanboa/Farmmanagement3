package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.TypeNutrientDao;
import farm3.spring.model.TypeNutrient;
import farm3.spring.service.TypeNutrientService;
@Service
public class TypeNutrientServiceImpl implements TypeNutrientService {

	@Autowired
	private TypeNutrientDao typenutrientDao;

	@Transactional
	public void add(TypeNutrient typenutrient) {
		typenutrientDao.add(typenutrient);
	}

	@Transactional
	public void edit(TypeNutrient typenutrient) {
		typenutrientDao.edit(typenutrient);
	}

	@Transactional
	public void delete(int id) {
		typenutrientDao.delete(id);
	}

	@Transactional
	public TypeNutrient getTypeNutrient(int id) {
		return typenutrientDao.getTypeNutrient(id);
	}

	@Transactional
	public List getAllTypeNutrient() {
		return typenutrientDao.getAllTypeNutrient();
	}

	@Transactional
	public List getSearch(Map<String, String> attributes) {
		return typenutrientDao.getSearch(attributes);
	}
}
