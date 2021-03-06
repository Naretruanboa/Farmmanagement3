package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.RawMaterialNutrientDao;
import farm3.spring.model.RawMaterialNutrient;
@Repository
public class RawMaterialNutrientDaoImpl implements RawMaterialNutrientDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(RawMaterialNutrient rawmaterialnutrient) {
		session.getCurrentSession().save(rawmaterialnutrient);
	}

	@Override
	public void edit(RawMaterialNutrient rawmaterialnutrient) {
		session.getCurrentSession().update(rawmaterialnutrient);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getRawMaterialNutrient(id));
	}

	@Override
	public RawMaterialNutrient getRawMaterialNutrient(int id) {
		return (RawMaterialNutrient) session.getCurrentSession().get(RawMaterialNutrient.class, id);
	}

	@Override
	public List getAllRawMaterialNutrient() {
		return session.getCurrentSession().createQuery("from RawMaterialNutrient").list();
	}

	@Override
	public List getSearch(Map<String, String> attributes) {
		Criteria cr = session.getCurrentSession().createCriteria(RawMaterialNutrient.class);

		for (String key : attributes.keySet()) {
			String val = attributes.get(key);
			String type = null;
			try {
				type = RawMaterialNutrient.class.getDeclaredField(key).getType().toString();
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
	public List getCheckRawmaterialById(int id){
		return session.getCurrentSession().createQuery("from RawMaterialNutrient where rawMaterial='"+id+"'").list();
	}
	
	@Override
	public List getSearch(RawMaterialNutrient rawmaterialnutrient,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(RawMaterialNutrient.class);
		if(rawmaterialnutrient.getRawMaterial() != null){
			criteria.setFetchMode("rawMaterial",FetchMode.JOIN );
			criteria.createAlias("rawMaterial", "raw");
			criteria.add(Restrictions.like("raw.name", "%"+rawmaterialnutrient.getRawMaterial().getName()+"%"));
		}
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return criteria.list();
	} //����
	
	@Override
	public int CountAllRaw(RawMaterialNutrient rawmaterialnutrient){
		Criteria criteria = session.getCurrentSession().createCriteria(RawMaterialNutrient.class);
		if(rawmaterialnutrient.getRawMaterial() != null){
			criteria.setFetchMode("rawMaterial",FetchMode.JOIN );
			criteria.createAlias("rawMaterial", "raw");
			criteria.add(Restrictions.like("raw.name", "%"+rawmaterialnutrient.getRawMaterial().getName()+"%"));
		}
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}

}
