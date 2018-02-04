package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.CattleFatten;


public interface CattleFattenDao {

	public void add(CattleFatten cattlefatten);
	public void edit(CattleFatten cattlefatten);
	public void delete(int id);
	public CattleFatten getCattleFatten(int id);
	public List getAllCattleFatten();	
	public List getAllCattleFatten(int id);	
	public List CheckCattleFattenName(String name);	
	public List getAllCattleFattenByUser(int userId);	
	public List CowFattenNotInFestivity(String gene,String id);	
	public List CowFattenInFestivity(String id);	
	public List MemberCowFattenFestivity(String id,String username,int i);	
	public List SearchCattleFatten(CattleFatten cattlefatten,int page);	
	public List SearchCattleFattenByUser(CattleFatten cattlefatten,int page);	
	public int CountCattleFatten(CattleFatten cattlefatten);	
	public int CountCattleFattenByUser(CattleFatten cattlefatten);	
}
