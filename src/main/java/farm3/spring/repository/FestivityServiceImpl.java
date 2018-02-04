package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.FestivityDao;
import farm3.spring.model.Festivity;
import farm3.spring.service.FestivityService;


@Service
public class FestivityServiceImpl implements FestivityService{
		
	
	@Autowired
	private FestivityDao festivityDao;

	@Transactional
	public void add(Festivity festivity) {
		festivityDao.add(festivity);
	}

	@Transactional
	public void edit(Festivity festivity) {
		festivityDao.edit(festivity);
	}

	@Transactional
	public void delete(int id) {
		festivityDao.delete(id);
	}

	@Transactional
	public Festivity getFestivity(int id) {
		return festivityDao.getFestivity(id);
	}

	@Transactional
	public List getAllFestivity() {
		// TODO Auto-generated method stub
		return festivityDao.getAllFestivity();
	}


	@Transactional
	public List getFestivityById(int id) {
		// TODO Auto-generated method stub
		return festivityDao.getFestivityById(id);
	}

	
	@Transactional
	public List getAllFestivityMember() {
		// TODO Auto-generated method stub
		return festivityDao.getAllFestivityMember();
	}
	
	
	@Transactional
	public List getFestivityByType(int id) {
		// TODO Auto-generated method stub
		return festivityDao.getFestivityByType(id);
	}


	@Transactional
	public List CalFestivityByType() {
		// TODO Auto-generated method stub
		return festivityDao.CalFestivityByType();
	}
	
	
	@Transactional
	public List FestivityByDate(String start,String end,int i){
		// TODO Auto-generated method stub
		return festivityDao.FestivityByDate(start,end,i);
	}
	
	@Transactional
	public List getAllFestivity(Festivity festivity,int page) {
		// TODO Auto-generated method stub
		return festivityDao.getAllFestivity(festivity,page);
	}
	
	@Transactional
	public List getAllFestivityMember(Festivity festivity,int page) {
		// TODO Auto-generated method stub
		return festivityDao.getAllFestivityMember(festivity,page);
	}
	
	@Transactional
	public int CountAllFestivity(Festivity festivity) {
		// TODO Auto-generated method stub
		return festivityDao.CountAllFestivity(festivity);
	}
	
	@Transactional
	public int CountAllFestivityMember(Festivity festivity) {
		// TODO Auto-generated method stub
		return festivityDao.CountAllFestivityMember(festivity);
	}
	
}
