package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.ReportDao;
import farm3.spring.model.Report;

@Repository
public class ReportDaoImpl implements ReportDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(Report report) {
		session.getCurrentSession().save(report);
	}

	@Override
	public void edit(Report report) {
		session.getCurrentSession().update(report);
	}

	@Override
	public void delete(int id) {
		session.getCurrentSession().delete(getReport(id));
	}

	@Override
	public Report getReport(int id) {
		
		return (Report) session.getCurrentSession().get(Report.class, id);
	}

	@Override
	public List getAllReport() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Report").list();
	}
}
