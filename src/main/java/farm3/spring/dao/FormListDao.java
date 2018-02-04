package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.FormList;


public interface FormListDao {
	
	public void add(FormList formlist);
	public void edit(FormList formlist);
	public void delete(int id);
	public FormList getFormList(int id);
	public List getAllFormList();

}
