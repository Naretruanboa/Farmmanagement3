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

import farm3.spring.dao.CattleShowDao;
import farm3.spring.model.CattleShow;
import farm3.spring.model.Festivity;



@Repository
public class CattleShowDaoImpl implements CattleShowDao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(CattleShow cattleshow) {
		session.getCurrentSession().save(cattleshow);
	}

	@Override
	public void edit(CattleShow cattleshow) {
		session.getCurrentSession().update(cattleshow);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getCattleShow(id));
	}

	@Override
	public CattleShow getCattleShow(int id) {
		
		return (CattleShow) session.getCurrentSession().get(CattleShow.class, id);
	}

	@Override
	public List getAllCattleShow() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleShow").list();
	}

	@Override
	public List CheckCattleShowName(String name) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleShow where name = '"+name+"'").list();
	}

	@Override
	public List getAllCattleShowByUser(int userId) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleShow c where c.member ="+userId).list();
	}
	

	@Override
	public List CowShowNotInFestivity(String name,String id){
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleShow where gene = '"+name+"' and NOT id IN ("+id+")").list();
	}
	
	
	@Override
	public List CowShowInFestivity(String id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleShow c where c.id IN ("+id+")").list();
	}
	
	@Override
	public List MemberCowShowFestivity(String id,String username,int i) {
		// TODO Auto-generated method stub
		Query query=null;
		if(i==1){
			query = session.getCurrentSession().createQuery("from CattleShow c where c.id IN ("+id+") and c.member.user = '"+username+"'");
		}
		if(i==2){
			query = session.getCurrentSession().createQuery("from CattleShow c where NOT c.id IN ("+id+") and c.member.user = '"+username+"'");
		}
		return query.list();
	}
	
	
	@Override
	public List PrintById(String id,String sex) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleShow where sex = '"+sex+"' and id IN ("+id+") ").list();
	}
  
	
	
	@Override
	public int getDateDiff(int id) {
		// TODO Auto-generated method stub
		return (int) session.getCurrentSession().createQuery("select datediff(CURDATE(),birthday) from CattleShow c where c.id ="+id).uniqueResult();
	}
	
	@Override
	public List CowShowInStandard(String id,int start,int end) {
		// TODO Auto-generated method stub

		return session.getCurrentSession().createQuery("from CattleShow c where c.id IN ("+id+") and ( datediff(CURDATE(),c.birthday) BETWEEN "+start+" and "+end+")").list();
	
		
	}
	
	@Override
	public List SearchCattleShow(CattleShow cattleshow,int page) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(CattleShow.class);
		if(cattleshow.getName()!=null)
		{
			  criteria.add(Restrictions.like("name","%"+cattleshow.getName()+"%"));
		}
		if(cattleshow.getFather()!=null)
		{
			  criteria.add(Restrictions.like("father","%"+cattleshow.getFather()+"%"));
		}
		if(cattleshow.getMother()!=null)
		{
			  criteria.add(Restrictions.like("mother","%"+cattleshow.getMother()+"%"));
		}
		if(cattleshow.getMember()!=null)
		{		
				criteria.setFetchMode("member", FetchMode.JOIN);
		        criteria.createAlias("member", "member");
			  criteria.add(Restrictions.like("member.first","%"+cattleshow.getMember().getFirst()+"%"));
		}
		if(cattleshow.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+cattleshow.getGene()+"%"));
		}
		criteria.addOrder(Order.asc("id"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
			return criteria.list();
	}
	
	
	@Override
	public List SearchCattleShowByUser(CattleShow cattleshow,int page)  {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(CattleShow.class);
		
		if(cattleshow.getName()!=null)
		{
			  criteria.add(Restrictions.like("name","%"+cattleshow.getName()+"%"));
		}
		if(cattleshow.getFather()!=null)
		{
			  criteria.add(Restrictions.like("father","%"+cattleshow.getFather()+"%"));
		}
		if(cattleshow.getMother()!=null)
		{
			  criteria.add(Restrictions.like("mother","%"+cattleshow.getMother()+"%"));
		}
		/*if(cattleshow.getMember()!=null)
		{		
			
			  criteria.add(Restrictions.like("member.name","%"+cattleshow.getMember().getName()+"%"));
		}*/
		if(cattleshow.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+cattleshow.getGene()+"%"));
		}
		criteria.addOrder(Order.asc("id"));
		criteria.setFetchMode("member", FetchMode.JOIN);
        criteria.createAlias("member", "member");
		criteria.add(Restrictions.eq("member.id", cattleshow.getMember().getId()));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
			return criteria.list();
	}
	
	@Override
	public int CountCattleShow(CattleShow cattleshow) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(CattleShow.class);
		if(cattleshow.getName()!=null)
		{
			  criteria.add(Restrictions.like("name","%"+cattleshow.getName()+"%"));
		}
		if(cattleshow.getFather()!=null)
		{
			  criteria.add(Restrictions.like("father","%"+cattleshow.getFather()+"%"));
		}
		if(cattleshow.getMother()!=null)
		{
			  criteria.add(Restrictions.like("mother","%"+cattleshow.getMother()+"%"));
		}
		if(cattleshow.getMember()!=null)
		{		
				criteria.setFetchMode("member", FetchMode.JOIN);
		        criteria.createAlias("member", "member");
			  criteria.add(Restrictions.like("member.first","%"+cattleshow.getMember().getFirst()+"%"));
		}
		if(cattleshow.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+cattleshow.getGene()+"%"));
		}
	
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	
	
	@Override
	public int CountCattleShowByUser(CattleShow cattleshow) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(CattleShow.class);
		if(cattleshow.getName()!=null)
		{
			  criteria.add(Restrictions.like("name","%"+cattleshow.getName()+"%"));
		}
		if(cattleshow.getFather()!=null)
		{
			  criteria.add(Restrictions.like("father","%"+cattleshow.getFather()+"%"));
		}
		if(cattleshow.getMother()!=null)
		{
			  criteria.add(Restrictions.like("mother","%"+cattleshow.getMother()+"%"));
		}
		/*if(cattleshow.getMember()!=null)
		{		
			
			  criteria.add(Restrictions.like("member.name","%"+cattleshow.getMember().getName()+"%"));
		}*/
		if(cattleshow.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+cattleshow.getGene()+"%"));
		}
		criteria.setFetchMode("member", FetchMode.JOIN);
        criteria.createAlias("member", "member");
		criteria.add(Restrictions.eq("member.id", cattleshow.getMember().getId()));
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	
	
	@Override
	public List getAllCattleShow(int id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleShow where id = "+id).list();
	}


}
