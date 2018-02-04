package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.FormListDao;
import farm3.spring.model.FormList;
import farm3.spring.service.FormListService;


@Service
public class FormListServiceImpl implements FormListService{
	
	@Autowired
	private FormListDao formlistDao;

	@Transactional
	public void add(FormList formlist) {
		formlistDao.add(formlist);
	}

	@Transactional
	public void edit(FormList formlist) {
		formlistDao.edit(formlist);
	}

	@Transactional
	public void delete(int id) {
		formlistDao.delete(id);
	}

	@Transactional
	public FormList getFormList(int id) {
		return formlistDao.getFormList(id);
	}

 
	 
	@Transactional
	public List getAllFormList() {
		// TODO Auto-generated method stub
		return formlistDao.getAllFormList();
	}
 

}
