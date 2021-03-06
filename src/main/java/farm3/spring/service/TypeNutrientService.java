package farm3.spring.service;

import java.util.List;
import java.util.Map;

import farm3.spring.model.TypeNutrient;

public interface TypeNutrientService {

	public void add(TypeNutrient typenutrient);
	public void edit(TypeNutrient typenutrient);
	public void delete(int id);
	public TypeNutrient getTypeNutrient(int id);
	public List getAllTypeNutrient();
	public List getSearch(Map<String, String> attributes);
	
}
