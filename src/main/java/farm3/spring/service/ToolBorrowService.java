package farm3.spring.service;

import java.util.List;

import farm3.spring.model.ToolBorrow;

public interface ToolBorrowService {
	public void add(ToolBorrow toolborrow);
	public void edit(ToolBorrow toolborrow);
	public void delete(int Id);
	public ToolBorrow getToolBorrow(int Id);
	public List<ToolBorrow> getAllToolBorrow();
	public List<ToolBorrow> getToolBorrow(); //����������
	public List<ToolBorrow> getSearchReport(String Start,String End,int memid,int type);
	public List<ToolBorrow> getSearchReportForNextPage(String Start,String End,int memid,int type,int page);
}
