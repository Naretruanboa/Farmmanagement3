package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.TypeCowDao;
import farm3.spring.model.TypeCow;
import farm3.spring.service.TypeCowService;

@Service
public class TypeCowServiceImpl implements TypeCowService{
	

	@Autowired
	private TypeCowDao typecowDao;

	@Transactional
	public void add(TypeCow typecow) {
		typecowDao.add(typecow);
	}

	@Transactional
	public void edit(TypeCow typecow) {
		typecowDao.edit(typecow);
	}

	@Transactional
	public void delete(int id) {
		typecowDao.delete(id);
	}

	@Transactional
	public TypeCow getTypeCow(int id) {
		return typecowDao.getTypeCow(id);
	}

	@Transactional
	public List getAllTypeCow() {
		// TODO Auto-generated method stub
		return typecowDao.getAllTypeCow();
	}

	 

}
