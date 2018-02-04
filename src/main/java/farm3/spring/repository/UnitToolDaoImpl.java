package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.UnitToolDao;
import farm3.spring.model.UnitTool;

@Repository
public class UnitToolDaoImpl implements UnitToolDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(UnitTool unittool) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(unittool);
	}

	@Override
	public void edit(UnitTool unittool) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(unittool);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getUnitTool(Id));
	}

	@Override
	public UnitTool getUnitTool(int Id) {
		// TODO Auto-generated method stub
		return (UnitTool) session.getCurrentSession().get(UnitTool.class, Id);
	}

	@Override
	public List getAllUnitTool() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from UnitTool").list();
	}

	@Override //���ͫ��
	public List getUnitToolByValue(String value) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from UnitTool where value='"+value+"'").list();
	}

}
