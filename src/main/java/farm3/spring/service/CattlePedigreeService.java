package farm3.spring.service;

import java.util.List;

import farm3.spring.model.CattlePedigree;

public interface CattlePedigreeService {
	public void add(CattlePedigree cattlePedigree);
	public void edit(CattlePedigree cattlePedigree);
	public void delete(int Id);
	public CattlePedigree getCattlePedigree(int Id);
	public List<CattlePedigree> getAllCattlePedigree();
}