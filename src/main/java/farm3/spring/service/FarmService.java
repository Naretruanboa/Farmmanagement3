package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Farm;

public interface FarmService {
	public void add(Farm farm);
	public void edit(Farm farm);
	public void delete(int id);
	public Farm getFarm(int id);
	public List<Farm> getAllFarm();
}
