package farm3.spring.repository;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.SemenDao;
import farm3.spring.model.Semen;
import farm3.spring.service.SemenService;

@Service
public class SemenServiceImpl implements SemenService {

	@Autowired
	private SemenDao semendao;
	
	
	
	@Transactional
	public void add(Semen semen) {
		// TODO Auto-generated method stub
		semendao.add(semen);
	}

	@Transactional
	public void edit(Semen semen) {
		// TODO Auto-generated method stub
		semendao.edit(semen);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		semendao.delete(Id);
	}

	@Transactional
	public Semen getSemen(int Id) {
		// TODO Auto-generated method stub
		return semendao.getSemen(Id);
	}

	@Transactional
	public List<Semen> getAllSemen() {
		// TODO Auto-generated method stub
		return semendao.getAllSemen();
	}
	@Transactional
	public List<Semen> CheckAlertStock(int stockSemen) {
		// TODO Auto-generated method stub
		return semendao.CheckAlertStock(stockSemen);
	}
	@Transactional
	public List<Semen> CheckAlertStockForNextpage(int stockSemen,int page){
		return semendao.CheckAlertStockForNextpage(stockSemen, page);
	}

	@Transactional 
	public List<Semen> getSemenByNameCattle(String nameCattle) {
		// TODO Auto-generated method stub
		return semendao.getSemenByNameCattle(nameCattle);
	}
@Transactional
public List<Semen> getAllSemenForRelease(){
	return semendao.getAllSemenForRelease();
}
@Transactional
public List<Semen> getSearch(Semen semen,int page){
	return semendao.getSearch(semen, page);
}

@Transactional
public int CountAllSemen(Semen semen){
	return semendao.CountAllSemen(semen);
}
@Transactional
public List<Semen> getSearchForRelease(Semen semen,int page){
	return semendao.getSearchForRelease(semen, page);
}
@Transactional
public int CountReleaseSemen(Semen semen){
	return semendao.CountReleaseSemen(semen);
}
@Transactional
public List<Semen> getAllSemenForNextpage(int page){
	return semendao.getAllSemenForNextpage(page);
}
}
