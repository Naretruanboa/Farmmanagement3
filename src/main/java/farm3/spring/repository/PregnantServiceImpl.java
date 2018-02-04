package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.PregnantDao;
import farm3.spring.model.Pregnant;
import farm3.spring.model.TreatmentHistory;
import farm3.spring.service.PregnantService;
@Service
public class PregnantServiceImpl implements PregnantService {

	@Autowired
	private PregnantDao pregnantdao;
	
	@Transactional
	public void add(Pregnant pregnant) {
		// TODO Auto-generated method stub
		pregnantdao.add(pregnant);
	}

	@Transactional
	public void edit(Pregnant pregnant) {
		// TODO Auto-generated method stub
		pregnantdao.edit(pregnant);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		pregnantdao.delete(Id);
	}

	@Transactional
	public Pregnant getPregnant(int Id) {
		// TODO Auto-generated method stub
		return pregnantdao.getPregnant(Id);
	}

	@Transactional
	public List getAllPregnant() {
		// TODO Auto-generated method stub
		return pregnantdao.getAllPregnant();
	}
	
/*	@Transactional
	public List getPregnantBynum(int s){
		return pregnantdao.getPregnantBynum(s);
	}*/
	
	@Transactional
	public List getSearch(Pregnant pregnant,int page){
		return pregnantdao.getSearch(pregnant, page);
	}
	
	@Transactional
	public List getSearch(Pregnant pregnant){
		return pregnantdao.getSearch(pregnant);
	}
	
	
	@Transactional
	public int getPregnantByCattle(int id){
		return pregnantdao.getPregnantByCattle(id);
	}
	
	@Transactional
	public int getFartherIdByMomId(int id){
		return pregnantdao.getFartherIdByMomId(id);
	}

	@Transactional
	public List<Pregnant> getSearchReport(String Start,String End){
		return pregnantdao.getSearchReport(Start, End);
	}

	@Override
	public List getPregnantBynum(int s) {
		// TODO Auto-generated method stub
		return null;
	}
}
