package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.TypeCattle;
import farm3.spring.service.TypeCattleService;


public interface TypeCattleDao {
	public void add(TypeCattle typecattle);
	public void edit(TypeCattle typecattle);
	public void delete(int Id);
	public TypeCattle getTypeCattle(int Id);
	public List<TypeCattle> getAllTypeCattle();
}
