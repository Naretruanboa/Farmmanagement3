package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Pregnant;
import farm3.spring.model.TreatmentHistory;



public interface PregnantService {
	public void add(Pregnant pregnant);
	public void edit(Pregnant pregnant);
	public void delete(int Id);
	public Pregnant getPregnant(int Id);
	public List getAllPregnant();
	public List getPregnantBynum(int s);
	public List getSearch(Pregnant pregnant,int page);
	public List getSearch(Pregnant pregnant);
	public int getPregnantByCattle(int id);
	public int getFartherIdByMomId(int id);
	public List<Pregnant> getSearchReport(String Start,String End);
}
