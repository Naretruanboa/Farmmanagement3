package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.StatusCattleDao;
import farm3.spring.model.StatusCattle;
import farm3.spring.service.StatusCattleService;
@Service
public class StatusCattleServiceImpl implements StatusCattleService {

	@Autowired
	private StatusCattleDao statuscattledao;
	
	@Transactional
	public void add(StatusCattle statuscattle) {
		// TODO Auto-generated method stub
		statuscattledao.add(statuscattle);
	}

	@Transactional
	public void edit(StatusCattle statuscattle) {
		// TODO Auto-generated method stub
		statuscattledao.edit(statuscattle);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		statuscattledao.delete(Id);
	}

	@Transactional
	public StatusCattle getStatusCattle(int Id) {
		// TODO Auto-generated method stub
		return statuscattledao.getStatusCattle(Id);
	}

	@Transactional
	public List getAllStatusCattle() {
		// TODO Auto-generated method stub
		return statuscattledao.getAllStatusCattle();
	}

}
