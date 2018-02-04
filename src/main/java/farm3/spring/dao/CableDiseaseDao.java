package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.CableDisease;
import farm3.spring.model.Disease;

public interface CableDiseaseDao {
	public void add(CableDisease cabledisease);
	public void edit(CableDisease cabledisease);
	public void delete(int Id);
	public CableDisease getCableDisease(int Id);
	public List getAllCableDisease();
}
