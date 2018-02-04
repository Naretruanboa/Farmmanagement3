package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.TypeBillDao;
import farm3.spring.model.TypeBill;
@Repository
public class TypeBillDaoImpl implements TypeBillDao {
	@Autowired
	private SessionFactory session;
	@Override
	public void add(TypeBill typebill) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(typebill);
	}

	@Override
	public void edit(TypeBill typebill) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(typebill);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getTypeBill(Id));
	}

	@Override
	public TypeBill getTypeBill(int Id) {
		// TODO Auto-generated method stub
		return (TypeBill) session.getCurrentSession().get(TypeBill.class, Id);
	}

	@Override
	public List<TypeBill> getAllTypeBill() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from TypeBill").list();
	}

}
