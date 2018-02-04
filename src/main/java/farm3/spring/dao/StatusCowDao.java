package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.StatusCow;


public interface StatusCowDao {
	public void add(StatusCow statuscow);
	public void edit(StatusCow statuscow);
	public void delete(int Id);
	public StatusCow getStatusCow(int Id);
	public List getAllStatusCow();
	public List getStatusCowByValue(String value);
}
