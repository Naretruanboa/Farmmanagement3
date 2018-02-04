package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Report;

public interface ReportService {

	public void add(Report report);
	public void edit(Report report);
	public void delete(int id);
	public Report getReport(int id);
	public List getAllReport();	

}
