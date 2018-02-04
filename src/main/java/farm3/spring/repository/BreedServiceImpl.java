package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.BreedDao;
import farm3.spring.model.Breed;
import farm3.spring.service.BreedService;

@Service
public class BreedServiceImpl implements BreedService {

	@Autowired
	private BreedDao breeddao;
	
	@Transactional
	public void add(Breed breed) {
		// TODO Auto-generated method stub
		breeddao.add(breed);
	}

	@Transactional
	public void edit(Breed breed) {
		// TODO Auto-generated method stub
		breeddao.edit(breed);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		breeddao.delete(Id);
	}

	@Transactional
	public Breed getBreed(int Id) {
		// TODO Auto-generated method stub
		return breeddao.getBreed(Id);
	}

	@Transactional
	public List getAllBreed() {
		// TODO Auto-generated method stub
		return breeddao.getAllBreed();
	}

	@Transactional
	public List getBreedByValue(String value) {
		// TODO Auto-generated method stub
		return breeddao.getBreedByValue(value);
	}

}
