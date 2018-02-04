package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.Gene;




public interface GeneDao {
	
	public void add(Gene gene);
	public void edit(Gene gene);
	public void delete(int id);
	public Gene getGene(int id);
	public List getAllGene();
	public List checkGene(String name);
	
	
	
}
