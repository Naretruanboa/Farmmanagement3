package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.StatusBorn;



public interface StatusBornDao {
	public void add(StatusBorn statusborn);
	public void edit(StatusBorn statusborn);
	public void delete(int id);
	public StatusBorn getStatusBorn(int id);
	public List getAllStatusBorn();
}
