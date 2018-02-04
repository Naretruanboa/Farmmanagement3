package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.FormulaRecordDao;
import farm3.spring.model.FormulaRecord;
@Repository
public class FormulaRecordDaoImpl implements FormulaRecordDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(FormulaRecord formularecord) {
		session.getCurrentSession().save(formularecord);
	}

	@Override
	public void edit(FormulaRecord formularecord) {
		session.getCurrentSession().update(formularecord);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getFormulaRecord(id));
	}

	@Override
	public FormulaRecord getFormulaRecord(int id) {
		return (FormulaRecord) session.getCurrentSession().get(FormulaRecord.class, id);
	}

	@Override
	public List getAllFormulaRecord() {
		return session.getCurrentSession().createQuery("from FormulaRecord").list();
	}

	@Override
	public List getSearch(Map<String, String> attributes) {
		Criteria cr = session.getCurrentSession().createCriteria(FormulaRecord.class);

		for (String key : attributes.keySet()) {
			String val = attributes.get(key);
			String type = null;
			try {
				type = FormulaRecord.class.getDeclaredField(key).getType().toString();
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
	public List getPrintFormula(int id){
		return session.getCurrentSession().createQuery("from FormulaRecord where id = "+id).list();
	}
	
	@Override
	public List<FormulaRecord> getSearch(FormulaRecord formula,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(FormulaRecord.class);
		/*if (formula.get()!=null) {
			criteria.add(Restrictions.like("nameMaterial", "%"+formula.getNameMaterial()+"%"));
		}*/
		
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		
		return criteria.list();
		
	}
	
	@Override
	public int countAllCattle(FormulaRecord formula){
		Criteria criteria = session.getCurrentSession().createCriteria(FormulaRecord.class);
		/*if (formula.getNameMaterial()!=null) {
			criteria.add(Restrictions.like("nameMaterial", "%"+formula.getNameMaterial()+"%"));
		}*/
	return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	
	}
}