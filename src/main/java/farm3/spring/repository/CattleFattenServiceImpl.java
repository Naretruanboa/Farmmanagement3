package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.CattleFattenDao;
import farm3.spring.model.CattleFatten;
import farm3.spring.service.CattleFattenService;

@Service
public class CattleFattenServiceImpl implements CattleFattenService {

	@Autowired
	private CattleFattenDao cattlefattenDao;

	@Transactional
	public void add(CattleFatten cattlefatten) {
		cattlefattenDao.add(cattlefatten);
	}

	@Transactional
	public void edit(CattleFatten cattlefatten) {
		cattlefattenDao.edit(cattlefatten);
	}

	@Transactional
	public void delete(int id) {
		cattlefattenDao.delete(id);
	}

	@Transactional
	public CattleFatten getCattleFatten(int id) {
		return cattlefattenDao.getCattleFatten(id);
	}

	@Transactional
	public List getAllCattleFatten() {
		// TODO Auto-generated method stub
		return cattlefattenDao.getAllCattleFatten();
	}
	
	@Transactional
	public List CheckCattleFattenName(String name) {
		// TODO Auto-generated method stub
		return cattlefattenDao.CheckCattleFattenName(name);
	}
	
	
	@Transactional
	public List getAllCattleFattenByUser(int name) {
		// TODO Auto-generated method stub
		return cattlefattenDao.getAllCattleFattenByUser(name);
	}
	
	
	
	@Transactional
	public List CowFattenNotInFestivity(String gene,String id) {
		// TODO Auto-generated method stub
		return cattlefattenDao.CowFattenNotInFestivity(gene,id);
	}
	

	@Transactional
	public List CowFattenInFestivity(String id) {
		// TODO Auto-generated method stub
		return cattlefattenDao.CowFattenInFestivity(id);
	}
	
	
	@Transactional
	public List MemberCowFattenFestivity(String id,String username,int i) {
		// TODO Auto-generated method stub
		return cattlefattenDao.MemberCowFattenFestivity(id,username,i);
	}
	
	
	@Transactional
	public List SearchCattleFatten(CattleFatten cattlefatten,int page){
		// TODO Auto-generated method stub 
		return cattlefattenDao.SearchCattleFatten(cattlefatten,page);
	}
	
	@Transactional
	public List SearchCattleFattenByUser(CattleFatten cattlefatten,int page){
		// TODO Auto-generated method stub 
		return cattlefattenDao.SearchCattleFattenByUser(cattlefatten,page);
	}
	
	
	@Transactional
	public int CountCattleFatten(CattleFatten cattlefatten){
		// TODO Auto-generated method stub 
		return cattlefattenDao.CountCattleFatten(cattlefatten);
	}
	
	@Transactional
	public int CountCattleFattenByUser(CattleFatten cattlefatten){
		// TODO Auto-generated method stub 
		return cattlefattenDao.CountCattleFattenByUser(cattlefatten);
	}
	
	@Transactional
	public List getAllCattleFatten(int id) {
		// TODO Auto-generated method stub
		return cattlefattenDao.getAllCattleFatten(id);
	}

	
}
