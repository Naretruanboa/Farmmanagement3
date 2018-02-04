package farm3.spring.service;

import java.util.List;
import java.util.Map;

import farm3.spring.model.CattleDetail;

public interface CattleDetailService {

	public void add(CattleDetail cattledetail);
	public void edit(CattleDetail cattledetail);
	public void delete(int id);
	public CattleDetail getCattleDetail(int id);
	public List getAllCattleDetail();
	public List getSearch(Map<String, String> attributes);
}
