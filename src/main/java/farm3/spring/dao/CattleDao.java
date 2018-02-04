package farm3.spring.dao;

import java.util.List;
import java.util.Map;

import farm3.spring.model.Cattle;

public interface CattleDao {
	public void add(Cattle cattle);
	public void edit(Cattle cattle);
	public void delete(int id);
	public Cattle getCattle(int id);
	public List<Cattle> getAllCattle();
	public List<Cattle> getSearch(Map<String, String> attributes);
	public List<Cattle> getCattleNum(String num);
	public List<Cattle> GetMomCattle(int s);
	public List<Cattle> GetMomCattle2(int s);
	public List<Cattle> GetMomCattle3(int s);
	public List<Cattle> GetFatCattle();
	public List<Cattle> GetCalves(int c);
	public List<Cattle> GetCalves1(int c);
	public List<Cattle> getstaTreatcattle();
	public List<Cattle> getSearch(Cattle cattle,int page);
	int countAllCattle(Cattle cattle);
	public Cattle getCattleId(String num);
	public List<Cattle> getSearchReport(String Start,String End);
	public List<Cattle> getCattleT();
}
