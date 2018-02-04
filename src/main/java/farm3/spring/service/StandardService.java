package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Standard;

public interface StandardService {
	public void add(Standard Type);
	public void edit(Standard Type);
	public void delete(int id);
	public Standard getStandard(int id);
	public List getAllStandard();
}
