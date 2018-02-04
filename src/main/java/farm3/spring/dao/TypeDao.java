package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.Type;;



public interface TypeDao {
	
	public void add(Type Type);
	public void edit(Type Type);
	public void delete(int id);
	public Type getType(int id);
	public List getAllType();
	
	
}
