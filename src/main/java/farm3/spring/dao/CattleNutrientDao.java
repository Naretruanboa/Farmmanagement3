package farm3.spring.dao;

import java.util.List;
import java.util.Map;

import farm3.spring.model.CattleNutrient;

public interface CattleNutrientDao {
	public void add(CattleNutrient cattlenutrient);
	public void edit(CattleNutrient cattlenutrient);
	public void delete(int id);
	public CattleNutrient getCattleNutrient(int id);
	public List getAllCattleNutrient();
	public List getSearch(Map<String, String> attributes);
	
	
}
