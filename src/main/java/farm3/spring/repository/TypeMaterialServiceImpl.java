package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.TypeMaterialDao;
import farm3.spring.model.TypeMaterial;
import farm3.spring.service.TypeMaterialService;

@Service
public class TypeMaterialServiceImpl implements TypeMaterialService {

	@Autowired
	private TypeMaterialDao typematerialdao;
	
	@Transactional
	public void add(TypeMaterial typematerial) {
		// TODO Auto-generated method stub
		typematerialdao.add(typematerial);
	}

	@Transactional
	public void edit(TypeMaterial typematerial) {
		// TODO Auto-generated method stub
		typematerialdao.edit(typematerial);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		typematerialdao.delete(Id);
	}

	@Transactional
	public TypeMaterial getTypeMaterial(int Id) {
		// TODO Auto-generated method stub
		return typematerialdao.getTypeMaterial(Id);
	}

	@Transactional
	public List getAllTypeMaterial() {
		// TODO Auto-generated method stub
		return typematerialdao.getAllTypeMaterial();
	}
	@Transactional
	public List getTypeMaterialByValue(String value){
		return typematerialdao.getTypeMaterialByValue(value);
	}

}
