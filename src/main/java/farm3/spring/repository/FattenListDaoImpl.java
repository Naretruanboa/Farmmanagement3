package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.FattenListDao;
import farm3.spring.model.FattenList;


@Repository
public class FattenListDaoImpl implements FattenListDao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FattenList fattenlist) {
		session.getCurrentSession().save(fattenlist);
	}

	@Override
	public void edit(FattenList fattenlist) {
		session.getCurrentSession().update(fattenlist);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getFattenList(id));
	}

	@Override
	public FattenList getFattenList(int id) {
		
		return (FattenList) session.getCurrentSession().get(FattenList.class, id);
	}

	@Override
	public List getAllFattenList() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from FattenList").list();
	}
	
	
	@Override
	public List getAllFattenListById(int id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from FattenList where cattleFatten = "+id).list();
	}
	
	
	@Override
	public List PrintById(String id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from FattenList where cattleFatten.id IN ("+id+") ORDER BY cattleFatten.bidder,cattleFatten.lot").list();
	}

}
