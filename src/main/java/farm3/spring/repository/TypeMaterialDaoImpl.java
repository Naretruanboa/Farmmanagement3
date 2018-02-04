package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.TypeMaterialDao;
import farm3.spring.model.TypeMaterial;



@Repository
public class TypeMaterialDaoImpl implements TypeMaterialDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(TypeMaterial typematerial) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(typematerial);
	}

	@Override
	public void edit(TypeMaterial typematerial) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(typematerial);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getTypeMaterial(Id));
	}

	@Override
	public TypeMaterial getTypeMaterial(int Id) {
		// TODO Auto-generated method stub
		return (TypeMaterial) session.getCurrentSession().get(TypeMaterial.class, Id);
	}

	@Override
	public List getAllTypeMaterial() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from TypeMaterial").list();
	}
	@Override
	public List getTypeMaterialByValue(String value){
		return session.getCurrentSession().createQuery("from TypeMaterial where value='"+value+"' ").list();
	}

}
