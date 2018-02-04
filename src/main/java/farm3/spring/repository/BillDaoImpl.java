package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.BillDao;
import farm3.spring.model.Bill;
@Repository
public class BillDaoImpl implements BillDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Bill bill) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(bill);
	}

	@Override
	public void edit(Bill bill) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(bill);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getBill(Id));
	}

	@Override
	public Bill getBill(int Id) {
		// TODO Auto-generated method stub
		return (Bill) session.getCurrentSession().get(Bill.class, Id);
	}

	@Override
	public List<Bill> getAllBill() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Bill").list();
	}

}
