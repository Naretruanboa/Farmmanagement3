package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.StatusPregnant;



public interface StatusPregnantDao {
	public void add(StatusPregnant statuspregnant);
	public void edit(StatusPregnant statuspregnant);
	public void delete(int Id);
	public StatusPregnant getStatusPregnant(int Id);
	public List getAllStatusPregnant();
}
