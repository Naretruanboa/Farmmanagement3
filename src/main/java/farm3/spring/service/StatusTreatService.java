package farm3.spring.service;

import java.util.List;

import farm3.spring.model.StatusTreat;



public interface StatusTreatService {
	public void add(StatusTreat statustreat);
	public void edit(StatusTreat statustreat);
	public void delete(int Id);
	public StatusTreat getStatusTreat(int Id);
	public List getAllStatusTreat();
}
