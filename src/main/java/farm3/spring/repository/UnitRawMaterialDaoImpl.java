package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.UnitRawMaterialDao;
import farm3.spring.model.UnitRawMaterial;
@Repository
public class UnitRawMaterialDaoImpl implements UnitRawMaterialDao {
	@Autowired
	private SessionFactory session;
	@Override
	public void add(UnitRawMaterial unitrawmaterial) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(unitrawmaterial);
	}

	@Override
	public void edit(UnitRawMaterial unitrawmaterial) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(unitrawmaterial);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getUnitRawMaterial(id));
	}

	@Override
	public UnitRawMaterial getUnitRawMaterial(int id) {
		// TODO Auto-generated method stub
		return (UnitRawMaterial) session.getCurrentSession().get(UnitRawMaterial.class, id);
	}

	@Override
	public List<UnitRawMaterial> getAllUnitRawMaterial() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from UnitRawMaterial").list();
	}
	@Override
	public List getUnitRawMaterialByValue(String value){
		return session.getCurrentSession().createQuery("from UnitRawMaterial where value = '"+value+"'").list();
	}
}
