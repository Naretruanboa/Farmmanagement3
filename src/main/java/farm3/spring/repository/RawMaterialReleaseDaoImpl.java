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

import farm3.spring.dao.RawMaterialReleaseDao;
import farm3.spring.model.RawMaterialOrder;
import farm3.spring.model.RawMaterialRelease;
@Repository
public class RawMaterialReleaseDaoImpl implements RawMaterialReleaseDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(RawMaterialRelease rawmaterialrelease) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(rawmaterialrelease);
	}

	@Override
	public void edit(RawMaterialRelease rawmaterialrelease) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(rawmaterialrelease);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getRawMaterialRelease(Id));
	}

	@Override
	public RawMaterialRelease getRawMaterialRelease(int Id) {
		// TODO Auto-generated method stub
		return (RawMaterialRelease) session.getCurrentSession().get(RawMaterialRelease.class, Id);
	}

	@Override
	public List<RawMaterialRelease> getAllRawMaterialRelease() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from RawMaterialRelease").list();
	}
	@Override
	public List<RawMaterialRelease> getSearch(RawMaterialRelease rawmaterialrelease,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(RawMaterialRelease.class);
		if(rawmaterialrelease.getRawMaterial()!=null){
			criteria.setFetchMode("rawMaterial", FetchMode.JOIN);
			criteria.createAlias("rawMaterial", "r");
			criteria.add(Restrictions.like("r.name", "%"+rawmaterialrelease.getRawMaterial().getName()+"%"));
		}
		if(rawmaterialrelease.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+rawmaterialrelease.getMember().getFirst()+"%"));
		}
		if(rawmaterialrelease.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+rawmaterialrelease.getDay()+"%"));
		}
		criteria.addOrder(Order.desc("day"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountAllRawMaterialRelease(RawMaterialRelease rawmaterialrelease){
		Criteria criteria = session.getCurrentSession().createCriteria(RawMaterialRelease.class);
		if(rawmaterialrelease.getRawMaterial()!=null){
			criteria.setFetchMode("rawMaterial", FetchMode.JOIN);
			criteria.createAlias("rawMaterial", "r");
			criteria.add(Restrictions.like("r.name", "%"+rawmaterialrelease.getRawMaterial().getName()+"%"));
		}
		if(rawmaterialrelease.getMember()!=null){
			criteria.setFetchMode("member", FetchMode.JOIN);
			criteria.createAlias("member", "mem");
			criteria.add(Restrictions.like("mem.first", "%"+rawmaterialrelease.getMember().getFirst()+"%"));
		}
		if(rawmaterialrelease.getDay()!=null){
			criteria.add(Restrictions.like("day", "%"+rawmaterialrelease.getDay()+"%"));
		}
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	@Override
	public List<RawMaterialRelease> getSearchReport(String Start,String End,int memid){
		if(memid==0){
			return session.getCurrentSession().createQuery("from RawMaterialRelease where day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
		else{
			return session.getCurrentSession().createQuery
					("from RawMaterialRelease raw where raw.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
	}
	@Override
	public List<RawMaterialRelease> getSearchReportForNextPage(String Start,String End,int memid,int page){
		Query q=null;
		if(memid==0){
			q= session.getCurrentSession().createQuery("from RawMaterialRelease where day BETWEEN '"+Start+"' and '"+End+"'");
		}
		else{
			q= session.getCurrentSession().createQuery
					("from RawMaterialRelease raw where raw.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'");
		}
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}
}
