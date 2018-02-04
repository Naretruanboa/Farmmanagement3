package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.PayDao;
import farm3.spring.model.Pay;
import farm3.spring.service.PayService;

@Service
public class PayServiceImpl implements PayService {

	@Autowired
	private PayDao payDao;

	@Transactional
	public void add(Pay pay) {
		payDao.add(pay);
	}

	@Transactional
	public void edit(Pay pay) {
		payDao.edit(pay);
	}

	@Transactional
	public void delete(int id) {
		payDao.delete(id);
	}

	@Transactional
	public Pay getPay(int id) {
		return payDao.getPay(id);
	}

	@Transactional
	public List getAllPay() {
		// TODO Auto-generated method stub
		return payDao.getAllPay();
	}
}
