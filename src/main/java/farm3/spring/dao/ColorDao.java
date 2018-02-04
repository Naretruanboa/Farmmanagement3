package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.Color;



public interface ColorDao {
	public void add(Color color);
	public void edit(Color color);
	public void delete(int id);
	public Color getColor(int id);
	public List<Color> getAllColor();
	public List<Color> getAllColorByValue(String value);
	public List checkColor(String name);
}
