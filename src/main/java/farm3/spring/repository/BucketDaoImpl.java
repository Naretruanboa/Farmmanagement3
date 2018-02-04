package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.BucketDao;
import farm3.spring.model.Bucket;
import farm3.spring.model.Semen;
import farm3.spring.model.Tool;

@Repository
public class BucketDaoImpl implements BucketDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Bucket bucket) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(bucket);
	}

	@Override
	public void edit(Bucket bucket) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(bucket);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getBucket(id));
	}

	@Override
	public Bucket getBucket(int id) {
		// TODO Auto-generated method stub
		return (Bucket) session.getCurrentSession().get(Bucket.class, id);
	}

	@Override
	public List getAllBucket() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Bucket").list();
	}
@Override
public List getBucketForsaveSemen(){
	return session.getCurrentSession().createQuery("from Bucket where typeBucket = 1").list();
}
@Override
public List getBucketForAddNitrogen(){
	return session.getCurrentSession().createQuery("from Bucket where typeBucket = 2").list();
}
	@Override
	public List getBucketByName(String name) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Bucket where name='"+name+"'").list();
	}
@Override
public List<Bucket> CheckAlertExpNitrogen(int day){
	return session.getCurrentSession().createQuery("from Bucket where statusalert=0 and DATEDIFF(dayExpN,curdate()) < "+day).list();
}
@Override
public List<Bucket> CheckAlertExpNitrogenForNextpage(int day,int page){
	Query q = session.getCurrentSession().createQuery("from Bucket where statusalert=0 and DATEDIFF(dayExpN,curdate()) < "+day);
	q.setFirstResult((page-1)*10);
	q.setMaxResults(10);
	
	return q.list();
}
@Override
public List<Bucket> getSearch(Bucket bucket){
	Criteria criteria = session.getCurrentSession().createCriteria(Bucket.class);
	if(bucket.getNumber()!=null){
		criteria.add(Restrictions.like("number", "%"+bucket.getNumber()+"%"));
	}
	if(bucket.getName()!=null){
		criteria.add(Restrictions.like("name", "%"+bucket.getName()+"%"));
	}
	return criteria.list();
}

@Override
public List<Bucket> getSearchViewForNextPage(Bucket bucket, int page){
	Criteria criteria = session.getCurrentSession().createCriteria(Bucket.class);
	if(bucket.getNumber()!=null)
	{
		criteria.add(Restrictions.like("number", "%"+bucket.getNumber()+"%"));
	}
	else if(bucket.getName()!=null)
	{
		criteria.add(Restrictions.like("name", "%"+bucket.getName()+"%"));
	}
	criteria.setFirstResult((page-1)*10);
	criteria.setMaxResults(10);
	return  criteria.list();
}
@Override
public int countAllBucket(Bucket bucket){
	Criteria criteria = session.getCurrentSession().createCriteria(Bucket.class);
	if(bucket.getNumber()!=null)
	{
		criteria.add(Restrictions.like("number", "%"+bucket.getNumber()+"%"));
	}
	else if(bucket.getName()!=null)
	{
		criteria.add(Restrictions.like("name", "%"+bucket.getName()+"%"));
	}
	return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
}
@Override
public List<Bucket> getSearchForAddNitrogen(Bucket bucket,int page){
	Criteria criteria = session.getCurrentSession().createCriteria(Bucket.class);
	if(bucket.getNumber()!=null){
		criteria.add(Restrictions.like("number", "%"+bucket.getNumber()+"%"));
	}
	if(bucket.getName()!=null){
		criteria.add(Restrictions.like("name", "%"+bucket.getName()+"%"));
	}
	criteria.add(Restrictions.eq("typeBucket.id",1));
	criteria.setFirstResult((page-1)*10);
	criteria.setMaxResults(10);
	return criteria.list();
}

}
