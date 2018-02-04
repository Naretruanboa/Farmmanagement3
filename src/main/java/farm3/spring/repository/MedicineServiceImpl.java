package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.MedicineDao;
import farm3.spring.model.Medicine;
import farm3.spring.service.MedicineService;

@Service
public class MedicineServiceImpl implements MedicineService {


	@Autowired
	private MedicineDao medicinedao;
	
	@Transactional
	public void add(Medicine medicine) {
		// TODO Auto-generated method stub
		medicinedao.add(medicine);
	}

	@Transactional
	public void edit(Medicine medicine) {
		// TODO Auto-generated method stub
		medicinedao.edit(medicine);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		medicinedao.delete(Id);
	}

	@Transactional
	public Medicine getMedicine(int Id) {
		// TODO Auto-generated method stub
		return medicinedao.getMedicine(Id);
	}

	@Transactional
	public List getAllMedicine() {
		// TODO Auto-generated method stub
		return medicinedao.getAllMedicine();
	}
	
	@Transactional
	public List CheckAlertStock(int stockM) {
		// TODO Auto-generated method stub
		return medicinedao.CheckAlertStock(stockM);
	}
	@Transactional
	public List CheckAlertStockForNextpage(int stockM,int page){
		return medicinedao.CheckAlertStockForNextpage(stockM, page);
	}
	@Transactional
	public List<Medicine> getAllMedicineForRelease(){
		return medicinedao.getAllMedicineForRelease();
	}
	@Transactional
	public List<Medicine> getSearch(Medicine medicine,int page){
		return medicinedao.getSearch(medicine, page);
	}
	@Transactional
	public int CountAllMedicine(Medicine medicine){
		
		return medicinedao.CountAllMedicine(medicine);
	}
	@Transactional
	public List getMedicineByTradname(String tradname){
		return medicinedao.getMedicineByTradname(tradname);
	}
	@Transactional
	public List<Medicine> getSearchForRelease(Medicine medicine,int page){
		return medicinedao.getSearchForRelease(medicine, page);
	}
	@Transactional
	public int CountReleaseMedicine(Medicine medicine){
		return medicinedao.CountReleaseMedicine(medicine);
	}
	@Transactional
	public List<Medicine> getAllMedicineForNextpage(int page){
		return medicinedao.getAllMedicineForNextpage(page);
	}
	
	
	
	@Transactional
	public Medicine getMedicine2(int[] Id) {
		// TODO Auto-generated method stub
		return medicinedao.getMedicine2(Id);
	}
	@Transactional
	public List<Medicine> getNameMedBygroup(int Id) {
		// TODO Auto-generated method stub
		return medicinedao.getNameMedBygroup(Id);
	}
}
