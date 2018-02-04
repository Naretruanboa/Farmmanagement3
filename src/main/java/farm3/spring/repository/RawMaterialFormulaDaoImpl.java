package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.RawMaterialFormulaDao;
import farm3.spring.model.FormulaRecord2;
import farm3.spring.model.RawMaterialFormula;
@Repository
public class RawMaterialFormulaDaoImpl implements RawMaterialFormulaDao {
	@Autowired
	private SessionFactory session;

	@Override
	public void add(RawMaterialFormula rawmaterialformula) {
		session.getCurrentSession().save(rawmaterialformula);
		
	}

	@Override
	public void edit(RawMaterialFormula rawmaterialformula) {
		session.getCurrentSession().update(rawmaterialformula);
		
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getRawMaterialFormula(id));
		
	}

	@Override
	public RawMaterialFormula getRawMaterialFormula(int id) {
		// TODO Auto-generated method stub
		return (RawMaterialFormula) session.getCurrentSession().get(RawMaterialFormula.class, id);
	}

	@Override
	public List getAllRawMaterialFormula() {
		return session.getCurrentSession().createQuery("from RawMaterialFormula").list();
	}

	@Override
	public List getSearch(Map<String, String> attributes) {
		Criteria cr = session.getCurrentSession().createCriteria(RawMaterialFormula.class);

		for (String key : attributes.keySet()) {
			String val = attributes.get(key);
			String type = null;
			try {
				type = RawMaterialFormula.class.getDeclaredField(key).getType().toString();
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
	public int countAllCattle(RawMaterialFormula rawformula){
		Criteria criteria = session.getCurrentSession().createCriteria(RawMaterialFormula.class);
		if (rawformula.getName()!=null) {
			criteria.add(Restrictions.like("nameMaterial", "%"+rawformula.getName()+"%"));
		}
	return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	
	}

	@Override
	public List getPrintRawFormula(int id){
		return session.getCurrentSession().createQuery("from RawMaterialFormula where formulaRecord2.id = "+id).list();
	}
	
	@Override
	public List<RawMaterialFormula> getSearch(RawMaterialFormula rawformula,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(RawMaterialFormula.class);
		if (rawformula.getName()!=null) {
			criteria.add(Restrictions.like("nameMaterial", "%"+rawformula.getName()+"%"));
		}
		
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		
		return criteria.list();
		
	}
	
	
}
