package farm3.spring.service;

import java.util.List;

import farm3.spring.model.UnitMedicine;



public interface UnitMedicineService {
	public void add(UnitMedicine unitmedicine);
	public void edit(UnitMedicine unimedicine);
	public void delete(int id);
	public UnitMedicine getUnitMedicine(int id);
	public List getAllUnitMedicine();
	public List getcheckUnitMedicineByvalue(String value);
}
