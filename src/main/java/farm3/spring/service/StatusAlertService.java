package farm3.spring.service;

import java.util.List;

import farm3.spring.model.StatusAlert;



public interface StatusAlertService {
	public void add(StatusAlert statusalert);
	public void edit(StatusAlert statusalert);
	public void delete(int Id);
	public StatusAlert getStatusAlert(int Id);
	public List getAllStatusAlert();
}
