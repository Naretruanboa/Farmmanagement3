package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.MemberDao;
import farm3.spring.dao.PrivilegeDao;
import farm3.spring.model.Privilege;
import farm3.spring.service.PrivilegeService;

@Service
public class PrivilegeServiceImpl implements PrivilegeService {

	@Autowired
	private PrivilegeDao privilegeDao;
	
	@Transactional
	public void add(Privilege privilege) {
		// TODO Auto-generated method stub
		privilegeDao.add(privilege);
	}

	@Transactional
	public void edit(Privilege privilege) {
		// TODO Auto-generated method stub
		privilegeDao.edit(privilege);
	}

	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		privilegeDao.delete(id);
	}

	@Transactional
	public Privilege getPrivilege(int id) {
		// TODO Auto-generated method stub
		return privilegeDao.getPrivilege(id);
	}

	@Transactional
	public List getAllPrivilege() {
		// TODO Auto-generated method stub
		return privilegeDao.getAllPrivilege();
	}
	@Transactional
	public List getPrivilegeById(int id){
		return privilegeDao.getPrivilegeById(id);
	}
	@Transactional
	public List getPrivilegeForSetting(){
		return privilegeDao.getPrivilegeForSetting();
	}

}
