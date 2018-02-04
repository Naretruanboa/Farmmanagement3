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

import farm3.spring.dao.SemenOrderDao;
import farm3.spring.model.SemenOrder;
import farm3.spring.model.SemenRelease;
@Repository
public class SemenOrderDaoImpl implements SemenOrderDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(SemenOrder semenorder) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(semenorder);
	}

	@Override
	public void edit(SemenOrder semenorder) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(semenorder);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getSemenOrder(Id));
	}

	@Override
	public SemenOrder getSemenOrder(int Id) {
		// TODO Auto-generated method stub
		return (SemenOrder) session.getCurrentSession().get(SemenOrder.class, Id);
	}

	@Override
	public List<SemenOrder> getAllSemenOrder() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from SemenOrder").list();
	}
	@Override
	public List<SemenOrder> getSearch(SemenOrder semenorder,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(SemenOrder.class);
		if(semenorder.getSemen()!=null){
			criteria.setFetchMode("semen", FetchMode.JOIN);
			criteria.createAlias("semen", "se");
			criteria.add(Restrictions.like("se.nameCattle", "%"+semenorder.getSemen().getNameCattle()+"%"));
		}
		if(semenorder.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+semenorder.getMember().getFirst()+"%"));
		}
		if(semenorder.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+semenorder.getDay()+"%"));
		}
		criteria.addOrder(Order.desc("day"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountAllSemenOrder(SemenOrder semenorder){
		Criteria criteria = session.getCurrentSession().createCriteria(SemenOrder.class);
		if(semenorder.getSemen()!=null){
			criteria.setFetchMode("semen", FetchMode.JOIN);
			criteria.createAlias("semen", "se");
			criteria.add(Restrictions.like("se.nameCattle", "%"+semenorder.getSemen().getNameCattle()+"%"));
		}
		if(semenorder.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+semenorder.getMember().getFirst()+"%"));
		}
		if(semenorder.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+semenorder.getDay()+"%"));
		}
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	@Override
	public List<SemenOrder> getSearchReport(String Start,String End,int memid){
		if(memid==0){
			return session.getCurrentSession().createQuery("from SemenOrder where day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
		else{
			return session.getCurrentSession().createQuery
					("from SemenOrder SemenOrder where SemenOrder.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
	}
	@Override
	public List<SemenOrder> getSearchReportForNextPage(String Start,String End,int memid,int page){
		Query q=null;
		if(memid==0){
			q= session.getCurrentSession().createQuery("from SemenOrder where day BETWEEN '"+Start+"' and '"+End+"'");
		}
		else{
			q= session.getCurrentSession().createQuery
					("from SemenOrder SemenOrder where SemenOrder.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'");
		}
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}
}
