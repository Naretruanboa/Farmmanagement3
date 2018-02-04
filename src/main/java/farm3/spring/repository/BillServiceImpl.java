package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.BillDao;
import farm3.spring.model.Bill;
import farm3.spring.service.BillService;
@Service
public class BillServiceImpl implements BillService {
	@Autowired
	private BillDao billdao;
	
	@Transactional
	public void add(Bill bill) {
		// TODO Auto-generated method stub
		billdao.add(bill);
	}

	@Transactional
	public void edit(Bill bill) {
		// TODO Auto-generated method stub
		billdao.edit(bill);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		billdao.delete(Id);
	}

	@Transactional
	public Bill getBill(int Id) {
		// TODO Auto-generated method stub
		return billdao.getBill(Id);
	}

	@Transactional
	public List<Bill> getAllBill() {
		// TODO Auto-generated method stub
		return billdao.getAllBill();
	}

}
