package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.TypeNutrientDao;
import farm3.spring.model.TypeNutrient;
@Repository
public class TypeNutrientDaoImpl implements TypeNutrientDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(TypeNutrient typenutrient) {
		session.getCurrentSession().save(typenutrient);
	}

	@Override
	public void edit(TypeNutrient typenutrient) {
		session.getCurrentSession().update(typenutrient);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getTypeNutrient(id));
	}

	@Override
	public TypeNutrient getTypeNutrient(int id) {
		return (TypeNutrient) session.getCurrentSession().get(TypeNutrient.class, id);
	}

	@Override
	public List getAllTypeNutrient() {
		return session.getCurrentSession().createQuery("from TypeNutrient").list();
	}

	@Override
	public List getSearch(Map<String, String> attributes) {
		Criteria cr = session.getCurrentSession().createCriteria(TypeNutrient.class);

		for (String key : attributes.keySet()) {
			String val = attributes.get(key);
			String type = null;
			try {
				type = TypeNutrient.class.getDeclaredField(key).getType().toString();
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
