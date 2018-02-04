package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.RawMaterialPriceDao;
import farm3.spring.model.RawMaterialPrice;
@Repository
public class RawMaterialPriceDaoImpl implements RawMaterialPriceDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(RawMaterialPrice rawmaterialprice) {
		session.getCurrentSession().save(rawmaterialprice);
	}

	@Override
	public void edit(RawMaterialPrice rawmaterialprice) {
		session.getCurrentSession().update(rawmaterialprice);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getRawMaterialPrice(id));
	}

	@Override
	public RawMaterialPrice getRawMaterialPrice(int id) {
		return (RawMaterialPrice) session.getCurrentSession().get(RawMaterialPrice.class, id);
	}

	@Override
	public List getAllRawMaterialPrice() {
		return session.getCurrentSession().createQuery("from RawMaterialPrice").list();
	}

	@Override
	public List getSearch(Map<String, String> attributes) {
		Criteria cr = session.getCurrentSession().createCriteria(RawMaterialPrice.class);

		for (String key : attributes.keySet()) {
			String val = attributes.get(key);
			String type = null;
			try {
				type = RawMaterialPrice.class.getDeclaredField(key).getType().toString();
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
