package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.UnitNutrientDao;
import farm3.spring.model.UnitNutrient;
@Repository
public class UnitNutrientDaoImpl implements UnitNutrientDao {
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(UnitNutrient unitnutrient) {
		session.getCurrentSession().save(unitnutrient);
	}

	@Override
	public void edit(UnitNutrient unitnutrient) {
		session.getCurrentSession().update(unitnutrient);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getUnitNutrient(id));
	}

	@Override
	public UnitNutrient getUnitNutrient(int id) {
		return (UnitNutrient) session.getCurrentSession().get(UnitNutrient.class, id);
	}

	@Override
	public List getAllUnitNutrient() {
		return session.getCurrentSession().createQuery("from UnitNutrient").list();
	}

	@Override
	public List getSearch(Map<String, String> attributes) {
		Criteria cr = session.getCurrentSession().createCriteria(UnitNutrient.class);

		for (String key : attributes.keySet()) {
			String val = attributes.get(key);
			String type = null;
			try {
				type = UnitNutrient.class.getDeclaredField(key).getType().toString();
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
}
