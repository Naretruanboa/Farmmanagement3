package farm3.spring.repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.CattlePedigreeDao;
import farm3.spring.model.CattlePedigree;


@Repository
public class CattlePedigreeDaoImpl implements CattlePedigreeDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(CattlePedigree cattlepedigree) {
		session.getCurrentSession().save(cattlepedigree);
	}

	@Override
	public void edit(CattlePedigree cattlepedigree) {
		session.getCurrentSession().update(cattlepedigree);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getCattlePedigree(id));
	}

	@Override
	public CattlePedigree getCattlePedigree(int id) {
		
		return (CattlePedigree) session.getCurrentSession().get(CattlePedigree.class, id);
	}

	@Override
	public List<CattlePedigree> getAllcattlePedigree() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattlePedigree").list();
	}
	

	

	


}
