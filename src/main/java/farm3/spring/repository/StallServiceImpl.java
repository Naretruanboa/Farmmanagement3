package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.StallDao;
import farm3.spring.model.Stall;
import farm3.spring.service.StallService;

@Service
public class StallServiceImpl implements StallService {

	@Autowired
	private StallDao stalldao;
	
	@Transactional
	public void add(Stall stall) {
		// TODO Auto-generated method stub
		stalldao.add(stall);
	}

	@Transactional
	public void edit(Stall stall) {
		// TODO Auto-generated method stub
		stalldao.edit(stall);
	}

	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		stalldao.delete(id);
	}

	@Transactional
	public Stall getStall(int id) {
		// TODO Auto-generated method stub
		return stalldao.getStall(id);
	}

	@Transactional
	public List getAllStall() {
		// TODO Auto-generated method stub
		return stalldao.getAllStall();
	}
	
	@Override
	public List getStallByValue(String value) {
		// TODO Auto-generated method stub
		return stalldao.getStallByValue(value);
	}

	
	

}
