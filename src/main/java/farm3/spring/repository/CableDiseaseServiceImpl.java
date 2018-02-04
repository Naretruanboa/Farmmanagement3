package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.CableDiseaseDao;
import farm3.spring.model.CableDisease;
import farm3.spring.service.CableDiseaseService;
@Service
public class CableDiseaseServiceImpl implements CableDiseaseService {

	@Autowired
	private CableDiseaseDao cablediseasedao;
	
	@Transactional
	public void add(CableDisease cabledisease) {
		// TODO Auto-generated method stub
		cablediseasedao.add(cabledisease);
	}

	@Transactional
	public void edit(CableDisease cabledisease) {
		// TODO Auto-generated method stub
		cablediseasedao.edit(cabledisease);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		cablediseasedao.delete(Id);
	}

	@Transactional
	public CableDisease getCableDisease(int Id) {
		// TODO Auto-generated method stub
		return cablediseasedao.getCableDisease(Id);
	}

	@Transactional
	public List getAllCableDisease() {
		// TODO Auto-generated method stub
		return cablediseasedao.getAllCableDisease();
	}

}
