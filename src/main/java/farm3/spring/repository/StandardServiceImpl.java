package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import farm3.spring.dao.StandardDao;
import farm3.spring.dao.TypeDao;
import farm3.spring.model.Standard;
import farm3.spring.service.StandardService;

@Service
public class StandardServiceImpl implements StandardService{
	
	@Autowired
	private StandardDao standardDao;

	@Transactional
	public void add(Standard standard) {
		standardDao.add(standard);
	}

	@Transactional
	public void edit(Standard standard) {
		standardDao.edit(standard);
	}

	@Transactional
	public void delete(int id) {
		standardDao.delete(id);
	}

	@Transactional
	public Standard getStandard(int id) {
		return standardDao.getStandard(id);
	}

	@Transactional
	public List getAllStandard() {
		// TODO Auto-generated method stub
		return standardDao.getAllStandard();
	}
 
}
