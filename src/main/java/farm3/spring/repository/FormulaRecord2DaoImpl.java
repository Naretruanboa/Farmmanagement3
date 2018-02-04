package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.FormulaRecord2Dao;
import farm3.spring.model.Cattle;
import farm3.spring.model.FormulaRecord;
import farm3.spring.model.FormulaRecord2;
@Repository
public class FormulaRecord2DaoImpl implements FormulaRecord2Dao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(FormulaRecord2 formularecord2) {
		session.getCurrentSession().save(formularecord2);
		
	}

	@Override
	public void edit(FormulaRecord2 formularecord2) {
		session.getCurrentSession().update(formularecord2);
		
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getFormulaRecord2(id));
		
	}

	@Override
	public FormulaRecord2 getFormulaRecord2(int id) {
		return (FormulaRecord2) session.getCurrentSession().get(FormulaRecord2.class, id);
	}

	@Override
	public List getAllFormulaRecord2() {
		return session.getCurrentSession().createQuery("from FormulaRecord2").list();
	}

	@Override
	public List getSearch(Map<String, String> attributes) {
		Criteria cr = session.getCurrentSession().createCriteria(FormulaRecord2.class);

		for (String key : attributes.keySet()) {
			String val = attributes.get(key);
			String type = null;
			try {
				type = FormulaRecord2.class.getDeclaredField(key).getType().toString();
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
	public List<FormulaRecord2> getSearch(FormulaRecord2 formula2,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(FormulaRecord2.class);
		if (formula2.getSumweight()!=null) {
			criteria.add(Restrictions.like("nameMaterial", "%"+formula2.getSumweight()+"%"));
		}
		
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		
		return criteria.list();
		
	}
	
	@Override
	public int countAllCattle(FormulaRecord2 formula2){
		Criteria criteria = session.getCurrentSession().createCriteria(FormulaRecord2.class);
		if (formula2.getSumweight()!=null) {
			criteria.add(Restrictions.like("nameMaterial", "%"+formula2.getSumweight()+"%"));
		}
	return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	
	}

	@Override
	public List getPrintFormula(int id){
		return session.getCurrentSession().createQuery("from FormulaRecord2 where id = "+id).list();
	}	
}
