package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.RawMaterialNutrientDao;
import farm3.spring.model.RawMaterialNutrient;
import farm3.spring.service.RawMaterialNutrientService;
@Service
public class RawMaterialNutrientServiceImpl implements RawMaterialNutrientService {

	@Autowired
	private RawMaterialNutrientDao rawmaterialnutrientDao;

	@Transactional
	public void add(RawMaterialNutrient rawmaterialnutrient) {
		rawmaterialnutrientDao.add(rawmaterialnutrient);
	}

	@Transactional
	public void edit(RawMaterialNutrient rawmaterialnutrient) {
		rawmaterialnutrientDao.edit(rawmaterialnutrient);
	}

	@Transactional
	public void delete(int id) {
		rawmaterialnutrientDao.delete(id);
	}

	@Transactional
	public RawMaterialNutrient getRawMaterialNutrient(int id) {
		return rawmaterialnutrientDao.getRawMaterialNutrient(id);
	}

	@Transactional
	public List getAllRawMaterialNutrient() {
		return rawmaterialnutrientDao.getAllRawMaterialNutrient();
	}

	@Transactional
	public List getSearch(Map<String, String> attributes) {
		return rawmaterialnutrientDao.getSearch(attributes);
	}
	@Transactional
	public List getCheckRawmaterialById(int id){
		return rawmaterialnutrientDao.getCheckRawmaterialById(id);
	}
	@Transactional
	public List getSearch(RawMaterialNutrient rawmaterialnutrient,int page){
		return rawmaterialnutrientDao.getSearch(rawmaterialnutrient, page);
	} //����
	
	@Transactional
	public int CountAllRaw(RawMaterialNutrient rawmaterialnutrient){
		return rawmaterialnutrientDao.CountAllRaw(rawmaterialnutrient);
	}

}
