package farm3.spring.service;

import java.util.List;

import farm3.spring.model.StatusCow;

public interface StatusCowService {
	public void add(StatusCow statuscow);
	public void edit(StatusCow statuscow);
	public void delete(int Id);
	public StatusCow getStatusCow(int Id);
	public List getAllStatusCow();
	public List getStatusCowByValue(String value);//ત���
}
