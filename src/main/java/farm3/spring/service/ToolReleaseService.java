package farm3.spring.service;

import java.util.List;

import farm3.spring.model.ToolRelease;

public interface ToolReleaseService {
	public void add(ToolRelease toolrelease);
	public void edit(ToolRelease toolrelease);
	public void delete(int Id);
	public ToolRelease getToolRelease(int Id);
	public List<ToolRelease> getAllToolRelease();
	public List<ToolRelease> getSearch(ToolRelease toolrelease,int page); //����
	int CountAllToolRelease(ToolRelease toolrelease);
	public List<ToolRelease> getSearchReport(String Start,String End,int memid);
	public List<ToolRelease> getSearchReportForNextPage(String Start,String End,int memid,int page);
}
