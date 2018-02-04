package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.Sex;



public interface SexDao {
	public void add(Sex sex);
	public void edit(Sex sex);
	public void delete(int id);
	public Sex getSex(int id);
	public List getAllSex();
}
