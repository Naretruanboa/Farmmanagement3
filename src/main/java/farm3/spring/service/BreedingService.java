package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Breed;
import farm3.spring.model.Breeding;
import farm3.spring.model.Pregnant;
import farm3.spring.model.TreatmentHistory;



public interface BreedingService {
	public void add(Breeding breeding);
	public void edit(Breeding breeding);
	public void delete(int Id);
	public Breeding getBreeding(int Id);
	public List getAllBreeding();
	public List<Breeding> getSearch(Breeding breeding,int page);
	int countAllBreeding(Breeding breeding);
	public List<Breeding> getSearchReport(String Start,String End);
	public void edit(Object b);
}
