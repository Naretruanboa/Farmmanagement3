package farm3.spring.service;

import java.util.List;

import farm3.spring.model.ToolOrder;

public interface ToolOrderService {
	public void add(ToolOrder toolorder);
	public void edit(ToolOrder toolorder);
	public void delete(int Id);
	public ToolOrder getToolOrder(int Id);
	public List<ToolOrder> getAllToolOrder();
	public List<ToolOrder> getSearch(ToolOrder toolorder,int page); //����
	int CountAllToolOrder(ToolOrder toolorder);
	public List<ToolOrder> getSearchReport(String Start,String End,int memid);
	public List<ToolOrder> getSearchReportForNextPage(String Start,String End,int memid,int page);
}
