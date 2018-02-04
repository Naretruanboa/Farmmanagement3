package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.GeneDao;
import farm3.spring.model.Gene;




@Repository
public class GeneDaoImpl implements GeneDao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(Gene GenType) {
		session.getCurrentSession().save(GenType);
	}

	@Override
	public void edit(Gene GenType) {
		session.getCurrentSession().update(GenType);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getGene(id));
	}

	@Override
	public Gene getGene(int id) {
		
		return (Gene) session.getCurrentSession().get(Gene.class, id);
	}

	@Override
	public List getAllGene() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Gene").list();
	}
	
	@Override
	public List checkGene(String name) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Gene where name = '"+name+"'").list();
	}
 

	
  

}
