package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.StatusDao;
import farm3.spring.model.Status;


@Repository
public class StatusDaoImpl implements StatusDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Status status) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(status);
	}

	@Override
	public void edit(Status status) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(status);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getStatus(id));
	}

	@Override
	public Status getStatus(int id) {
		// TODO Auto-generated method stub
		return (Status) session.getCurrentSession().get(Status.class, id);
	}

	@Override
	public List getAllStatus() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Status").list();
	}

}
