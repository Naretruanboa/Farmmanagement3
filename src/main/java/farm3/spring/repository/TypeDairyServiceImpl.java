package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.TypeDairyDao;
import farm3.spring.model.TypeDairy;
import farm3.spring.service.TypeDairyService;

@Service
public class TypeDairyServiceImpl implements TypeDairyService{
	

	@Autowired
	private TypeDairyDao typeDairyDao;

	@Transactional
	public void delete(int id) {
		typeDairyDao.delete(id);
	}

	@Override
	public void add(TypeDairy typeDairy) {
		// TODO Auto-generated method stub
		typeDairyDao.add(typeDairy);
	}

	@Override
	public void edit(TypeDairy typeDairy) {
		// TODO Auto-generated method stub
		typeDairyDao.edit(typeDairy);
	}

	@Override
	public TypeDairy getTypeDairy(int id) {
		// TODO Auto-generated method stub
		return typeDairyDao.getTypeDairy(id);
	}

	@Override
	public List getAllTypeDairy() {
		// TODO Auto-generated method stub
		return typeDairyDao.getAllTypeDairy();
	}

	 

}
