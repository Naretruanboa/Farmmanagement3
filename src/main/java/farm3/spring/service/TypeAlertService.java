package farm3.spring.service;

import java.util.List;

import farm3.spring.model.TypeAlert;



public interface TypeAlertService {
	public void add(TypeAlert typealert);

	public void edit(TypeAlert typealert);

	public void delete(int id);

	public TypeAlert getTypeAlerte(int id);

	public List getAllTypeAlert();

	public List getAllTypeAlertById(int id);
}
