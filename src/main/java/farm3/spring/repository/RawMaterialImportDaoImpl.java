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

import farm3.spring.dao.RawMaterialImportDao;
import farm3.spring.model.RawMaterialImport;
import farm3.spring.model.ToolImport;
@Repository
public class RawMaterialImportDaoImpl implements RawMaterialImportDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(RawMaterialImport rawmaterialimport) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(rawmaterialimport);
	}

	@Override
	public void edit(RawMaterialImport rawmaterialimport) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(rawmaterialimport);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getRawMaterialImport(Id));
	}

	@Override
	public RawMaterialImport getRawMaterialImport(int Id) {
		// TODO Auto-generated method stub
		return (RawMaterialImport) session.getCurrentSession().get(RawMaterialImport.class, Id);
	}

	@Override
	public List<RawMaterialImport> getAllRawMaterialImport() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from RawMaterialImport").list();
	}
	
	@Override
	public List<RawMaterialImport> getSearchReport(String Start,String End,int memid){
		if(memid==0){
			return session.getCurrentSession().createQuery("from RawMaterialImport where day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
		else{
			return session.getCurrentSession().createQuery
					("from RawMaterialImport raw where raw.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'").list();
		}
	}
	@Override
	public List<RawMaterialImport> getSearchReportForNextPage(String Start,String End,int memid,int page){
		Query q=null;
		if(memid==0){
			q= session.getCurrentSession().createQuery("from RawMaterialImport where day BETWEEN '"+Start+"' and '"+End+"'");
		}
		else{
			q= session.getCurrentSession().createQuery
					("from RawMaterialImport raw where raw.member.id='"+memid+"' and day BETWEEN '"+Start+"' and '"+End+"'");
		}
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}
	
@Override //datedif �ѹ�������ź�ѹ����ش �������º��º�Ѻ�ѹ��������
public List<RawMaterialImport> CheckAlertExpRaw(int day){
	
	return session.getCurrentSession().createQuery("from RawMaterialImport where status=0 and DATEDIFF(dayExp,curdate()) < "+day).list();
}
@Override
public List<RawMaterialImport> CheckAlertExpRawForNextpage(int day,int page){
	Query q= session.getCurrentSession().createQuery("from RawMaterialImport where status=0 and DATEDIFF(dayExp,curdate()) < "+day);
	q.setFirstResult((page-1)*10);
	q.setMaxResults(10);
	return q.list();
}
@Override
public List<RawMaterialImport> getSearch(RawMaterialImport rawmaterialimport,int page){
	Criteria criteria = session.getCurrentSession().createCriteria(RawMaterialImport.class);
	if(rawmaterialimport.getRawMaterial()!=null){
		criteria.setFetchMode("rawMaterial", FetchMode.JOIN);
		criteria.createAlias("rawMaterial", "r");
		criteria.add(Restrictions.like("r.name", "%"+rawmaterialimport.getRawMaterial().getName()+"%"));
	}
	if(rawmaterialimport.getMember()!=null){
		criteria.setFetchMode("member", FetchMode.JOIN);
		criteria.createAlias("member", "mem");
		criteria.add(Restrictions.like("mem.first", "%"+rawmaterialimport.getMember().getFirst()+"%"));
	}
	if(rawmaterialimport.getDay()!=null){
		criteria.add(Restrictions.like("day", "%"+rawmaterialimport.getDay()+"%"));
	}
	criteria.addOrder(Order.desc("day"));
	criteria.setFirstResult((page-1)*10);
	criteria.setMaxResults(10);
	return  criteria.list();
}
@Override
public int CountAllRawMaterialImport(RawMaterialImport rawmaterialimport){
	Criteria criteria = session.getCurrentSession().createCriteria(RawMaterialImport.class);
	if(rawmaterialimport.getRawMaterial()!=null){
		criteria.setFetchMode("rawMaterial", FetchMode.JOIN);
		criteria.createAlias("rawMaterial", "r");
		criteria.add(Restrictions.like("r.name", "%"+rawmaterialimport.getRawMaterial().getName()+"%"));
	}
	if(rawmaterialimport.getMember()!=null){
		criteria.setFetchMode("member", FetchMode.JOIN);
		criteria.createAlias("member", "mem");
		criteria.add(Restrictions.like("mem.first", "%"+rawmaterialimport.getMember().getFirst()+"%"));
	}
	if(rawmaterialimport.getDay()!=null){
		criteria.add(Restrictions.like("day", "%"+rawmaterialimport.getDay()+"%"));
	}
	return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
}
}
