package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.TypeCattleDao;
import farm3.spring.model.TypeCattle;
import farm3.spring.service.TypeCattleService;
@Service
public class TypeCattleServiceImpl implements TypeCattleService {
	
	@Autowired
	private TypeCattleDao typecattledao;

	@Transactional
	public void add(TypeCattle typecattle) {
		// TODO Auto-generated method stub
		typecattledao.add(typecattle);
	}

	@Transactional
	public void edit(TypeCattle typecattle) {
		// TODO Auto-generated method stub
		typecattledao.edit(typecattle);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		typecattledao.delete(Id);
	}

	@Transactional
	public TypeCattle getTypeCattle(int Id) {
		// TODO Auto-generated method stub
		return typecattledao.getTypeCattle(Id);
	}

	@Transactional
	public List<TypeCattle> getAllTypeCattle() {
		// TODO Auto-generated method stub
		return typecattledao.getAllTypeCattle();
	}

}
