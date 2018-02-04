package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.StatusTreatDao;
import farm3.spring.model.StatusTreat;
import farm3.spring.service.StatusTreatService;
@Service
public class StatusTreatServiceImpl implements StatusTreatService {

	@Autowired
	private StatusTreatDao statustreatdao;
	
	@Transactional
	public void add(StatusTreat statustreat) {
		// TODO Auto-generated method stub
		statustreatdao.add(statustreat);
	}

	@Transactional
	public void edit(StatusTreat statustreat) {
		// TODO Auto-generated method stub
		statustreatdao.edit(statustreat);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		statustreatdao.delete(Id);
	}

	@Transactional
	public StatusTreat getStatusTreat(int Id) {
		// TODO Auto-generated method stub
		return statustreatdao.getStatusTreat(Id);
	}

	@Transactional
	public List getAllStatusTreat() {
		// TODO Auto-generated method stub
		return statustreatdao.getAllStatusTreat();
	}

}
