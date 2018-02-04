package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.StatusDisease;


public interface StatusDiseaseDao {
	public void add(StatusDisease statusdisease);
	public void edit(StatusDisease statusdisease);
	public void delete(int Id);
	public StatusDisease getStatusDisease(int Id);
	public List getAllStatusDisease();
}
