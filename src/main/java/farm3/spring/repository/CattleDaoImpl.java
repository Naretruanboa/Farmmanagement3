package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.CattleDao;
import farm3.spring.model.Cattle;
@Repository
public class CattleDaoImpl implements CattleDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(Cattle cattle) {
		session.getCurrentSession().save(cattle);
	}

	@Override
	public void edit(Cattle cattle) {
		session.getCurrentSession().update(cattle);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getCattle(id));
	}

	@Override
	public Cattle getCattle(int id) {
		return (Cattle) session.getCurrentSession().get(Cattle.class, id);
	}

	@Override
	public List<Cattle> getAllCattle() {
		return session.getCurrentSession().createQuery("FROM Cattle").list();
	}

	@Override
	public List<Cattle> getSearch(Map<String, String> attributes) {
		Criteria cr = session.getCurrentSession().createCriteria(Cattle.class);

		for (String key : attributes.keySet()) {
			String val = attributes.get(key);
			String type = null;
			try {
				type = Cattle.class.getDeclaredField(key).getType().toString();
			} catch (Exception e1) {
				e1.printStackTrace();
			}

			if (type.equals("int")) {
				cr.add(Restrictions.eq(key, Integer.parseInt(val)));
			} else if(type.equals("double")){
				cr.add(Restrictions.eq(key, Double.parseDouble(val)));
			}else if(type.equals("float")){
				cr.add(Restrictions.eq(key, Float.parseFloat(val)));
			}else{
				cr.add(Restrictions.ilike(key, attributes.get(key)));
			}

		}
		return cr.list();
	}
	@Override
	public List<Cattle> getCattleNum(String num) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Cattle where num LIKE '%"+num+"%'").list();
	}
	
	@Override
	public List<Cattle> GetMomCattle(int s){
		return session.getCurrentSession().createQuery("from Cattle where  sex = 2 and statusCattle = 2  and teeth = "+s+" and groupCattle = 1 ").list(); //or  groupCattle = 2 
	}
	
	@Override
	public List<Cattle> GetMomCattle2(int s){
		return session.getCurrentSession().createQuery("from Cattle where  sex = 2 and statusCattle = 2  and teeth = "+s+" and groupCattle = 2").list();
	}
	
	@Override
	public List<Cattle> GetMomCattle3(int s){
		return session.getCurrentSession().createQuery("from Cattle where  sex = 2 and statusCattle = 2  and teeth = "+s+" and groupCattle = 9").list();
	}
	
	@Override
	public List<Cattle> GetFatCattle(){
		return session.getCurrentSession().createQuery("from Cattle where  sex = 1 and groupCattle = 1 and statusCattle = 2").list();
	}
	
	@Override
	public List<Cattle> GetCalves(int c){
		return session.getCurrentSession().createQuery("from Cattle Where ageWean =  "+c+" ").list();
	}
	
	@Override
	public List<Cattle> GetCalves1(int c){
		return session.getCurrentSession().createQuery("from Cattle Where statusCattle = 1 and age = "+c+" ").list();
	}
	
	@Override
	public List<Cattle> getstaTreatcattle(){
		return session.getCurrentSession().createQuery("from Cattle Where statusTreat = 2").list();
	}
	
	@Override
	public List<Cattle> getSearch(Cattle cattle,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(Cattle.class);
		if (cattle.getNum() != null) {
			criteria.add(Restrictions.like("num", "%"+cattle.getNum()+"%"));
		}
		if (cattle.getBreed()	!= null	) {
			criteria.setFetchMode("breed", FetchMode.JOIN);
			criteria.createAlias("breed", "breed");
			criteria.add(Restrictions.like("breed.value", "%"+cattle.getBreed().getValue()+"%"));
		}
		if (cattle.getNumDate() != null) {
			criteria.add(Restrictions.like("numDate", "%"+cattle.getNumDate()+"%"));
		}
		if (cattle.getMaId() != null) {
			criteria.add(Restrictions.like("maId", "%"+cattle.getMaId()+"%"));
		}
		criteria.addOrder(Order.desc("calved"));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return criteria.list();
	}
	
	@Override
	public int countAllCattle(Cattle cattle){
		Criteria criteria = session.getCurrentSession().createCriteria(Cattle.class);
		if (cattle.getNum() != null) {
			criteria.add(Restrictions.like("num", "%"+cattle.getNum()+"%"));
		}
		if (cattle.getBreed()	!= null	) {
			criteria.setFetchMode("breed", FetchMode.JOIN);
			criteria.createAlias("breed", "breed");
			criteria.add(Restrictions.like("breed.value", "%"+cattle.getBreed().getValue()+"%"));
		}
		if (cattle.getNumDate() != null) {
			criteria.add(Restrictions.like("numDate", "%"+cattle.getNumDate()+"%"));
		}
		if (cattle.getMaId() != null) {
			criteria.add(Restrictions.like("maId", "%"+cattle.getMaId()+"%"));
		}
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}

	@Override
	public Cattle getCattleId(String num){
		return (Cattle) session.getCurrentSession().createQuery("from Cattle where num = '"+num+"'").uniqueResult();
	}
	
	@Override
	public List<Cattle> getSearchReport(String Start,String End){
		return session.getCurrentSession().createQuery("from Cattle where ageWean = 0 and calved BETWEEN '"+Start+"' and '"+End+"'").list();
	}
	
	@Override
	public List<Cattle> getCattleT(){
		return session.getCurrentSession().createQuery("from Cattle where statusTreat = 1").list();
	}

}
