package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import farm3.spring.dao.ReportDao;
import farm3.spring.model.Report;
import farm3.spring.service.ReportService;

@Service
public class ReportServiceImpl implements ReportService {

	@Autowired
	private ReportDao reportDao;

	@Transactional
	public void add(Report report) {
		reportDao.add(report);
	}

	@Transactional
	public void edit(Report report) {
		reportDao.edit(report);
	}

	@Transactional
	public void delete(int id) {
		reportDao.delete(id);
	}

	@Transactional
	public Report getReport(int id) {
		return reportDao.getReport(id);
	}

	@Transactional
	public List getAllReport() {
		// TODO Auto-generated method stub
		return reportDao.getAllReport();
	}
}
