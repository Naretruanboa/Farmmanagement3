package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Privilege;
import farm3.spring.model.Stall;

public interface StallService {
	public void add(Stall stall);
	public void edit(Stall stall);
	public void delete(int id);
	public Stall getStall(int id);
	public List getAllStall();
	public List getStallByValue(String value);//ત���
	
}
