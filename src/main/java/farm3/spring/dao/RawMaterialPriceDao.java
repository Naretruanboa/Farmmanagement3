package farm3.spring.dao;

import java.util.List;
import java.util.Map;

import farm3.spring.model.RawMaterialPrice;

public interface RawMaterialPriceDao {

	public void add(RawMaterialPrice rawmaterialprice);
	public void edit(RawMaterialPrice rawmaterialprice);
	public void delete(int id);
	public RawMaterialPrice getRawMaterialPrice(int id);
	public List getAllRawMaterialPrice();
	public List getSearch(Map<String, String> attributes);
}
