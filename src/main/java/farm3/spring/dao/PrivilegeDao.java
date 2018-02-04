package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.Privilege;

public interface PrivilegeDao {
	public void add(Privilege privilege);
	public void edit(Privilege privilege);
	public void delete(int id);
	public Privilege getPrivilege(int id);
	public List getAllPrivilege();
	public List getPrivilegeById(int id);
	public List getPrivilegeForSetting();
}
