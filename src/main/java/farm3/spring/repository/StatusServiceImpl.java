package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.StatusDao;
import farm3.spring.model.Status;
import farm3.spring.service.StatusService;
@Service
public class StatusServiceImpl implements StatusService {
	@Autowired
	private StatusDao statusdao;
	@Transactional
	public void add(Status status) {
		// TODO Auto-generated method stub
		statusdao.add(status);
	}

	@Transactional
	public void edit(Status status) {
		// TODO Auto-generated method stub
		statusdao.edit(status);
	}

	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		statusdao.delete(id);
	}

	@Transactional
	public Status getStatus(int id) {
		// TODO Auto-generated method stub
		return statusdao.getStatus(id);
	}

	@Transactional
	public List getAllStatus() {
		// TODO Auto-generated method stub
		return statusdao.getAllStatus();
	}

}
