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

import farm3.spring.dao.ToolReleaseDao;
import farm3.spring.model.ToolImport;
import farm3.spring.model.ToolRelease;
@Repository
public class ToolReleaseDaoImpl implements ToolReleaseDao {
	@Autowired
	private SessionFactory session;
	@Override
	public void add(ToolRelease toolrelease) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(toolrelease);
	}

	@Override
	public void edit(ToolRelease toolrelease) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(toolrelease);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getToolRelease(Id));
	}

	@Override
	public ToolRelease getToolRelease(int Id) {
		// TODO Auto-generated method stub
		return (ToolRelease) session.getCurrentSession().get(ToolRelease.class, Id);
	}

	@Override
	public List<ToolRelease> getAllToolRelease() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from ToolRelease").list();
	}
	@Override
	public List<ToolRelease> getSearch(ToolRelease toolrelease,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(ToolRelease.class);
		if(toolrelease.getTool()!=null){
			criteria.setFetchMode("tool", FetchMode.JOIN);
			criteria.createAlias("tool", "t");
			criteria.add(Restrictions.like("t.name", "%"+toolrelease.getTool().getName()+"%"));
		}
		if(toolrelease.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+toolrelease.getMember().getFirst()+"%"));
		}
		if(toolrelease.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+toolrelease.getDay()+"%"));
		}
		criteria.addOrder(Order.desc("day"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountAllToolRelease(ToolRelease toolrelease){
		Criteria criteria = session.getCurrentSession().createCriteria(ToolRelease.class);
		if(toolrelease.getTool()!=null){
			criteria.setFetchMode("tool", FetchMode.JOIN);
			criteria.createAlias("tool", "t");
			criteria.add(Restrictions.like("t.name", "%"+toolrelease.getTool().getName()+"%"));
		}
		if(toolrelease.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+toolrelease.getMember().getFirst()+"%"));
		}
		if(toolrelease.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+toolrelease.getDay()+"%"));
		}
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	@Override
	public List<ToolRelease> getSearchReport(String Start,String End,int memid){
		if(memid==0){
			return session.getCurrentSession().createQuery("from ToolRelease where day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
		else{
			return session.getCurrentSession().createQuery
					("from ToolRelease ToolRelease where ToolRelease.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
	}
	@Override
	public List<ToolRelease> getSearchReportForNextPage(String Start,String End,int memid,int page){
		Query q=null;
		if(memid==0){
			q= session.getCurrentSession().createQuery("from ToolRelease where day BETWEEN '"+Start+"' and '"+End+"'");
		}
		else{
			q= session.getCurrentSession().createQuery
					("from ToolRelease ToolRelease where ToolRelease.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'");
		}
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}

}
