package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.TypeHealth;



public interface TypeHealthDao {
	public void add(TypeHealth typehealth);
	public void edit(TypeHealth typehealth);
	public void delete(int Id);
	public TypeHealth getTypeHealth(int Id);
	public List getAllTypeHealth();
}
