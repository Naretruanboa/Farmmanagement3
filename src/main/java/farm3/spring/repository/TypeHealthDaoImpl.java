package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.TypeHealthDao;
import farm3.spring.model.TypeHealth;
@Repository
public class TypeHealthDaoImpl implements TypeHealthDao {

	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(TypeHealth typehealth) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(typehealth);
	}

	@Override
	public void edit(TypeHealth typehealth) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(typehealth);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getTypeHealth(Id));
	}

	@Override
	public TypeHealth getTypeHealth(int Id) {
		// TODO Auto-generated method stub
		return (TypeHealth) session.getCurrentSession().get(TypeHealth.class, Id);
	}

	@Override
	public List<TypeHealth> getAllTypeHealth() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from TypeHealth").list();
	}

}
