package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.CattleShow;




public interface CattleShowDao {
	
	public void add(CattleShow cattleshow);
	public void edit(CattleShow cattleshow);
	public void delete(int id);
	public CattleShow getCattleShow(int id);
	public List getAllCattleShow();	
	public List getAllCattleShow(int id);	
	public List CheckCattleShowName(String name);	
	public List getAllCattleShowByUser(int userId);	
	public List CowShowNotInFestivity(String name,String id);	
	public List CowShowInFestivity(String id);	
	public List MemberCowShowFestivity(String id,String username,int i);
	public List PrintById(String id,String sex);
	public int getDateDiff(int id);
	public List CowShowInStandard(String id,int start,int end);	
	public List SearchCattleShow(CattleShow cattleshow,int page);	
	public List SearchCattleShowByUser(CattleShow cattleshow,int page);	
	public int CountCattleShow(CattleShow cattleshow);	
	public int CountCattleShowByUser(CattleShow cattleshow);	
}
