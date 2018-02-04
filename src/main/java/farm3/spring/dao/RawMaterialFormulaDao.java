package farm3.spring.dao;

import java.util.List;
import java.util.Map;

import farm3.spring.model.RawMaterialFormula;

public interface RawMaterialFormulaDao {
	public void add(RawMaterialFormula rawmaterialformula);
	public void edit(RawMaterialFormula rawmaterialformula);
	public void delete(int id);
	public RawMaterialFormula getRawMaterialFormula(int id);
	public List getAllRawMaterialFormula();
	public List getSearch(Map<String, String> attributes);
	public List<RawMaterialFormula> getSearch(RawMaterialFormula rawformula,int page);
	int countAllCattle(RawMaterialFormula rawformula);
	public List getPrintRawFormula(int id);
}
