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

import farm3.spring.dao.RawMaterialOrderDao;
import farm3.spring.model.RawMaterialImport;
import farm3.spring.model.RawMaterialOrder;
@Repository
public class RawMaterialOrderDaoImpl implements RawMaterialOrderDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(RawMaterialOrder rawmaterialorder) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(rawmaterialorder);
	}

	@Override
	public void edit(RawMaterialOrder rawmaterialorder) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(rawmaterialorder);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getRawMaterialOrder(Id));
	}

	@Override
	public RawMaterialOrder getRawMaterialOrder(int Id) {
		// TODO Auto-generated method stub
		return (RawMaterialOrder) session.getCurrentSession().get(RawMaterialOrder.class, Id);
	}

	@Override
	public List<RawMaterialOrder> getAllRawMaterialOrder() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from RawMaterialOrder").list();
	}
	@Override
	public List<RawMaterialOrder> getSearch(RawMaterialOrder rawmaterialorder,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(RawMaterialOrder.class);
		if(rawmaterialorder.getRawMaterial()!=null){
			criteria.setFetchMode("rawMaterial", FetchMode.JOIN);
			criteria.createAlias("rawMaterial", "r");
			criteria.add(Restrictions.like("r.name", "%"+rawmaterialorder.getRawMaterial().getName()+"%"));
		}
		if(rawmaterialorder.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+rawmaterialorder.getMember().getFirst()+"%"));
		}
		if(rawmaterialorder.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+rawmaterialorder.getDay()+"%"));
		}
		criteria.addOrder(Order.desc("day"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountAllRawMaterialOrder(RawMaterialOrder rawmaterialorder){
		Criteria criteria = session.getCurrentSession().createCriteria(RawMaterialOrder.class);
		if(rawmaterialorder.getRawMaterial()!=null){
			criteria.setFetchMode("rawMaterial", FetchMode.JOIN);
			criteria.createAlias("rawMaterial", "r");
			criteria.add(Restrictions.like("r.name", "%"+rawmaterialorder.getRawMaterial().getName()+"%"));
		}
		if(rawmaterialorder.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+rawmaterialorder.getMember().getFirst()+"%"));
		}
		if(rawmaterialorder.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+rawmaterialorder.getDay()+"%"));
		}
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	@Override
	public List<RawMaterialOrder> getSearchReport(String Start,String End,int memid){
		if(memid==0){
			return session.getCurrentSession().createQuery("from RawMaterialOrder where day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
		else{
			return session.getCurrentSession().createQuery
					("from RawMaterialOrder raw where raw.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
	}
	@Override
	public List<RawMaterialOrder> getSearchReportForNextPage(String Start,String End,int memid,int page){
		Query q=null;
		if(memid==0){
			q= session.getCurrentSession().createQuery("from RawMaterialOrder where day BETWEEN '"+Start+"' and '"+End+"'");
		}
		else{
			q= session.getCurrentSession().createQuery
					("from RawMaterialOrder raw where raw.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'");
		}
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}
}
