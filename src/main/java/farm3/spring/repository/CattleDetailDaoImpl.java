package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.CattleDetailDao;
import farm3.spring.model.CattleDetail;
@Repository
public class CattleDetailDaoImpl implements CattleDetailDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(CattleDetail cattledetail) {
		session.getCurrentSession().save(cattledetail);
	}

	@Override
	public void edit(CattleDetail cattledetail) {
		session.getCurrentSession().update(cattledetail);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getCattleDetail(id));
	}

	@Override
	public CattleDetail getCattleDetail(int id) {
		return (CattleDetail) session.getCurrentSession().get(CattleDetail.class, id);
	}

	@Override
	public List getAllCattleDetail() {
		return session.getCurrentSession().createQuery("from CattleDetail").list();
	}

	@Override
	public List getSearch(Map<String, String> attributes) {
		Criteria cr = session.getCurrentSession().createCriteria(CattleDetail.class);

		for (String key : attributes.keySet()) {
			String val = attributes.get(key);
			String type = null;
			try {
				type = CattleDetail.class.getDeclaredField(key).getType().toString();
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
