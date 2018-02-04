package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.ColorDao;
import farm3.spring.model.Color;
@Repository
public class ColorDaoImpl implements ColorDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Color color) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(color);
	}

	@Override
	public void edit(Color color) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(color);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getColor(id));
	}

	@Override
	public Color getColor(int id) {
		// TODO Auto-generated method stub
		return (Color) session.getCurrentSession().get(Color.class, id);
	}

	@Override
	public List<Color> getAllColor() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Color").list();
	}
	@Override
	public List<Color> getAllColorByValue(String value){
		return session.getCurrentSession().createQuery("from Color where value = '"+value+"'").list();
	}
	@Override
	public List checkColor(String name) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Color where value = '"+name+"'").list();
	}

}
