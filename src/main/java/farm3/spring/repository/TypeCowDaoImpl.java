package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.TypeCowDao;
import farm3.spring.model.TypeCow;



@Repository
public class TypeCowDaoImpl implements TypeCowDao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(TypeCow typecow) {
		session.getCurrentSession().save(typecow);
	}

	@Override
	public void edit(TypeCow typecow) {
		session.getCurrentSession().update(typecow);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getTypeCow(id));
	}

	@Override
	public TypeCow getTypeCow(int id) {
		
		return (TypeCow) session.getCurrentSession().get(TypeCow.class, id);
	}

	@Override
	public List getAllTypeCow() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from TypeCow").list();
	}
 

	
  

}
