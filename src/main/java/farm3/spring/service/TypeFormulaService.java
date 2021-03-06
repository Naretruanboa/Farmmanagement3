package farm3.spring.service;

import java.util.List;
import java.util.Map;

import farm3.spring.model.TypeFormula;

public interface TypeFormulaService {

	public void add(TypeFormula typeformula);
	public void edit(TypeFormula typeformula);
	public void delete(int id);
	public TypeFormula getTypeFormula(int id);
	public List getAllTypeFormula();
	public List getSearch(Map<String, String> attributes);

}
