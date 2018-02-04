package farm3.spring.service;

import java.util.List;

import farm3.spring.model.GroupCattle;



public interface GroupCattleService {
	public void add(GroupCattle groupcattle);
	public void edit(GroupCattle groupcattle);
	public void delete(int Id);
	public GroupCattle getGroupCattle(int Id);
	public List getAllGroupCattle();
}
