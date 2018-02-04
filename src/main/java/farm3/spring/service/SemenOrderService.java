package farm3.spring.service;

import java.util.List;

import farm3.spring.model.SemenOrder;

public interface SemenOrderService {
	public void add(SemenOrder semenorder);
	public void edit(SemenOrder semenorder);
	public void delete(int Id);
	public SemenOrder getSemenOrder(int Id);
	public List<SemenOrder> getAllSemenOrder();
	public List<SemenOrder> getSearch(SemenOrder semenorder,int page);
	int CountAllSemenOrder(SemenOrder semenorder);
	public List<SemenOrder> getSearchReport(String Start,String End,int memid);
	public List<SemenOrder> getSearchReportForNextPage(String Start,String End,int memid,int page);
	
}
