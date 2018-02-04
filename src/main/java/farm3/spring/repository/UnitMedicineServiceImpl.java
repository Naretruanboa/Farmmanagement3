package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.UnitMedicineDao;
import farm3.spring.model.UnitMedicine;
import farm3.spring.service.UnitMedicineService;


@Service
public class UnitMedicineServiceImpl implements UnitMedicineService {


	@Autowired
	private UnitMedicineDao unitmedicinedao;
	
	@Transactional
	public void add(UnitMedicine unitmedicine) {
		// TODO Auto-generated method stub
		unitmedicinedao.add(unitmedicine);
	}

	@Transactional
	public void edit(UnitMedicine unimedicine) {
		// TODO Auto-generated method stub
		unitmedicinedao.edit(unimedicine);
	}

	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		unitmedicinedao.delete(id);
	}

	@Transactional
	public UnitMedicine getUnitMedicine(int id) {
		// TODO Auto-generated method stub
		return unitmedicinedao.getUnitMedicine(id);
	}

	@Transactional
	public List getAllUnitMedicine() {
		// TODO Auto-generated method stub
		return unitmedicinedao.getAllUnitMedicine();
	}
	@Transactional
	public List getcheckUnitMedicineByvalue(String value){
		return unitmedicinedao.getcheckUnitMedicineByvalue(value);
	}

}
