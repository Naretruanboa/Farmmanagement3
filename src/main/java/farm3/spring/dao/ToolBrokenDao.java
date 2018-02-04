package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.ToolBroken;

public interface ToolBrokenDao {
	public void add(ToolBroken toolbroken);
	public void edit(ToolBroken toolbroken);
	public void delete(int Id);
	public ToolBroken getToolBroken(int Id);
	public List<ToolBroken> getAllToolBroken();
	public List<ToolBroken> getSendToolBroken(); //����觫�������
	public List<ToolBroken> getSearchReport(String Start,String End);
	public List<ToolBroken> getSearchReportForNextPage(String Start,String End,int page);
}
