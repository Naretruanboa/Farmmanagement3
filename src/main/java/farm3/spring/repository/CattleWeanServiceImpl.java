package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.CattleWeanDao;
import farm3.spring.model.CattleWean;
import farm3.spring.service.CattleWeanService;
@Service
public class CattleWeanServiceImpl implements CattleWeanService {
	
	@Autowired
	private CattleWeanDao cattleweandao;
	@Transactional
	public void add(CattleWean cattlewean) {
		// TODO Auto-generated method stub
		cattleweandao.add(cattlewean);
	}

	@Transactional
	public void edit(CattleWean cattlewean) {
		// TODO Auto-generated method stub
		cattleweandao.edit(cattlewean);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		cattleweandao.delete(Id);
	}

	@Transactional
	public CattleWean getCattleWean(int Id) {
		// TODO Auto-generated method stub
		return cattleweandao.getCattleWean(Id);
	}

	@Transactional
	public List getAllCattleWean() {
		// TODO Auto-generated method stub
		return cattleweandao.getAllCattleWean();
	}
	@Transactional
	public List<CattleWean> getSearch(CattleWean cattlewean , int page){
		return cattleweandao.getSearch(cattlewean, page);
	}
	@Transactional
	public int CountAllCattleWean(CattleWean cattlewean){
		return cattleweandao.CountAllCattleWean(cattlewean);
	}

	@Transactional
	public List<CattleWean> getSearchReport(String Start,String End){
		return cattleweandao.getSearchReport(Start, End);
	}
	
}
