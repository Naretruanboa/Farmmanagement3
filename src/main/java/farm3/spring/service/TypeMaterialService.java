package farm3.spring.service;

import java.util.List;

import farm3.spring.model.TypeMaterial;





public interface TypeMaterialService {
	public void add(TypeMaterial typematerial);
	public void edit(TypeMaterial typematerial);
	public void delete(int Id);
	public TypeMaterial getTypeMaterial(int Id);
	public List getAllTypeMaterial();
	public List getTypeMaterialByValue(String value);
}
