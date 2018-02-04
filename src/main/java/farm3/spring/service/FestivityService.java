package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Festivity;

public interface FestivityService {

	public void add(Festivity festivity);
	public void edit(Festivity festivity);
	public void delete(int id);
	public Festivity getFestivity(int id);
	public List getAllFestivity();
	public List getFestivityById(int id);
	public List getAllFestivityMember();
	public List getFestivityByType(int id);
	public List CalFestivityByType();
	public List FestivityByDate(String start,String end,int i);
	public List getAllFestivity(Festivity festivity,int page);
	public List getAllFestivityMember(Festivity festivity,int page);
	public int CountAllFestivity(Festivity festivity);
	public int CountAllFestivityMember(Festivity festivity);
}
