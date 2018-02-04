package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.Privilege;
import farm3.spring.model.Stall;

public interface StallDao {
	public void add(Stall stall);
	public void edit(Stall stall);
	public void delete(int id);
	public Stall getStall(int id);
	public List getAllStall();
	public List getStallByValue(String value);//ત���
	
	
}
