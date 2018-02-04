package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.ColorDao;
import farm3.spring.model.Color;
import farm3.spring.service.ColorService;
@Service
public class ColorServiceImpl implements ColorService {
	@Autowired
	private ColorDao colordao;
	@Transactional
	public void add(Color color) {
		// TODO Auto-generated method stub
		colordao.add(color);
	}

	@Transactional
	public void edit(Color color) {
		// TODO Auto-generated method stub
		colordao.edit(color);
	}

	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		colordao.delete(id);
	}

	@Transactional
	public Color getColor(int id) {
		// TODO Auto-generated method stub
		return colordao.getColor(id);
	}

	@Transactional
	public List<Color> getAllColor() {
		// TODO Auto-generated method stub
		return colordao.getAllColor();
	}
	@Transactional
	public List<Color> getAllColorByValue(String value){
		return colordao.getAllColorByValue(value);
	}
	@Transactional
	public List checkColor(String name) {
		// TODO Auto-generated method stub
		return colordao.checkColor(name);
	}
 

}
