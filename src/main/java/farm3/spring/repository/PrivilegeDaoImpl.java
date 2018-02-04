package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.PrivilegeDao;
import farm3.spring.model.Member;
import farm3.spring.model.Privilege;

@Repository
public class PrivilegeDaoImpl implements PrivilegeDao {

	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Privilege privilege) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(privilege);
	}

	@Override
	public void edit(Privilege privilege) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(privilege);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getPrivilege(id));
	}

	@Override
	public Privilege getPrivilege(int id) {
		// TODO Auto-generated method stub
		return (Privilege) session.getCurrentSession().get(Privilege.class, id);
	}

	@Override
	public List getAllPrivilege() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Privilege").list();
	}
	@Override
	public List getPrivilegeById(int id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Privilege where id ="+id).list();
	}
	@Override
	public List getPrivilegeForSetting(){
		return session.getCurrentSession().createQuery("from Privilege where id != 7").list();
	}

}
