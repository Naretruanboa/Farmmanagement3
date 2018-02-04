package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.TypeCow;

public interface TypeCowDao {
	
	public void add(TypeCow typecow);
	public void edit(TypeCow typecow);
	public void delete(int id);
	public TypeCow getTypeCow(int id);
	public List getAllTypeCow();
	
	
}
