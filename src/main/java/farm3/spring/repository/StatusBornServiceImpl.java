package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.StatusBornDao;
import farm3.spring.model.StatusBorn;
import farm3.spring.service.StatusBornService;
@Service
public class StatusBornServiceImpl implements StatusBornService {

	@Autowired
	private StatusBornDao statusborndao;
	
	@Transactional
	public void add(StatusBorn statusborn) {
		// TODO Auto-generated method stub
		statusborndao.add(statusborn);
	}

	@Transactional
	public void edit(StatusBorn statusborn) {
		// TODO Auto-generated method stub
		statusborndao.edit(statusborn);
	}

	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		statusborndao.delete(id);
	}

	@Transactional
	public StatusBorn getStatusBorn(int id) {
		// TODO Auto-generated method stub
		return statusborndao.getStatusBorn(id);
	}

	@Transactional
	public List getAllStatusBorn() {
		// TODO Auto-generated method stub
		return statusborndao.getAllStatusBorn();
	}

}
