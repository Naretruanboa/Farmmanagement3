package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import farm3.spring.dao.CattleStrainDao;
import farm3.spring.model.CattleStrain;
import farm3.spring.service.CattleStrainService;

@Service
public class CattleStrainServiceImpl implements CattleStrainService {

	@Autowired
	private CattleStrainDao cattlestrainDao;

	@Transactional
	public void add(CattleStrain cattlestrain) {
		cattlestrainDao.add(cattlestrain);
	}

	@Transactional
	public void edit(CattleStrain cattlestrain) {
		cattlestrainDao.edit(cattlestrain);
	}

	@Transactional
	public void delete(int id) {
		cattlestrainDao.delete(id);
	}

	@Transactional
	public CattleStrain getCattleStrain(int id) {
		return cattlestrainDao.getCattleStrain(id);
	}

	@Transactional
	public List getAllCattleStrain() {
		// TODO Auto-generated method stub 
		return cattlestrainDao.getAllCattleStrain();
	}
	
	@Transactional
	public List CheckCattleStrainName(String name) {
		// TODO Auto-generated method stub public List CheckCattleStrainName(String name);	public List getAllCattleStrainByUser(int userId);	
		return cattlestrainDao.CheckCattleStrainName(name);
	}
	
	
	@Transactional
	public List getAllCattleStrainByUser(int userId) {
		// TODO Auto-generated method stub 
		return cattlestrainDao.getAllCattleStrainByUser(userId);
	}
	
	@Transactional
	public List getCattleStrainlist(int id) {
		// TODO Auto-generated method stub
		return cattlestrainDao.getCattleStrainlist(id);
	}
	
	
	
	@Transactional
	public List CowStrainNotInFestivity(String gene,String id) {
		// TODO Auto-generated method stub
		return cattlestrainDao.CowStrainNotInFestivity(gene,id);
	}
	
	@Transactional
	public List CowStrainInFestivity(String id){
		// TODO Auto-generated method stub
		return cattlestrainDao.CowStrainInFestivity(id);
	}
	
	@Transactional
	public List MemberCowStrainFestivity(String id,String username,int i){
		// TODO Auto-generated method stub
		return cattlestrainDao.MemberCowStrainFestivity(id,username,i);
	}
	

	
	@Transactional
	public List CheckCattleStrainPrivateNo(String privateNo) {

		return cattlestrainDao.CheckCattleStrainPrivateNo(privateNo);
	}
	
	@Transactional
	public List SearchCattleStrain(CattleStrain cattlestrain,int page) {

		return cattlestrainDao.SearchCattleStrain(cattlestrain,page);
	}
	
	@Transactional
	public List SearchCattleStrainByUser(CattleStrain cattlestrain,int page) {

		return cattlestrainDao.SearchCattleStrainByUser(cattlestrain,page);
	}
	
	@Transactional
	public int CountCattleStrain(CattleStrain cattlestrain) {

		return cattlestrainDao.CountCattleStrain(cattlestrain);
	}
	
	@Transactional
	public int CountCattleStrainByUser(CattleStrain cattlestrain) {

		return cattlestrainDao.CountCattleStrainByUser(cattlestrain);
	}
		
	
}
