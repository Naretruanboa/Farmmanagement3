package farm3.spring.service;

import java.util.List;

import farm3.spring.model.TypeHorn;



public interface TypeHornService {
	public void add(TypeHorn typehorn);
	public void edit(TypeHorn typehorn);
	public void delete(int Id);
	public TypeHorn getTypeHorn(int Id);
	public List getAllTypeHorn();
}
