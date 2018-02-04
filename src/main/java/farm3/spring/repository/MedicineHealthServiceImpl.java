package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.MedicineHealthDao;
import farm3.spring.model.MedicineHealth;
import farm3.spring.service.MedicineHealthService;

@Service
public class MedicineHealthServiceImpl implements MedicineHealthService {

	@Autowired
	private MedicineHealthDao medicineHealthdao;
	
	@Transactional
	public void add(MedicineHealth medicineHealth) {
		// TODO Auto-generated method stub
		medicineHealthdao.add(medicineHealth);
	}

	@Transactional
	public void edit(MedicineHealth medicineHealth) {
		// TODO Auto-generated method stub
		medicineHealthdao.edit(medicineHealth);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		medicineHealthdao.delete(Id);
	}

	@Transactional
	public MedicineHealth getMedicineHealth(int Id) {
		// TODO Auto-generated method stub
		return medicineHealthdao.getMedicineHealth(Id);
	}

	@Transactional
	public List getAllMedicineHealth() {
		// TODO Auto-generated method stub
		return medicineHealthdao.getAllMedicineHealth();
	}

	@Transactional
	public List getMedicineHealthByValue(String value) {
		// TODO Auto-generated method stub
		return medicineHealthdao.getMedicineHealthByValue(value);
	}

}
