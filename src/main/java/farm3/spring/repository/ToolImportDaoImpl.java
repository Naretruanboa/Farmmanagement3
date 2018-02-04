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

import farm3.spring.dao.ToolImportDao;
import farm3.spring.model.MedicineOrder;
import farm3.spring.model.ToolImport;
@Repository
public class ToolImportDaoImpl implements ToolImportDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(ToolImport toolimport) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(toolimport);
	}

	@Override
	public void edit(ToolImport toolimport) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(toolimport);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getToolImport(Id));
	}

	@Override
	public ToolImport getToolImport(int Id) {
		// TODO Auto-generated method stub
		return (ToolImport) session.getCurrentSession().get(ToolImport.class, Id);
	}

	@Override
	public List<ToolImport> getAllToolImport() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from ToolImport").list();
	}
	@Override
	public List<ToolImport> getSearchReport(String Start,String End,int memid){
		if(memid==0){
			return session.getCurrentSession().createQuery("from ToolImport where day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
		else{
			return session.getCurrentSession().createQuery
					("from ToolImport ToolImport where ToolImport.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
	}
	@Override
	public List<ToolImport> getSearchReportForNextPage(String Start,String End,int memid,int page){
		Query q=null;
		if(memid==0){
			q= session.getCurrentSession().createQuery("from ToolImport where day BETWEEN '"+Start+"' and '"+End+"'");
		}
		else{
			q= session.getCurrentSession().createQuery
					("from ToolImport ToolImport where ToolImport.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'");
		}
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}
	
	@Override
	public List<ToolImport> getSearch(ToolImport toolimport,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(ToolImport.class);
		if(toolimport.getTool()!=null){
			criteria.setFetchMode("tool", FetchMode.JOIN);
			criteria.createAlias("tool", "t");
			criteria.add(Restrictions.like("t.name", "%"+toolimport.getTool().getName()+"%"));
		}
		if(toolimport.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+toolimport.getMember().getFirst()+"%"));
		}
		if(toolimport.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+toolimport.getDay()+"%"));
		}
		criteria.addOrder(Order.desc("day"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountAllToolImport(ToolImport toolimport){
		Criteria criteria = session.getCurrentSession().createCriteria(ToolImport.class);
		if(toolimport.getTool()!=null){
			criteria.setFetchMode("tool", FetchMode.JOIN);
			criteria.createAlias("tool", "t");
			criteria.add(Restrictions.like("t.name", "%"+toolimport.getTool().getName()+"%"));
		}
		if(toolimport.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+toolimport.getMember().getFirst()+"%"));
		}
		if(toolimport.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+toolimport.getDay()+"%"));
		}
		
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
}
