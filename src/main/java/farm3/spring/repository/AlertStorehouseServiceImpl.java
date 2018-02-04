package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.AlertStorehouseDao;
import farm3.spring.model.AlertStorehouse;
import farm3.spring.service.AlertStorehouseService;
@Service
public class AlertStorehouseServiceImpl implements AlertStorehouseService {
	@Autowired
	private AlertStorehouseDao alertstorehousedao;
	@Transactional
	public void add(AlertStorehouse alertstorehouse) {
		// TODO Auto-generated method stub
		alertstorehousedao.add(alertstorehouse);
	}

	@Transactional
	public void edit(AlertStorehouse alertstorehouse) {
		// TODO Auto-generated method stub
		alertstorehousedao.edit(alertstorehouse);
	}

	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		alertstorehousedao.delete(id);
	}

	@Transactional
	public AlertStorehouse getAlertStorehouse(int id) {
		// TODO Auto-generated method stub
		return alertstorehousedao.getAlertStorehouse(id);
	}

	@Transactional
	public List<AlertStorehouse> getAllAlertStorehouse() {
		// TODO Auto-generated method stub
		return alertstorehousedao.getAllAlertStorehouse();
	}

}
