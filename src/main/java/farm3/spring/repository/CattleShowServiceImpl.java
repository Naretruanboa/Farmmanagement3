package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.CattleShowDao;
import farm3.spring.model.CattleShow;
import farm3.spring.service.CattleShowService;


@Service
public class CattleShowServiceImpl implements CattleShowService{
		
	
	@Autowired
	private CattleShowDao cattleshowDao;

	@Transactional
	public void add(CattleShow cattleshow) {
		cattleshowDao.add(cattleshow);
	}

	@Transactional
	public void edit(CattleShow cattleshow) {
		cattleshowDao.edit(cattleshow);
	}

	@Transactional
	public void delete(int id) {
		cattleshowDao.delete(id);
	}

	@Transactional
	public CattleShow getCattleShow(int id) {
		return cattleshowDao.getCattleShow(id);
	}

	@Transactional
	public List getAllCattleShow() {
		// TODO Auto-generated method stub 
		return cattleshowDao.getAllCattleShow();
	}

	@Transactional
	public List CheckCattleShowName(String name) {
		// TODO Auto-generated method stub    	
		return cattleshowDao.CheckCattleShowName(name);
	}
	
	@Transactional
	public List getAllCattleShowByUser(int userId) {
		// TODO Auto-generated method stub 
		return cattleshowDao.getAllCattleShowByUser(userId);
	}

	
	@Transactional
	public List CowShowNotInFestivity(String name,String id){
		// TODO Auto-generated method stub    	
		return cattleshowDao.CowShowNotInFestivity(name,id);
	}
	
	
	@Transactional
	public List CowShowInFestivity(String id) {
		// TODO Auto-generated method stub    	
		return cattleshowDao.CowShowInFestivity(id);
	}
	
	@Transactional
	public List MemberCowShowFestivity(String id,String username,int i) {
		// TODO Auto-generated method stub    	
		return cattleshowDao.MemberCowShowFestivity(id,username,i);
	}
	
	
	@Transactional
	public List PrintById(String id,String sex) {
		// TODO Auto-generated method stub 
		return cattleshowDao.PrintById(id,sex);
	}

	
	@Transactional
	public int getDateDiff(int id) {
		// TODO Auto-generated method stub 
		return cattleshowDao.getDateDiff(id);
	}


	@Transactional
	public List CowShowInStandard(String id,int start,int end) {
		// TODO Auto-generated method stub    	
		return cattleshowDao.CowShowInStandard(id,start,end);
	}
	
	
	@Transactional
	public List SearchCattleShow(CattleShow cattleshow,int page){
		// TODO Auto-generated method stub 
		return cattleshowDao.SearchCattleShow(cattleshow,page);
	}
	
	@Transactional
	public List SearchCattleShowByUser(CattleShow cattleshow,int page){
		// TODO Auto-generated method stub 
		return cattleshowDao.SearchCattleShowByUser(cattleshow,page);
	}
	
	
	@Transactional
	public int CountCattleShow(CattleShow cattleshow){
		// TODO Auto-generated method stub 
		return cattleshowDao.CountCattleShow(cattleshow);
	}
	
	@Transactional
	public int CountCattleShowByUser(CattleShow cattleshow){
		// TODO Auto-generated method stub 
		return cattleshowDao.CountCattleShowByUser(cattleshow);
	}
	
	
	
	@Transactional
	public List getAllCattleShow(int id) {
		// TODO Auto-generated method stub 
		return cattleshowDao.getAllCattleShow(id);
	}
	
}
