package farm3.spring.dao;

import java.util.List;
import java.util.Map;

import farm3.spring.model.RawMaterial;
import farm3.spring.model.RawMaterialNutrient;

public interface RawMaterialNutrientDao {

	public void add(RawMaterialNutrient rawmaterialnutrient);
	public void edit(RawMaterialNutrient rawmaterialnutrient);
	public void delete(int id);
	public RawMaterialNutrient getRawMaterialNutrient(int id);
	public List getAllRawMaterialNutrient();
	public List getSearch(Map<String, String> attributes);
	public List getCheckRawmaterialById(int id);
	
	public List getSearch(RawMaterialNutrient rawmaterialnutrient,int page); //����
	int CountAllRaw(RawMaterialNutrient rawmaterialnutrient); //�Ѻ�ӹǹ㹴ҵ����
}
