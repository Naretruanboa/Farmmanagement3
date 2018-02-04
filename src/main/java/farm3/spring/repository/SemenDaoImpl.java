package farm3.spring.repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.SemenDao;
import farm3.spring.model.Semen;
import farm3.spring.model.Tool;

@Repository
public class SemenDaoImpl implements SemenDao {
	@Autowired
	private SessionFactory session;
	
	
	@Override
	public void add(Semen semen) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(semen);
	}

	@Override
	public void edit(Semen semen) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(semen);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getSemen(Id));
	}

	@Override
	public Semen getSemen(int Id) {
		// TODO Auto-generated method stub
		return (Semen) session.getCurrentSession().get(Semen.class, Id);
	}

	@Override
	public List<Semen> getAllSemen() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Semen").list();
	}
	@Override
	public List<Semen> CheckAlertStock(int stockSemen) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Semen where statusalert=0 and quantity < "+stockSemen).list();
	}
	@Override
	public List<Semen> CheckAlertStockForNextpage(int stockSemen,int page){
		Query q = session.getCurrentSession().createQuery("from Semen where statusalert = 0 and quantity < "+stockSemen);
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		return q.list();
	}
	@Override
	public List<Semen> getAllSemenForNextpage(int page){
		Query q = session.getCurrentSession().createQuery("from Semen");
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		return q.list();
	}
	@Override //ત���ͫ��
	public List<Semen> getSemenByNameCattle(String nameCattle) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Semen where nameCattle='"+nameCattle+"' ").list();
	}
@Override
public List<Semen> getAllSemenForRelease(){
	return session.getCurrentSession().createQuery("from Semen where quantity >0").list();
}
@Override
public List<Semen> getSearch(Semen semen,int page){
	Criteria criteria = session.getCurrentSession().createCriteria(Semen.class);
	if(semen.getNameCattle()!=null){
		criteria.add(Restrictions.like("nameCattle", "%"+semen.getNameCattle()+"%"));
	}
	if(semen.getHNumber()!=null){
		criteria.add(Restrictions.like("HNumber", "%"+semen.getHNumber()+"%"));
	}
	if(semen.getBreed()!=null){
		criteria.setFetchMode("breed", FetchMode.JOIN);
		criteria.createAlias("breed", "brd");
		criteria.add(Restrictions.like("brd.value", "%"+semen.getBreed().getValue()+"%"));
	}
	
	criteria.setFirstResult((page-1)*10);
	criteria.setMaxResults(10);
	return  criteria.list();
}

@Override
public int CountAllSemen(Semen semen){
	Criteria criteria = session.getCurrentSession().createCriteria(Semen.class);
	if(semen.getNameCattle()!=null){
		criteria.add(Restrictions.like("nameCattle", "%"+semen.getNameCattle()+"%"));
	}
	if(semen.getHNumber()!=null){
		criteria.add(Restrictions.like("HNumber", "%"+semen.getHNumber()+"%"));
	}
	if(semen.getBreed()!=null){
		criteria.setFetchMode("breed", FetchMode.JOIN);
		criteria.createAlias("breed", "brd");
		criteria.add(Restrictions.like("brd.value", "%"+semen.getBreed().getValue()+"%"));
	}
	
	return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
}
@Override
public List<Semen> getSearchForRelease(Semen semen,int page){
	Criteria criteria = session.getCurrentSession().createCriteria(Semen.class);
	if(semen.getNameCattle()!=null){
		criteria.add(Restrictions.like("nameCattle", "%"+semen.getNameCattle()+"%"));
	}
	if(semen.getHNumber()!=null){
		criteria.add(Restrictions.like("HNumber", "%"+semen.getHNumber()+"%"));
	}
	if(semen.getBreed()!=null){
		criteria.setFetchMode("breed", FetchMode.JOIN);
		criteria.createAlias("breed", "brd");
		criteria.add(Restrictions.like("brd.value", "%"+semen.getBreed().getValue()+"%"));
	}
	criteria.add(Restrictions.gt("quantity", 0));
	
	criteria.setFirstResult((page-1)*10);
	criteria.setMaxResults(10);
	return  criteria.list();
}
@Override
public int CountReleaseSemen(Semen semen){
	Criteria criteria = session.getCurrentSession().createCriteria(Semen.class);
	if(semen.getNameCattle()!=null){
		criteria.add(Restrictions.like("nameCattle", "%"+semen.getNameCattle()+"%"));
	}
	if(semen.getHNumber()!=null){
		criteria.add(Restrictions.like("HNumber", "%"+semen.getHNumber()+"%"));
	}
	if(semen.getBreed()!=null){
		criteria.setFetchMode("breed", FetchMode.JOIN);
		criteria.createAlias("breed", "brd");
		criteria.add(Restrictions.like("brd.value", "%"+semen.getBreed().getValue()+"%"));
	}
	criteria.add(Restrictions.gt("quantity", 0));
	
	return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
}
}
