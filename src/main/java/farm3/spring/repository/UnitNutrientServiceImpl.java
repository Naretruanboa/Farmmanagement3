package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.UnitNutrientDao;
import farm3.spring.model.UnitNutrient;
import farm3.spring.service.UnitNutrientService;
@Service
public class UnitNutrientServiceImpl implements UnitNutrientService {

	@Autowired
	private  UnitNutrientDao unitnutrientDao;

	@Transactional
	public void add(UnitNutrient unitnutrient) {
		unitnutrientDao.add(unitnutrient);
	}

	@Transactional
	public void edit(UnitNutrient unitnutrient) {
		unitnutrientDao.edit(unitnutrient);
	}

	@Transactional
	public void delete(int id) {
		unitnutrientDao.delete(id);
	}

	@Transactional
	public UnitNutrient getUnitNutrient(int id) {
		return unitnutrientDao.getUnitNutrient(id);
	}

	@Transactional
	public List getAllUnitNutrient() {
		return unitnutrientDao.getAllUnitNutrient();
	}

	@Transactional
	public List getSearch(Map<String, String> attributes) {
		return unitnutrientDao.getSearch(attributes);
	}

}
