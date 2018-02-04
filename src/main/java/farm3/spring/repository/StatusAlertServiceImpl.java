package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.StatusAlertDao;
import farm3.spring.model.StatusAlert;
import farm3.spring.service.StatusAlertService;
@Service
public class StatusAlertServiceImpl implements StatusAlertService {
	
	@Autowired
	private StatusAlertDao statusalertdao;

	@Transactional
	public void add(StatusAlert statusalert) {
		// TODO Auto-generated method stub
		statusalertdao.add(statusalert);
	}

	@Transactional
	public void edit(StatusAlert statusalert) {
		// TODO Auto-generated method stub
		statusalertdao.edit(statusalert);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		statusalertdao.delete(Id);
	}

	@Transactional
	public StatusAlert getStatusAlert(int Id) {
		// TODO Auto-generated method stub
		return statusalertdao.getStatusAlert(Id);
	}

	@Transactional
	public List getAllStatusAlert() {
		// TODO Auto-generated method stub
		return statusalertdao.getAllStatusAlert();
	}

}
