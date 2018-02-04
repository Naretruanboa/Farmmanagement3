package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.Disease;
import farm3.spring.model.GroupMedicine;

public interface DiseaseDao {
	public void add(Disease disease);
	public void edit(Disease disease);
	public void delete(int Id);
	public Disease getDisease(int Id);
	public List getAllDisease();
	public List getDiseaseName(String nameDisease);
	public List<Disease> getSearch(Disease disease , int page);
	int CountAllDisease(Disease disease);
	
}
