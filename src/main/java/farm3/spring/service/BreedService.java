package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Breed;

public interface BreedService {
	public void add(Breed breed);
	public void edit(Breed breed);
	public void delete(int Id);
	public Breed getBreed(int Id);
	public List getAllBreed();
	public List getBreedByValue(String value);//ત���
}
