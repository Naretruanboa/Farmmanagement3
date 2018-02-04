package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.TypeAlertDao;
import farm3.spring.model.TypeAlert;
import farm3.spring.service.TypeAlertService;
@Service
public class TypeAlertServiceImpl implements TypeAlertService {

	@Autowired
	private TypeAlertDao typealertdao;
	
	@Transactional
	public void add(TypeAlert typealert) {
		// TODO Auto-generated method stub
		typealertdao.add(typealert);
	}

	@Transactional
	public void edit(TypeAlert typealert) {
		// TODO Auto-generated method stub
		typealertdao.edit(typealert);
	}

	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		typealertdao.delete(id);
	}

	@Transactional
	public TypeAlert getTypeAlerte(int id) {
		// TODO Auto-generated method stub
		return typealertdao.getTypeAlerte(id);
	}

	@Transactional
	public List getAllTypeAlert() {
		// TODO Auto-generated method stub
		return typealertdao.getAllTypeAlert();
	}

	@Transactional
	public List getAllTypeAlertById(int id) {
		// TODO Auto-generated method stub
		return typealertdao.getAllTypeAlertById(id);
	}

}
