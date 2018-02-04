package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.Tool;


public interface ToolDao {
	public void add(Tool tool);
	public void edit(Tool tool);
	public void delete(int Id);
	public Tool getTool(int Id);
	public List getAllTool();
	public List getAllToolForNextpage(int page);
	public List<Tool> CheckAlertStock(int stockTool);
	public List<Tool> CheckAlertStockForNextpage(int stockTool,int page);
	
	public List<Tool> getAllToolForRelease();
	public List<Tool> getAllToolForBorrow();
	public List getSearch(Tool tool,int page);
	int CountAllTool(Tool tool);
	public List getToolByName(String name);//ત��Ҫ��ͫ������
	
	public List getSearchForRelease(Tool tool,int page);
	int CountReleaseTool(Tool tool);
	
	public List getSearchForBorrow(Tool tool,int page);
	int CountBorrowTool(Tool tool);
}
