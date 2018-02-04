package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.FattenListDao;
import farm3.spring.model.FattenList;
import farm3.spring.service.FattenListService;


@Service
public class FattenListServiceImpl implements FattenListService{
	
	@Autowired
	private FattenListDao fattenlistDao;

	@Transactional
	public void add(FattenList fattenlist) {
		fattenlistDao.add(fattenlist);
	}

	@Transactional
	public void edit(FattenList fattenlist) {
		fattenlistDao.edit(fattenlist);
	}

	@Transactional
	public void delete(int id) {
		fattenlistDao.delete(id);
	}

	@Transactional
	public FattenList getFattenList(int id) {
		return fattenlistDao.getFattenList(id);
	}

	@Transactional
	public List getAllFattenList() {
		// TODO Auto-generated method stub
		return fattenlistDao.getAllFattenList();
	}

	@Transactional
	public List getAllFattenListById(int id) {
		// TODO Auto-generated method stub
		return fattenlistDao.getAllFattenListById(id);
	}
	
	@Transactional
	public List PrintById(String id) {
		// TODO Auto-generated method stub
		return fattenlistDao.PrintById(id);
	}

}
