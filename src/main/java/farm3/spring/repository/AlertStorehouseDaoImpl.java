package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.AlertStorehouseDao;
import farm3.spring.model.AlertStorehouse;
@Repository
public class AlertStorehouseDaoImpl implements AlertStorehouseDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(AlertStorehouse alert) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(alert);
	}

	@Override
	public void edit(AlertStorehouse alert) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(alert);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getAlertStorehouse(id));
	}

	@Override
	public AlertStorehouse getAlertStorehouse(int id) {
		// TODO Auto-generated method stub
		return (AlertStorehouse) session.getCurrentSession().get(AlertStorehouse.class, id);
	}

	@Override
	public List<AlertStorehouse> getAllAlertStorehouse() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from AlertStorehouse").list();
	}

}
