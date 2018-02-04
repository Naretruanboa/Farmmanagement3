package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.CattlePedigree;


public interface CattlePedigreeDao {
	public void add(CattlePedigree cattlePedigree);
	public void edit(CattlePedigree cattlePedigree);
	public void delete(int Id);
	public CattlePedigree getCattlePedigree(int Id);
	public List<CattlePedigree> getAllcattlePedigree();
}