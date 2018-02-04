package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.TypeDairyDao;
import farm3.spring.model.TypeDairy;



@Repository
public class TypeDairyDaoImpl implements TypeDairyDao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void edit(TypeDairy typeDairy) {
		session.getCurrentSession().update(typeDairy);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getTypeDairy(id));
	}

	@Override
	public TypeDairy getTypeDairy(int id) {
		
		return (TypeDairy) session.getCurrentSession().get(TypeDairy.class, id);
	}

	@Override
	public List getAllTypeDairy() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from TypeDairy").list();
	}

	@Override
	public void add(TypeDairy typeDairy) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(typeDairy);
		
	}
 

	
  

}
