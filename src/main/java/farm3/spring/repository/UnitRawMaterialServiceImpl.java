package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.UnitRawMaterialDao;
import farm3.spring.model.UnitRawMaterial;
import farm3.spring.service.UnitRawMaterialService;
@Service
public class UnitRawMaterialServiceImpl implements UnitRawMaterialService {
	@Autowired
	private UnitRawMaterialDao unitrawmaterialdao;
	@Transactional
	public void add(UnitRawMaterial unitrawmaterial) {
		// TODO Auto-generated method stub
		unitrawmaterialdao.add(unitrawmaterial);
	}

	@Transactional
	public void edit(UnitRawMaterial unitrawmaterial) {
		// TODO Auto-generated method stub
		unitrawmaterialdao.edit(unitrawmaterial);
	}

	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		unitrawmaterialdao.delete(id);
	}

	@Transactional
	public UnitRawMaterial getUnitRawMaterial(int id) {
		// TODO Auto-generated method stub
		return unitrawmaterialdao.getUnitRawMaterial(id);
	}

	@Transactional
	public List<UnitRawMaterial> getAllUnitRawMaterial() {
		// TODO Auto-generated method stub
		return unitrawmaterialdao.getAllUnitRawMaterial();
	}
	@Transactional
	public List getUnitRawMaterialByValue(String value){
		return unitrawmaterialdao.getUnitRawMaterialByValue(value);
	}

}
