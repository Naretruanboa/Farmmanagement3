package farm3.spring.service;

import java.util.List;

import farm3.spring.model.UnitTool;

public interface UnitToolService {
	public void add(UnitTool unittool);
	public void edit(UnitTool unittool);
	public void delete(int Id);
	public UnitTool getUnitTool(int Id);
	public List getAllUnitTool();
	public List getUnitToolByValue(String value); //ત���ͫ��
}
