package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.AlertStorehouse;



public interface AlertStorehouseDao {
	public void add(AlertStorehouse alert);
	public void edit(AlertStorehouse alert);
	public void delete(int id);
	public AlertStorehouse getAlertStorehouse(int id);
	public List<AlertStorehouse> getAllAlertStorehouse();
}
