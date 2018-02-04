package farm3.spring.service;

import java.util.List;

import farm3.spring.model.TypeCattle;


public interface TypeCattleService {
	public void add(TypeCattle typecattle);
	public void edit(TypeCattle typecattle);
	public void delete(int Id);
	public TypeCattle getTypeCattle(int Id);
	public List<TypeCattle> getAllTypeCattle();
}
