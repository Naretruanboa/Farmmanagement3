package farm3.spring.service;

import java.util.List;

import farm3.spring.model.FattenList;

public interface FattenListService {
	
	
	public void add(FattenList fattenlist);
	public void edit(FattenList fattenlist);
	public void delete(int id);
	public FattenList getFattenList(int id);
	public List getAllFattenList();
	public List getAllFattenListById(int id);
	public List PrintById(String id);

}
