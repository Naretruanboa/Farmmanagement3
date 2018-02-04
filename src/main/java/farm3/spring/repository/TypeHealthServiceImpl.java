package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.TypeHealthDao;
import farm3.spring.model.TypeHealth;
import farm3.spring.service.TypeHealthService;
@Service
public class TypeHealthServiceImpl implements TypeHealthService {

	@Autowired
	private TypeHealthDao typehealthdao;
	
	@Transactional
	public void add(TypeHealth typehealth) {
		// TODO Auto-generated method stub
		typehealthdao.add(typehealth);
	}

	@Override
	public void edit(TypeHealth typehealth) {
		// TODO Auto-generated method stub
		typehealthdao.edit(typehealth);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		typehealthdao.delete(Id);
	}

	@Override
	public TypeHealth getTypeHealth(int Id) {
		// TODO Auto-generated method stub
		return typehealthdao.getTypeHealth(Id);
	}

	@Override
	public List<TypeHealth> getAllTypeHealth() {
		// TODO Auto-generated method stub
		return typehealthdao.getAllTypeHealth();
	}

}
