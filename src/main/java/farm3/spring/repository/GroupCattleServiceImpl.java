package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.GroupCattleDao;
import farm3.spring.model.GroupCattle;
import farm3.spring.service.GroupCattleService;

@Service
public class GroupCattleServiceImpl implements GroupCattleService {

	@Autowired
	private GroupCattleDao groupcattledao;
	
	@Transactional
	public void add(GroupCattle groupcattle) {
		// TODO Auto-generated method stub
		groupcattledao.add(groupcattle);
	}

	@Transactional
	public void edit(GroupCattle groupcattle) {
		// TODO Auto-generated method stub
		groupcattledao.edit(groupcattle);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		groupcattledao.delete(Id);
	}

	@Transactional
	public GroupCattle getGroupCattle(int Id) {
		// TODO Auto-generated method stub
		return groupcattledao.getGroupCattle(Id);
	}

	@Transactional
	public List getAllGroupCattle() {
		// TODO Auto-generated method stub
		return groupcattledao.getAllGroupCattle();
	}

}
