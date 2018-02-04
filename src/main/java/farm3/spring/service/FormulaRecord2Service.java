package farm3.spring.service;

import java.util.List;
import java.util.Map;

import farm3.spring.model.FormulaRecord2;

public interface FormulaRecord2Service {
	public void add(FormulaRecord2 formularecord2);
	public void edit(FormulaRecord2 formularecord2);
	public void delete(int id);
	public FormulaRecord2 getFormulaRecord2(int id);
	public List getAllFormulaRecord2();
	public List getSearch(Map<String, String> attributes);
	public List<FormulaRecord2> getSearch(FormulaRecord2 formula2,int page);
	int countAllCattle(FormulaRecord2 formula2);
	public List getPrintFormula(int id);

}
