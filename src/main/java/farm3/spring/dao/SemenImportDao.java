package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.SemenImport;



public interface SemenImportDao {
	public void add(SemenImport semenimport);
	public void edit(SemenImport semenimport);
	public void delete(int Id);
	public SemenImport getSemenImport(int Id);
	public List<SemenImport> getAllSemenImport();
	public List<SemenImport> getSearch(SemenImport semenimport,int page);
	int CountAllSemenImport(SemenImport semenimport);
	
	public List<SemenImport> getSearchReport(String Start,String End,int memid);
	public List<SemenImport> getSearchReportForNextPage(String Start,String End,int memid,int page);
}
