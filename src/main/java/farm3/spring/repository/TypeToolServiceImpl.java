package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.TypeToolDao;
import farm3.spring.model.TypeTool;
import farm3.spring.service.TypeToolService;

@Service
public class TypeToolServiceImpl implements TypeToolService {

	@Autowired
	private TypeToolDao typetooldao;
	
	
	@Transactional
	public void add(TypeTool typetool) {
		// TODO Auto-generated method stub
		typetooldao.add(typetool);
	}

	@Transactional
	public void edit(TypeTool typetool) {
		// TODO Auto-generated method stub
		typetooldao.edit(typetool);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		typetooldao.delete(Id);
	}

	@Transactional
	public TypeTool getTypeTool(int Id) {
		// TODO Auto-generated method stub
		return typetooldao.getTypeTool(Id);
	}

	@Transactional
	public List getAllTypeTool() {
		// TODO Auto-generated method stub
		return typetooldao.getAllTypeTool();
	}

	@Transactional
	public List getTypeToolByValue(String value) {
		// TODO Auto-generated method stub
		return typetooldao.getTypeToolByValue(value);
	}

}
