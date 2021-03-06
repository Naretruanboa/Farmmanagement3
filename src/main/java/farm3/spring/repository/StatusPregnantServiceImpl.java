package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.StatusPregnantDao;
import farm3.spring.model.StatusPregnant;
import farm3.spring.service.StatusPregnantService;
@Service
public class StatusPregnantServiceImpl implements StatusPregnantService {

	@Autowired
	private StatusPregnantDao statuspregnantdao;
	
	@Transactional
	public void add(StatusPregnant statuspregnant) {
		// TODO Auto-generated method stub
		statuspregnantdao.add(statuspregnant);
	}

	@Transactional
	public void edit(StatusPregnant statuspregnant) {
		// TODO Auto-generated method stub
		statuspregnantdao.edit(statuspregnant);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		statuspregnantdao.delete(Id);
	}

	@Transactional
	public StatusPregnant getStatusPregnant(int Id) {
		// TODO Auto-generated method stub
		return statuspregnantdao.getStatusPregnant(Id);
	}

	@Transactional
	public List getAllStatusPregnant() {
		// TODO Auto-generated method stub
		return statuspregnantdao.getAllStatusPregnant();
	}

}
