package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.TypeToolDao;
import farm3.spring.model.TypeTool;

@Repository
public class TypeToolDaoImpl implements TypeToolDao {

	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(TypeTool typetool) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(typetool);
	}

	@Override
	public void edit(TypeTool typetool) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(typetool);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getTypeTool(Id));
	}

	@Override
	public TypeTool getTypeTool(int Id) {
		// TODO Auto-generated method stub
		return (TypeTool) session.getCurrentSession().get(TypeTool.class, Id);
	}

	@Override
	public List getAllTypeTool() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("From TypeTool").list();
	}

	@Override //ત���ͫ��
	public List getTypeToolByValue(String value) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from TypeTool where value='"+value+"' ").list();
	}

}
