package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.WorktogetherDao;
import farm3.spring.model.Worktogether;

@Repository
public class WorktogetherDaoImpl implements WorktogetherDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(Worktogether worktogether) {
		session.getCurrentSession().save(worktogether);
	}

	@Override
	public void edit(Worktogether worktogether) {
		session.getCurrentSession().update(worktogether);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getWorktogether(id));
	}

	@Override
	public Worktogether getWorktogether(int id) {
		
		return (Worktogether) session.getCurrentSession().get(Worktogether.class, id);
	}

	@Override
	public List getAllWorktogether() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Worktogether").list();
	}
}
