package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Privilege;

public interface PrivilegeService {
	public void add(Privilege privilege);
	public void edit(Privilege privilege);
	public void delete(int id);
	public Privilege getPrivilege(int id);
	public List getAllPrivilege();
	public List getPrivilegeById(int id);
	public List getPrivilegeForSetting();
}
