package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import farm3.spring.dao.TypeDao;
import farm3.spring.model.Type;
import farm3.spring.service.TypeService;



@Service
public class TypeServiceImpl implements TypeService{
		
	
	@Autowired
	private TypeDao TypeDao;

	@Transactional
	public void add(Type Type) {
		TypeDao.add(Type);
	}

	@Transactional
	public void edit(Type Type) {
		TypeDao.edit(Type);
	}

	@Transactional
	public void delete(int id) {
		TypeDao.delete(id);
	}

	@Transactional
	public Type getType(int id) {
		return TypeDao.getType(id);
	}

	@Transactional
	public List getAllType() {
		// TODO Auto-generated method stub
		return TypeDao.getAllType();
	}
 
	 

	
}
