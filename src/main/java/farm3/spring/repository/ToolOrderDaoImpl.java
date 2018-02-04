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

import farm3.spring.dao.ToolOrderDao;
import farm3.spring.model.ToolOrder;
import farm3.spring.model.ToolRelease;
@Repository
public class ToolOrderDaoImpl implements ToolOrderDao {
	@Autowired
	private SessionFactory session;
	@Override
	public void add(ToolOrder toolorder) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(toolorder);
	}

	@Override
	public void edit(ToolOrder toolorder) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(toolorder);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getToolOrder(Id));
	}

	@Override
	public ToolOrder getToolOrder(int Id) {
		// TODO Auto-generated method stub
		return (ToolOrder) session.getCurrentSession().get(ToolOrder.class, Id);
	}

	@Override
	public List<ToolOrder> getAllToolOrder() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from ToolOrder").list();
	}
	@Override
	public List<ToolOrder> getSearch(ToolOrder toolorder,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(ToolOrder.class);
		if(toolorder.getTool()!=null){
			criteria.setFetchMode("tool", FetchMode.JOIN);
			criteria.createAlias("tool", "t");
			criteria.add(Restrictions.like("t.name", "%"+toolorder.getTool().getName()+"%"));
		}
		if(toolorder.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+toolorder.getMember().getFirst()+"%"));
		}
		if(toolorder.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+toolorder.getDay()+"%"));
		}
		criteria.addOrder(Order.desc("day"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountAllToolOrder(ToolOrder toolorder){
		Criteria criteria = session.getCurrentSession().createCriteria(ToolOrder.class);
		if(toolorder.getTool()!=null){
			criteria.setFetchMode("tool", FetchMode.JOIN);
			criteria.createAlias("tool", "t");
			criteria.add(Restrictions.like("t.name", "%"+toolorder.getTool().getName()+"%"));
		}
		if(toolorder.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+toolorder.getMember().getFirst()+"%"));
		}
		if(toolorder.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+toolorder.getDay()+"%"));
		}
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	@Override
	public List<ToolOrder> getSearchReport(String Start,String End,int memid){
		if(memid==0){
			return session.getCurrentSession().createQuery("from ToolOrder where day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
		else{
			return session.getCurrentSession().createQuery
					("from ToolOrder ToolOrder where ToolOrder.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
	}
	@Override
	public List<ToolOrder> getSearchReportForNextPage(String Start,String End,int memid,int page){
		Query q=null;
		if(memid==0){
			q= session.getCurrentSession().createQuery("from ToolOrder where day BETWEEN '"+Start+"' and '"+End+"'");
		}
		else{
			q= session.getCurrentSession().createQuery
					("from ToolOrder ToolOrder where ToolOrder.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'");
		}
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}
}
