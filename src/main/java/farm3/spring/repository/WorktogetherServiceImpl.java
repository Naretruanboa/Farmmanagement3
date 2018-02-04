package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.WorktogetherDao;
import farm3.spring.model.Worktogether;
import farm3.spring.service.WorktogetherService;

@Service
public class WorktogetherServiceImpl implements WorktogetherService {

	@Autowired
	private WorktogetherDao worktogetherDao;

	@Transactional
	public void add(Worktogether worktogether) {
		worktogetherDao.add(worktogether);
	}

	@Transactional
	public void edit(Worktogether worktogether) {
		worktogetherDao.edit(worktogether);
	}

	@Transactional
	public void delete(int id) {
		worktogetherDao.delete(id);
	}

	@Transactional
	public Worktogether getWorktogether(int id) {
		return worktogetherDao.getWorktogether(id);
	}

	@Transactional
	public List getAllWorktogether() {
		// TODO Auto-generated method stub
		return worktogetherDao.getAllWorktogether();
	}
}
