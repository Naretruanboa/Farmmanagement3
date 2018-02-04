package farm3.spring.service;

import java.util.List;

import farm3.spring.model.StatusDisease;


public interface StatusDiseaseService {
	public void add(StatusDisease statusdisease);
	public void edit(StatusDisease statusdisease);
	public void delete(int Id);
	public StatusDisease getStatusDisease(int Id);
	public List getAllStatusDisease();
}
