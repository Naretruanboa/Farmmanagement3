package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.BreedDao;
import farm3.spring.model.Breed;

@Repository
public class BreedDaoImpl implements BreedDao {
	@Autowired
	private SessionFactory session;
	@Override
	public void add(Breed breed) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(breed);
	}

	@Override
	public void edit(Breed breed) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(breed);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getBreed(Id));
	}

	@Override
	public Breed getBreed(int Id) {
		// TODO Auto-generated method stub
		return (Breed) session.getCurrentSession().get(Breed.class, Id);
	}

	@Override
	public List getAllBreed() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Breed").list();
	}

	@Override   //àª¤ª×èÍ«éÓ
	public List getBreedByValue(String value) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Breed where value='"+value+"'").list();
	}

}
