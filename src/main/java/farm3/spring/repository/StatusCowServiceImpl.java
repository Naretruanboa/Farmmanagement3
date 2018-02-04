package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.StatusCowDao;
import farm3.spring.model.StatusCow;
import farm3.spring.service.StatusCowService;

@Service
public class StatusCowServiceImpl implements StatusCowService {

	@Autowired
	private StatusCowDao statuscowdao;
	
	@Transactional
	public void add(StatusCow statuscow) {
		// TODO Auto-generated method stub
		statuscowdao.add(statuscow);
	}

	@Transactional
	public void edit(StatusCow statuscow) {
		// TODO Auto-generated method stub
		statuscowdao.edit(statuscow);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		statuscowdao.delete(Id);
	}

	@Transactional
	public StatusCow getStatusCow(int Id) {
		// TODO Auto-generated method stub
		return statuscowdao.getStatusCow(Id);
	}

	@Transactional
	public List getAllStatusCow() {
		// TODO Auto-generated method stub
		return statuscowdao.getAllStatusCow();
	}

	@Transactional
	public List getStatusCowByValue(String value) {
		// TODO Auto-generated method stub
		return statuscowdao.getStatusCowByValue(value);
	}



	

}
