package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.FormListDao;
import farm3.spring.model.FormList;


@Repository
public class FormListDaoImpl implements FormListDao{
	
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FormList formlist) {
		session.getCurrentSession().save(formlist);
	}

	@Override
	public void edit(FormList formlist) {
		session.getCurrentSession().update(formlist);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getFormList(id));
	}

	@Override
	public FormList getFormList(int id) {
		
		return (FormList) session.getCurrentSession().get(FormList.class, id);
	}

	@Override
	public List getAllFormList() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from FormList").list();
	}

}
