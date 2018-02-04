package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.TypeDairy;

public interface TypeDairyDao {
	
	public void add(TypeDairy typeDairy);
	public void edit(TypeDairy typeDairy);
	public void delete(int id);
	public TypeDairy getTypeDairy(int id);
	public List getAllTypeDairy();

	
	
}
