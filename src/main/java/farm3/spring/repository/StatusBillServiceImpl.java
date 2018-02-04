package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.StatusBillDao;
import farm3.spring.model.StatusBill;
import farm3.spring.service.StatusBillService;
@Service
public class StatusBillServiceImpl implements StatusBillService {
	@Autowired
	private StatusBillDao statusbilldao;
	@Transactional
	public void add(StatusBill statusbill) {
		// TODO Auto-generated method stub
		statusbilldao.add(statusbill);
	}

	@Transactional
	public void edit(StatusBill statusbill) {
		// TODO Auto-generated method stub
		statusbilldao.edit(statusbill);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		statusbilldao.delete(Id);
	}

	@Transactional
	public StatusBill getStatusBill(int Id) {
		// TODO Auto-generated method stub
		return statusbilldao.getStatusBill(Id);
	}

	@Transactional
	public List<StatusBill> getAllStatusBill() {
		// TODO Auto-generated method stub
		return statusbilldao.getAllStatusBill();
	}

}
