package farm3.spring.service;

import java.util.List;

import farm3.spring.model.TypeHealth;



public interface TypeHealthService {
	public void add(TypeHealth typehealth);
	public void edit(TypeHealth typehealth);
	public void delete(int Id);
	public TypeHealth getTypeHealth(int Id);
	public List<TypeHealth> getAllTypeHealth();
}
