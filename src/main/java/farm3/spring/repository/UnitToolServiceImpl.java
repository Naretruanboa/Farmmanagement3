package farm3.spring.repository;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.UnitToolDao;
import farm3.spring.model.UnitTool;
import farm3.spring.service.UnitToolService;

@Service
public class UnitToolServiceImpl implements UnitToolService {

	@Autowired
	private UnitToolDao unittooldao;
	
	@Transactional
	public void add(UnitTool unittool) {
		// TODO Auto-generated method stub
		unittooldao.add(unittool);
	}

	@Transactional
	public void edit(UnitTool unittool) {
		// TODO Auto-generated method stub
		unittooldao.edit(unittool);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		unittooldao.delete(Id);
	}

	@Transactional
	public UnitTool getUnitTool(int Id) {
		// TODO Auto-generated method stub
		return unittooldao.getUnitTool(Id);
	}

	@Transactional
	public List getAllUnitTool() {
		// TODO Auto-generated method stub
		return unittooldao.getAllUnitTool();
	}

	@Transactional //ત���ͫ����к�
	public List getUnitToolByValue(String value) {
		// TODO Auto-generated method stub
		return unittooldao.getUnitToolByValue(value);
	}

}
