package farm3.spring.service;

import java.util.List;
import java.util.Map;

import farm3.spring.model.RawMaterialPrice;

public interface RawMaterialPriceService {

	public void add(RawMaterialPrice rawmaterialprice);
	public void edit(RawMaterialPrice rawmaterialprice);
	public void delete(int id);
	public RawMaterialPrice getRawMaterialPrice(int id);
	public List getAllRawMaterialPrice();
	public List getSearch(Map<String, String> attributes);
}
