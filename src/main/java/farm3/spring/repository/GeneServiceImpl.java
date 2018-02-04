package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.GeneDao;
import farm3.spring.model.Gene;
import farm3.spring.service.GeneService;



@Service
public class GeneServiceImpl implements GeneService{
		
	
	@Autowired
	private GeneDao GeneDao;

	@Transactional
	public void add(Gene gene) {
		GeneDao.add(gene);
	}

	@Transactional
	public void edit(Gene gene) {
		GeneDao.edit(gene);
	}

	@Transactional
	public void delete(int id) {
		GeneDao.delete(id);
	}

	@Transactional
	public Gene getGene(int id) {
		return GeneDao.getGene(id);
	}

	@Transactional
	public List checkGene(String name){
		// TODO Auto-generated method stub
		return GeneDao.checkGene(name);
	}
 
	 
	@Transactional
	public List getAllGene() {
		// TODO Auto-generated method stub
		return GeneDao.getAllGene();
	}
 
	
}
