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

import farm3.spring.dao.SemenImportDao;
import farm3.spring.model.RawMaterialImport;
import farm3.spring.model.SemenImport;
@Repository
public class SemenImportDaoImpl implements SemenImportDao {
@Autowired
private SessionFactory session;
	@Override
	public void add(SemenImport semenimport) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(semenimport);
	}

	@Override
	public void edit(SemenImport semenimport) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(semenimport);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getSemenImport(Id));
	}

	@Override
	public SemenImport getSemenImport(int Id) {
		// TODO Auto-generated method stub
		return (SemenImport) session.getCurrentSession().get(SemenImport.class, Id);
	}

	@Override
	public List<SemenImport> getAllSemenImport() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from SemenImport").list();
	}
	@Override
	public List<SemenImport> getSearchReport(String Start,String End,int memid){
		if(memid==0){
			return session.getCurrentSession().createQuery("from SemenImport where day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
		else{
			return session.getCurrentSession().createQuery
					("from SemenImport semen where semen.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
	}
	@Override
	public List<SemenImport> getSearchReportForNextPage(String Start,String End,int memid,int page){
		Query q=null;
		if(memid==0){
			q=session.getCurrentSession().createQuery("from SemenImport where day BETWEEN '"+Start+"' and '"+End+"'");
		}
		else{
			q= session.getCurrentSession().createQuery
					("from SemenImport semen where semen.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'");
		}
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}
	@Override
	public List<SemenImport> getSearch(SemenImport semenimport,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(SemenImport.class);
		if(semenimport.getSemen()!=null){
			criteria.setFetchMode("semen", FetchMode.JOIN);
			criteria.createAlias("semen", "se");
			criteria.add(Restrictions.like("se.nameCattle", "%"+semenimport.getSemen().getNameCattle()+"%"));
		}
		if(semenimport.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+semenimport.getMember().getFirst()+"%"));
		}
		if(semenimport.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+semenimport.getDay()+"%"));
		}
		criteria.addOrder(Order.desc("day"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountAllSemenImport(SemenImport semenimport){
		Criteria criteria = session.getCurrentSession().createCriteria(SemenImport.class);
		if(semenimport.getSemen()!=null){
			criteria.setFetchMode("semen", FetchMode.JOIN);
			criteria.createAlias("semen", "se");
			criteria.add(Restrictions.like("se.nameCattle", "%"+semenimport.getSemen().getNameCattle()+"%"));
		}
		if(semenimport.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+semenimport.getMember().getFirst()+"%"));
		}
		if(semenimport.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+semenimport.getDay()+"%"));
		}
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}

}
