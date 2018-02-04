package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Worktogether;

public interface WorktogetherService {

	public void add(Worktogether worktogether);
	public void edit(Worktogether worktogether);
	public void delete(int id);
	public Worktogether getWorktogether(int id);
	public List getAllWorktogether();	
}
