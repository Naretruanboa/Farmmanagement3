package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Misscarry;



public interface MisscarryService {
	public void add(Misscarry misscarry);
	public void edit(Misscarry misscarry);
	public void delete(int Id);
	public Misscarry getMisscarry(int Id);
	public List getAllMisscarry();
	public List CheckYearMisscarry(int Id,String year);
	public List getSearchMiscarry(Misscarry misscarry, int page);
	int CountAllMisscarry(Misscarry misscarry);
	public List<Misscarry> getSearchReport(String Start,String End);
}
