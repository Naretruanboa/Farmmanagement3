package farm3.spring.dao;

import java.util.List;
import java.util.Map;

import farm3.spring.model.FormulaRecord;

public interface FormulaRecordDao {
	
	public void add(FormulaRecord formularecord);
	public void edit(FormulaRecord formularecord);
	public void delete(int id);
	public FormulaRecord getFormulaRecord(int id);
	public List getAllFormulaRecord();
	public List getSearch(Map<String, String> attributes);
	public List getPrintFormula(int id);
	public List<FormulaRecord> getSearch(FormulaRecord formula,int page);
	int countAllCattle(FormulaRecord formula);
}
