package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.StandardDao;
import farm3.spring.model.Standard;



@Repository
public class StandardDaoImpl implements StandardDao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(Standard standard) {
		session.getCurrentSession().save(standard);
	}

	@Override
	public void edit(Standard standard) {
		session.getCurrentSession().update(standard);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getStandard(id));
	}

	@Override
	public Standard getStandard(int id) {
		
		return (Standard) session.getCurrentSession().get(Standard.class, id);
	}

	@Override
	public List getAllStandard() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Standard").list();
	}
}
