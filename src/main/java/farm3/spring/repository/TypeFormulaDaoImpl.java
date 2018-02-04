package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.TypeFormulaDao;
import farm3.spring.model.TypeFormula;
@Repository
public class TypeFormulaDaoImpl implements TypeFormulaDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(TypeFormula typeformula) {
		session.getCurrentSession().save(typeformula);
	}

	@Override
	public void edit(TypeFormula typeformula) {
		session.getCurrentSession().update(typeformula);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getTypeFormula(id));
	}

	@Override
	public TypeFormula getTypeFormula(int id) {
		return (TypeFormula) session.getCurrentSession().get(TypeFormula.class, id);
	}

	@Override
	public List getAllTypeFormula() {
		return session.getCurrentSession().createQuery("from TypeFormula").list();
	}

	@Override
	public List getSearch(Map<String, String> attributes) {
		Criteria cr = session.getCurrentSession().createCriteria(TypeFormula.class);

		for (String key : attributes.keySet()) {
			String val = attributes.get(key);
			String type = null;
			try {
				type = TypeFormula.class.getDeclaredField(key).getType().toString();
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
