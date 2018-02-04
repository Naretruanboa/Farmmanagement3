package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.MedicineHealthDao;
import farm3.spring.model.MedicineHealth;

@Repository
public class MedicineHealthDaoImpl implements MedicineHealthDao {
	@Autowired
	private SessionFactory session;
	@Override
	public void add(MedicineHealth medicineHealth) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(medicineHealth);
	}

	@Override
	public void edit(MedicineHealth medicineHealth) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(medicineHealth);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getMedicineHealth(Id));
	}

	@Override
	public MedicineHealth getMedicineHealth(int Id) {
		// TODO Auto-generated method stub
		return (MedicineHealth) session.getCurrentSession().get(MedicineHealth.class, Id);
	}

	@Override
	public List getAllMedicineHealth() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from MedicineHealth").list();
	}

	@Override   //àª¤ª×èÍ«éÓ
	public List getMedicineHealthByValue(String value) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from MedicineHealth where value='"+value+"'").list();
	}

}
