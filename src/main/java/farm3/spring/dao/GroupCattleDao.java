package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.GroupCattle;



public interface GroupCattleDao {
	public void add(GroupCattle groupcattle);
	public void edit(GroupCattle groupcattle);
	public void delete(int Id);
	public GroupCattle getGroupCattle(int Id);
	public List getAllGroupCattle();
}
