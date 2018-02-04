package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.CattleNutrientDao;
import farm3.spring.model.CattleNutrient;
import farm3.spring.model.Privilege;
@Repository
public class CattleNutrientDaoImpl implements CattleNutrientDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(CattleNutrient cattlenutrient) {
		session.getCurrentSession().save(cattlenutrient);
	}

	@Override
	public void edit(CattleNutrient cattlenutrient) {
		session.getCurrentSession().update(cattlenutrient);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getCattleNutrient(id));
	}

	@Override
	public CattleNutrient getCattleNutrient(int id) {
		return (CattleNutrient) session.getCurrentSession().get(CattleNutrient.class, id);
	}

	@Override
	public List getAllCattleNutrient() {
		return session.getCurrentSession().createQuery("from Cattle_nutrient").list();
	}

	@Override
	public List getSearch(Map<String, String> attributes) {
		Criteria cr = session.getCurrentSession().createCriteria(CattleNutrient.class);

		for (String key : attributes.keySet()) {
			String val = attributes.get(key);
			String type = null;
			try {
				type = CattleNutrient.class.getDeclaredField(key).getType().toString();
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