package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.CattleDao;
import farm3.spring.model.Cattle;
import farm3.spring.service.CattleService;
@Service
public class CattleServiceImpl implements CattleService {

	@Autowired
	private CattleDao cattleDao;

	@Transactional
	public void add(Cattle cattle) {
		cattleDao.add(cattle);
	}

	@Transactional
	public void edit(Cattle cattle) {
		cattleDao.edit(cattle);
	}

	@Transactional
	public void delete(int cattleId) {
		cattleDao.delete(cattleId);
	}

	@Transactional
	public Cattle getCattle(int cattleId) {
		return cattleDao.getCattle(cattleId);
	}

	@Transactional
	public List<Cattle> getAllCattle() {
		return cattleDao.getAllCattle();
	}

	@Transactional
	public List<Cattle> getSearch(Map<String, String> attributes) {
		return cattleDao.getSearch(attributes);
	}
	@Transactional
	public List<Cattle> getCattleNum(String num) {
		// TODO Auto-generated method stub
		return cattleDao.getCattleNum(num);
	}
	
	@Transactional
	public List<Cattle> GetMomCattle(int s){
		return cattleDao.GetMomCattle(s);
	}
	
	@Transactional
	public List<Cattle> GetMomCattle2(int s){
		return cattleDao.GetMomCattle2(s);
	}
	
	@Transactional
	public List<Cattle> GetMomCattle3(int s){
		return cattleDao.GetMomCattle3(s);
	}	
	
	@Transactional
	public List<Cattle> GetFatCattle(){
		return cattleDao.GetFatCattle();
	}
	
	@Transactional
	public List<Cattle> GetCalves(int c){
		return cattleDao.GetCalves(c);
	}
	
	@Transactional
	public List<Cattle> GetCalves1(int c){
		return cattleDao.GetCalves1(c);
	}
	
	@Transactional
	public List<Cattle> getstaTreatcattle(){
		return cattleDao.getstaTreatcattle();
	}
	
	@Transactional
	public List<Cattle> getSearch(Cattle cattle,int page){
		
		return cattleDao.getSearch(cattle, page);
	}
	
	@Transactional
	public int countAllCattle(Cattle cattle){
		return cattleDao.countAllCattle(cattle);
	}

	@Transactional
	public Cattle getCattleId(String num){
		return cattleDao.getCattleId(num);
	}
	
	@Transactional
	public List<Cattle> getSearchReport(String Start,String End){
		return cattleDao.getSearchReport(Start, End);
	}
	
	@Transactional
	public List<Cattle> getCattleT(){
		return cattleDao.getCattleT();
	}

}