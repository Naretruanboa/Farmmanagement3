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

import farm3.spring.dao.FestivityDao;
import farm3.spring.model.Festivity;




@Repository
public class FestivityDaoImpl implements FestivityDao {
	@Autowired
	private SessionFactory session;

	@Override
	public void add(Festivity festivity) {
		session.getCurrentSession().save(festivity);
	}

	@Override
	public void edit(Festivity festivity) {
		session.getCurrentSession().update(festivity);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getFestivity(id));
	}

	@Override
	public Festivity getFestivity(int id) {
		
		return (Festivity) session.getCurrentSession().get(Festivity.class, id);
	}

	@Override
	public List getAllFestivity() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Festivity").list();
	}
	

	@Override
	public List getFestivityById(int id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Festivity where id = "+id).list();
	}
	
	@Override
	public List getAllFestivityMember() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Festivity where newStatus = 1").list();
	}
	
	
	
	@Override
	public List getFestivityByType(int id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Festivity where type.id = "+id).list();
	}
	
	
	
	@Override
	public List CalFestivityByType() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Festivity where type.id != 1").list();
	}
	
	@Override
	public List FestivityByDate(String start,String end,int i) {
		// TODO Auto-generated method stub
		 return session.getCurrentSession().createQuery("from Festivity where type.id = "+i+" and (SWork between '"+start+"' and '"+end+"') or (EWork between '"+start+"' and '"+end+"')").list();

	}
	
	
	@Override
	public List getAllFestivity(Festivity festivity,int page) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(Festivity.class);
		if(festivity.getTitle()!=null)
		{
			  criteria.add(Restrictions.like("title","%"+festivity.getTitle()+"%"));
		}
		if(festivity.getType()!=null)
		{		
				criteria.setFetchMode("type", FetchMode.JOIN);
		        criteria.createAlias("type", "type");
			  criteria.add(Restrictions.like("type.name","%"+festivity.getType().getName()+"%"));
		}
		if(festivity.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+festivity.getGene()+"%"));
		}
		criteria.addOrder(Order.asc("SWork"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
			return criteria.list();
	}
	
	
	@Override
	public List getAllFestivityMember(Festivity festivity,int page) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(Festivity.class);
		if(festivity.getTitle()!=null)
		{
			  criteria.add(Restrictions.like("title","%"+festivity.getTitle()+"%"));
		}
		if(festivity.getType()!=null)
		{		
				criteria.setFetchMode("type", FetchMode.JOIN);
		        criteria.createAlias("type", "type");
			  criteria.add(Restrictions.like("type.name","%"+festivity.getType().getName()+"%"));
		}
		if(festivity.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+festivity.getGene()+"%"));
		}
		criteria.add(Restrictions.eq("newStatus", festivity.getNewStatus()));
		criteria.addOrder(Order.asc("SWork"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
			return criteria.list();
	}
	
	@Override
	public int CountAllFestivity(Festivity festivity) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(Festivity.class);
		if(festivity.getTitle()!=null)
		{
			  criteria.add(Restrictions.like("title","%"+festivity.getTitle()+"%"));
		}
		if(festivity.getType()!=null)
		{		
				criteria.setFetchMode("type", FetchMode.JOIN);
		        criteria.createAlias("type", "type");
			  criteria.add(Restrictions.like("type.name","%"+festivity.getType().getName()+"%"));
		}
		if(festivity.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+festivity.getGene()+"%"));
		}
	
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	
	
	@Override
	public int CountAllFestivityMember(Festivity festivity) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(Festivity.class);
		if(festivity.getTitle()!=null)
		{
			  criteria.add(Restrictions.like("title","%"+festivity.getTitle()+"%"));
		}
		if(festivity.getType()!=null)
		{		
				criteria.setFetchMode("type", FetchMode.JOIN);
		        criteria.createAlias("type", "type");
			  criteria.add(Restrictions.like("type.name","%"+festivity.getType().getName()+"%"));
		}
		if(festivity.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+festivity.getGene()+"%"));
		}
		criteria.add(Restrictions.eq("newStatus", festivity.getNewStatus()));
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	

}
