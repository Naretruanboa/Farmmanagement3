package farm3.spring.service;

import java.util.List;

import farm3.spring.model.StatusMedicine;


public interface StatusMedicineService {
	public void add(StatusMedicine statusmedicine);
	public void edit(StatusMedicine statusmedicine);
	public void delete(int Id);
	public StatusMedicine getStatusMedicine(int Id);
	public List getAllStatusMedicine();
}
