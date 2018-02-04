
package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.StatusCowDao;
import farm3.spring.model.StatusCow;

@Repository
public class StatusCowDaoImpl implements StatusCowDao {
	@Autowired
	private SessionFactory session;
	@Override
	public void add(StatusCow statuscow) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(statuscow);
	}

	@Override
	public void edit(StatusCow statuscow) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(statuscow);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getStatusCow(Id));
	}

	@Override
	public StatusCow getStatusCow(int Id) {
		// TODO Auto-generated method stub
		return (StatusCow) session.getCurrentSession().get(StatusCow.class, Id);
	}

	@Override
	public List getAllStatusCow() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from StatusCow").list();
	}

	@Override   //àª¤ª×èÍ«éÓ
	public List getStatusCowByValue(String value) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from StatusCow where value='"+value+"'").list();
	}

}
