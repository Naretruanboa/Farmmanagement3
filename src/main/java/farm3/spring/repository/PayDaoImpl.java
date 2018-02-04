package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.PayDao;
import farm3.spring.model.Pay;

@Repository
public class PayDaoImpl implements PayDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(Pay pay) {
		session.getCurrentSession().save(pay);
	}

	@Override
	public void edit(Pay pay) {
		session.getCurrentSession().update(pay);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getPay(id));
	}

	@Override
	public Pay getPay(int id) {
		
		return (Pay) session.getCurrentSession().get(Pay.class, id);
	}

	@Override
	public List getAllPay() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Pay").list();
	}

}
