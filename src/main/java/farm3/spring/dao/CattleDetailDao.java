package farm3.spring.dao;

import java.util.List;
import java.util.Map;

import farm3.spring.model.CattleDetail;

public interface CattleDetailDao {
	
	public void add(CattleDetail cattledetail);
	public void edit(CattleDetail cattledetail);
	public void delete(int id);
	public CattleDetail getCattleDetail(int id);
	public List getAllCattleDetail();
	public List getSearch(Map<String, String> attributes);
}
