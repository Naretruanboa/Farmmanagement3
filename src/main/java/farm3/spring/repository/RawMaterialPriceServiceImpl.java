package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.RawMaterialPriceDao;
import farm3.spring.model.RawMaterialPrice;
import farm3.spring.service.RawMaterialPriceService;
@Service
public class RawMaterialPriceServiceImpl implements RawMaterialPriceService {

	@Autowired
	private RawMaterialPriceDao rawmaterialpriceDao;

	@Transactional
	public void add(RawMaterialPrice rawmaterialprice) {
		rawmaterialpriceDao.add(rawmaterialprice);
	}

	@Transactional
	public void edit(RawMaterialPrice rawmaterialprice) {
		rawmaterialpriceDao.edit(rawmaterialprice);
	}

	@Transactional
	public void delete(int id) {
		rawmaterialpriceDao.delete(id);
	}

	@Transactional
	public RawMaterialPrice getRawMaterialPrice(int id) {
		return rawmaterialpriceDao.getRawMaterialPrice(id);
	}

	@Transactional
	public List getAllRawMaterialPrice() {
		return rawmaterialpriceDao.getAllRawMaterialPrice();
	}

	@Transactional
	public List getSearch(Map<String, String> attributes) {
		return rawmaterialpriceDao.getSearch(attributes);
	}

}
