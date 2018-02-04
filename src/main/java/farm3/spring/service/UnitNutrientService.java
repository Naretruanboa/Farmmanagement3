package farm3.spring.service;

import java.util.List;
import java.util.Map;

import farm3.spring.model.UnitNutrient;

public interface UnitNutrientService {

	public void add(UnitNutrient unitnutrient);
	public void edit(UnitNutrient unitnutrient);
	public void delete(int id);
	public UnitNutrient getUnitNutrient(int id);
	public List getAllUnitNutrient();
	public List getSearch(Map<String, String> attributes);

}
