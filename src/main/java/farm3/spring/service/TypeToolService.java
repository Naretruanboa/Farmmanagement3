package farm3.spring.service;

import java.util.List;

import farm3.spring.model.TypeTool;

public interface TypeToolService {
	public void add(TypeTool typetool);
	public void edit(TypeTool typetool);
	public void delete(int Id);
	public TypeTool getTypeTool(int Id);
	public List getAllTypeTool();
	public List getTypeToolByValue(String value); //ત���ͫ��
}
