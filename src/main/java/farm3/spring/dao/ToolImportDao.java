package farm3.spring.dao;

import java.util.List;


import farm3.spring.model.ToolImport;


public interface ToolImportDao {
	public void add(ToolImport toolimport);
	public void edit(ToolImport toolimport);
	public void delete(int Id);
	public ToolImport getToolImport(int Id);
	public List<ToolImport> getAllToolImport();
	
	public List<ToolImport> getSearch(ToolImport toolimport,int page); //����
	int CountAllToolImport(ToolImport toolimport);
	public List<ToolImport> getSearchReport(String Start,String End,int memid);
	public List<ToolImport> getSearchReportForNextPage(String Start,String End,int memid,int page);
}
