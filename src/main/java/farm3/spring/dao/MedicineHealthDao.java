package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.MedicineHealth;


public interface MedicineHealthDao {
	public void add(MedicineHealth medicineHealth);
	public void edit(MedicineHealth medicineHealth);
	public void delete(int Id);
	public MedicineHealth getMedicineHealth(int Id);
	public List getAllMedicineHealth();
	public List getMedicineHealthByValue(String value);//ત���
}
