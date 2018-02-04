package farm3.spring.service;

import java.util.List;

import farm3.spring.model.CattleStamp;
import farm3.spring.model.CattleWean;



public interface CattleStampService {
	public void add(CattleStamp cattlestamp);
	public void edit(CattleStamp cattlestamp);
	public void delete(int Id);
	public CattleStamp getCattleStamp(int Id);
	public List getAllCattleStamp();
	public List<CattleStamp> getSearch(CattleStamp cattlestamp , int page);
	int CountAllCattleStamp(CattleStamp cattlestamp);
	public List<CattleStamp> getSearchReport(String Start,String End);
}
