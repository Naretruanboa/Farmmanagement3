package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.Worktogether;

public interface WorktogetherDao {

	public void add(Worktogether worktogether);
	public void edit(Worktogether worktogether);
	public void delete(int id);
	public Worktogether getWorktogether(int id);
	public List getAllWorktogether();	
}
