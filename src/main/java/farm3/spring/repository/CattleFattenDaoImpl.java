package farm3.spring.repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.CattleFattenDao;
import farm3.spring.model.CattleFatten;
import farm3.spring.model.CattleShow;


@Repository
public class CattleFattenDaoImpl implements CattleFattenDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(CattleFatten cattlefatten) {
		session.getCurrentSession().save(cattlefatten);
	}

	@Override
	public void edit(CattleFatten cattlefatten) {
		session.getCurrentSession().update(cattlefatten);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getCattleFatten(id));
	}

	@Override
	public CattleFatten getCattleFatten(int id) {
		
		return (CattleFatten) session.getCurrentSession().get(CattleFatten.class, id);
	}

	@Override
	public List getAllCattleFatten() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleFatten").list();
	}
	
	
	@Override
	public List CheckCattleFattenName(String name) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleFatten where name= '"+name+"'").list();
	}
	
	
	@Override
	public List getAllCattleFattenByUser(int userId) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleFatten c where c.member = "+userId).list();
	}
	
	
	@Override
	public List CowFattenNotInFestivity(String gene,String id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleFatten where gene= '"+gene+"' and NOT id IN ("+id+")").list();
	}
	
	
	@Override
	public List CowFattenInFestivity(String id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleFatten where id IN ("+id+")").list();
	}
	
	@Override
	public List MemberCowFattenFestivity(String id,String username,int i) {
		// TODO Auto-generated method stub
		if(i==1){
			return session.getCurrentSession().createQuery("from CattleFatten c where c.id IN ("+id+") and c.member.user = '"+username+"'").list();
		}
		else{
			return session.getCurrentSession().createQuery("from CattleFatten c where NOT c.id IN ("+id+") and c.member.user = '"+username+"'").list();
		}
		
	}
	
	
	@Override
	public List SearchCattleFatten(CattleFatten cattlefatten,int page) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(CattleFatten.class);
		if(cattlefatten.getLot()!=null)
		{
			  criteria.add(Restrictions.like("lot","%"+cattlefatten.getLot()+"%"));
		}
		
		if(cattlefatten.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+cattlefatten.getGene()+"%"));
		}
		
		criteria.addOrder(Order.asc("id"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
			return criteria.list();
	}
	
	
	@Override
	public List SearchCattleFattenByUser(CattleFatten cattlefatten,int page) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(CattleFatten.class);
		if(cattlefatten.getLot()!=null)
		{
			  criteria.add(Restrictions.like("lot","%"+cattlefatten.getLot()+"%"));
		}
		
		if(cattlefatten.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+cattlefatten.getGene()+"%"));
		}
		
		criteria.addOrder(Order.asc("id"));
		criteria.setFetchMode("member", FetchMode.JOIN);
        criteria.createAlias("member", "member");
		criteria.add(Restrictions.eq("member.id", cattlefatten.getMember().getId()));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
			return criteria.list();
	}
	
	
	@Override
	public int CountCattleFatten(CattleFatten cattlefatten) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(CattleFatten.class);
		if(cattlefatten.getLot()!=null)
		{
			  criteria.add(Restrictions.like("lot","%"+cattlefatten.getLot()+"%"));
		}
		
		if(cattlefatten.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+cattlefatten.getGene()+"%"));
		}

		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	
	
	@Override
	public int CountCattleFattenByUser(CattleFatten cattlefatten) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(CattleFatten.class);
		if(cattlefatten.getLot()!=null)
		{
			  criteria.add(Restrictions.like("lot","%"+cattlefatten.getLot()+"%"));
		}
		
		if(cattlefatten.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+cattlefatten.getGene()+"%"));
		}

		criteria.setFetchMode("member", FetchMode.JOIN);
        criteria.createAlias("member", "member");
		criteria.add(Restrictions.eq("member.id", cattlefatten.getMember().getId()));
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	
	
	
	@Override
	public List getAllCattleFatten(int id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleFatten where id ="+id).list();
	}
	

}
