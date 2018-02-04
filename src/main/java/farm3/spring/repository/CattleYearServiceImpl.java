package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.CattleYearDao;
import farm3.spring.model.CattleWean;
import farm3.spring.model.CattleYear;
import farm3.spring.service.CattleYearService;
@Service
public class CattleYearServiceImpl implements CattleYearService {
	
	@Autowired
	private CattleYearDao cattleyeardao;

	@Transactional
	public void add(CattleYear cattleyear) {
		// TODO Auto-generated method stub
		cattleyeardao.add(cattleyear);
	}

	@Transactional
	public void edit(CattleYear cattleyear) {
		// TODO Auto-generated method stub
		cattleyeardao.edit(cattleyear);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		cattleyeardao.delete(Id);
	}

	@Transactional
	public CattleYear getCattleYear(int Id) {
		// TODO Auto-generated method stub
		return cattleyeardao.getCattleYear(Id);
	}

	@Transactional
	public List getAllCattleYear() {
		// TODO Auto-generated method stub
		return cattleyeardao.getAllCattleYear();
	}
	@Transactional
	public List<CattleYear> getSearch(CattleYear cattleyear , int page){
		return cattleyeardao.getSearch(cattleyear, page);
	}
	@Transactional
	public int CountAllCattleYear(CattleYear cattleyear){
		return cattleyeardao.CountAllCattleYear(cattleyear);
	}
	
	@Transactional
	public List<CattleYear> getSearchReport(String Start,String End){
		return cattleyeardao.getSearchReport(Start, End);
	}
}
