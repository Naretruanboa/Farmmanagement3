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

import farm3.spring.dao.CattleStrainDao;
import farm3.spring.model.CattleShow;
import farm3.spring.model.CattleStrain;

@Repository
public class CattleStrainDaoImpl implements CattleStrainDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(CattleStrain cattlestrain) {
		session.getCurrentSession().save(cattlestrain);
	}

	@Override
	public void edit(CattleStrain cattlestrain) {
		session.getCurrentSession().update(cattlestrain);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getCattleStrain(id));
	}

	@Override
	public CattleStrain getCattleStrain(int id) {
		
		return (CattleStrain) session.getCurrentSession().get(CattleStrain.class, id);
	}

	@Override
	public List getAllCattleStrain() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleStrain").list();
	}
	
	
	@Override
	public List CheckCattleStrainPrivateNo(String privateNo) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleStrain where privateNo = '"+privateNo+"'").list();
	}
	
	
	@Override
	public List CheckCattleStrainName(String name) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleStrain where name = '"+name+"'").list();
	}
	
	
	@Override
	public List getAllCattleStrainByUser(int userId) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleStrain c where c.member = "+userId).list();
	}
	
	
	@Override
	public List getCattleStrainlist(int id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleStrain where id = "+id).list();
	}
	
	
	@Override
	public List CowStrainNotInFestivity(String gene,String id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleStrain where gene = '"+gene+"' and NOT id IN ("+id+")").list();
	}
	
	@Override
	public List CowStrainInFestivity(String id) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from CattleStrain where id IN ("+id+") ORDER BY bidder").list();
	}
	
	
	@Override
	public List MemberCowStrainFestivity(String id,String username,int i) {
		// TODO Auto-generated method stub
		if(i==1){
			return session.getCurrentSession().createQuery("from CattleStrain c where c.id IN ("+id+") and c.member.user = '"+username+"'").list();
		}
		else{
			return session.getCurrentSession().createQuery("from CattleStrain c where NOT c.id IN ("+id+") and c.member.user = '"+username+"'").list();
		}
		
	}
	
	
	@Override
	public List SearchCattleStrain(CattleStrain cattlestrain,int page) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(CattleStrain.class);
		if(cattlestrain.getName()!=null)
		{
			  criteria.add(Restrictions.like("name","%"+cattlestrain.getName()+"%"));
		}
		if(cattlestrain.getPrivateNo()!=null)
		{
			  criteria.add(Restrictions.like("privateNo","%"+cattlestrain.getPrivateNo()+"%"));
		}
		
		if(cattlestrain.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+cattlestrain.getGene()+"%"));
		}
		criteria.addOrder(Order.asc("id"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
			return criteria.list();
	}
	
	
	@Override
	public List SearchCattleStrainByUser(CattleStrain cattlestrain,int page)  {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(CattleStrain.class);
		if(cattlestrain.getName()!=null)
		{
			  criteria.add(Restrictions.like("name","%"+cattlestrain.getName()+"%"));
		}
		if(cattlestrain.getPrivateNo()!=null)
		{
			  criteria.add(Restrictions.like("privateNo","%"+cattlestrain.getPrivateNo()+"%"));
		}
		
		if(cattlestrain.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+cattlestrain.getGene()+"%"));
		}
		criteria.addOrder(Order.asc("id"));
		criteria.setFetchMode("member", FetchMode.JOIN);
        criteria.createAlias("member", "member");
		criteria.add(Restrictions.eq("member.id", cattlestrain.getMember().getId()));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
			return criteria.list();
	}
	
	@Override
	public int CountCattleStrain(CattleStrain cattlestrain) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(CattleStrain.class);
		if(cattlestrain.getName()!=null)
		{
			  criteria.add(Restrictions.like("name","%"+cattlestrain.getName()+"%"));
		}
		if(cattlestrain.getPrivateNo()!=null)
		{
			  criteria.add(Restrictions.like("privateNo","%"+cattlestrain.getPrivateNo()+"%"));
		}
		
		if(cattlestrain.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+cattlestrain.getGene()+"%"));
		}
	
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	
	
	@Override
	public int CountCattleStrainByUser(CattleStrain cattlestrain) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(CattleStrain.class);
		if(cattlestrain.getName()!=null)
		{
			  criteria.add(Restrictions.like("name","%"+cattlestrain.getName()+"%"));
		}
		if(cattlestrain.getPrivateNo()!=null)
		{
			  criteria.add(Restrictions.like("privateNo","%"+cattlestrain.getPrivateNo()+"%"));
		}
		
		if(cattlestrain.getGene()!=null)
		{
			  criteria.add(Restrictions.like("gene","%"+cattlestrain.getGene()+"%"));
		}
		criteria.addOrder(Order.asc("id"));
		criteria.setFetchMode("member", FetchMode.JOIN);
        criteria.createAlias("member", "member");
		criteria.add(Restrictions.eq("member.id", cattlestrain.getMember().getId()));
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}

	


}
