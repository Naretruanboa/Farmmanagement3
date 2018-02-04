package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.CattleDetailDao;
import farm3.spring.model.CattleDetail;
import farm3.spring.service.CattleDetailService;
@Service
public class CattleDetailServiceImpl implements CattleDetailService {

	@Autowired
	private CattleDetailDao cattledetailDao;

	@Transactional
	public void add(CattleDetail cattledetail) {
		cattledetailDao.add(cattledetail);
	}

	@Transactional
	public void edit(CattleDetail cattledetail) {
		cattledetailDao.edit(cattledetail);
	}

	@Transactional
	public void delete(int id) {
		cattledetailDao.delete(id);
	}

	@Transactional
	public CattleDetail getCattleDetail(int id) {
		return cattledetailDao.getCattleDetail(id);
	}

	@Transactional
	public List getAllCattleDetail() {
		return cattledetailDao.getAllCattleDetail();
	}

	@Transactional
	public List getSearch(Map<String, String> attributes) {
		return cattledetailDao.getSearch(attributes);
	}

}