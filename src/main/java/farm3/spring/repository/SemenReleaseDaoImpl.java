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

import farm3.spring.dao.SemenReleaseDao;
import farm3.spring.model.SemenImport;
import farm3.spring.model.SemenRelease;
@Repository
public class SemenReleaseDaoImpl implements SemenReleaseDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(SemenRelease semenrelease) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(semenrelease);
	}

	@Override
	public void edit(SemenRelease semenrelease) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(semenrelease);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getSemenRelease(Id));
	}

	@Override
	public SemenRelease getSemenRelease(int Id) {
		// TODO Auto-generated method stub
		return (SemenRelease) session.getCurrentSession().get(SemenRelease.class, Id);
	}

	@Override
	public List<SemenRelease> getAllSemenRelease() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from SemenRelease").list();
	}
	@Override
	public List<SemenRelease> getSearch(SemenRelease semenrelease,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(SemenRelease.class);
		if(semenrelease.getSemen()!=null){
			criteria.setFetchMode("semen", FetchMode.JOIN);
			criteria.createAlias("semen", "se");
			criteria.add(Restrictions.like("se.nameCattle", "%"+semenrelease.getSemen().getNameCattle()+"%"));
		}
		if(semenrelease.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+semenrelease.getMember().getFirst()+"%"));
		}
		if(semenrelease.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+semenrelease.getDay()+"%"));
		}
		criteria.addOrder(Order.desc("day"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountAllSemenRelease(SemenRelease semenrelease){
		Criteria criteria = session.getCurrentSession().createCriteria(SemenRelease.class);
		if(semenrelease.getSemen()!=null){
			criteria.setFetchMode("semen", FetchMode.JOIN);
			criteria.createAlias("semen", "se");
			criteria.add(Restrictions.like("se.nameCattle", "%"+semenrelease.getSemen().getNameCattle()+"%"));
		}
		if(semenrelease.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+semenrelease.getMember().getFirst()+"%"));
		}
		if(semenrelease.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+semenrelease.getDay()+"%"));
		}
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	@Override
	public List<SemenRelease> getSearchReport(String Start,String End,int memid){
		if(memid==0){
			return session.getCurrentSession().createQuery("from SemenRelease where day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
		else{
			return session.getCurrentSession().createQuery
					("from SemenRelease SemenRelease where SemenRelease.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
	}
	@Override
	public List<SemenRelease> getSearchReportForNextPage(String Start,String End,int memid,int page){
		Query q=null;
		if(memid==0){
			q= session.getCurrentSession().createQuery("from SemenRelease where day BETWEEN '"+Start+"' and '"+End+"'");
		}
		else{
			q= session.getCurrentSession().createQuery
					("from SemenRelease SemenRelease where SemenRelease.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'");
		}
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}

}
