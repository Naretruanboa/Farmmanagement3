package farm3.spring.service;

import java.util.List;

import farm3.spring.model.AlertStorehouse;

public interface AlertStorehouseService {
	public void add(AlertStorehouse alertstorehouse);
	public void edit(AlertStorehouse alertstorehouse);
	public void delete(int id);
	public AlertStorehouse getAlertStorehouse(int id);
	public List<AlertStorehouse> getAllAlertStorehouse();
}
