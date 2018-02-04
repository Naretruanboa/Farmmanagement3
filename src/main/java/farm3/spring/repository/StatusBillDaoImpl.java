package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.StatusBillDao;
import farm3.spring.model.StatusBill;
@Repository
public class StatusBillDaoImpl implements StatusBillDao {
	@Autowired
	private SessionFactory session;
	@Override
	public void add(StatusBill statusbill) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(statusbill);
	}

	@Override
	public void edit(StatusBill statusbill) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(statusbill);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getStatusBill(Id));
	}

	@Override
	public StatusBill getStatusBill(int Id) {
		// TODO Auto-generated method stub
		return (StatusBill) session.getCurrentSession().get(StatusBill.class, Id);
	}

	@Override
	public List<StatusBill> getAllStatusBill() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from StatusBill").list();
	}

}
