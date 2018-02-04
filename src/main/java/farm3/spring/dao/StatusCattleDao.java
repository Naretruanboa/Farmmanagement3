package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.StatusCattle;



public interface StatusCattleDao {
	public void add(StatusCattle statuscattle);
	public void edit(StatusCattle statuscattle);
	public void delete(int Id);
	public StatusCattle getStatusCattle(int Id);
	public List getAllStatusCattle();
}
