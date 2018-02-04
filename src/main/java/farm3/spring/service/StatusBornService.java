package farm3.spring.service;

import java.util.List;

import farm3.spring.model.StatusBorn;



public interface StatusBornService {
	public void add(StatusBorn statusborn);
	public void edit(StatusBorn statusborn);
	public void delete(int id);
	public StatusBorn getStatusBorn(int id);
	public List getAllStatusBorn();
}
