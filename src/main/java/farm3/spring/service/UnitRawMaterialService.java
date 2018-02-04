package farm3.spring.service;

import java.util.List;

import farm3.spring.model.UnitRawMaterial;





public interface UnitRawMaterialService {
	public void add(UnitRawMaterial unitrawmaterial);
	public void edit(UnitRawMaterial unitrawmaterial);
	public void delete(int id);
	public UnitRawMaterial getUnitRawMaterial(int id);
	public List<UnitRawMaterial> getAllUnitRawMaterial();
	public List getUnitRawMaterialByValue(String value);
}
