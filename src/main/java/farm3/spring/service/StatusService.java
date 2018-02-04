package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Status;

public interface StatusService {
	public void add(Status status);
	public void edit(Status status);
	public void delete(int id);
	public Status getStatus(int id);
	public List getAllStatus();
}
