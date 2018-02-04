package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.SemenRelease;



public interface SemenReleaseDao {
	public void add(SemenRelease semenrelease);
	public void edit(SemenRelease semenrelease);
	public void delete(int Id);
	public SemenRelease getSemenRelease(int Id);
	public List<SemenRelease> getAllSemenRelease();
	public List<SemenRelease> getSearch(SemenRelease semenrelease,int page);
	int CountAllSemenRelease(SemenRelease semenrelease);
	public List<SemenRelease> getSearchReport(String Start,String End,int memid);
	public List<SemenRelease> getSearchReportForNextPage(String Start,String End,int memid,int page);
}
