package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.TypeBillDao;
import farm3.spring.model.TypeBill;
import farm3.spring.service.TypeBillService;
@Service
public class TypeBillServiceImpl implements TypeBillService {
	@Autowired
	TypeBillDao typebilldao;
	@Transactional
	public void add(TypeBill typebill) {
		// TODO Auto-generated method stub
		typebilldao.add(typebill);
	}

	@Transactional
	public void edit(TypeBill typebill) {
		// TODO Auto-generated method stub
		typebilldao.edit(typebill);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		typebilldao.delete(Id);
	}

	@Transactional
	public TypeBill getTypeBill(int Id) {
		// TODO Auto-generated method stub
		return typebilldao.getTypeBill(Id);
	}

	@Transactional
	public List<TypeBill> getAllTypeBill() {
		// TODO Auto-generated method stub
		return typebilldao.getAllTypeBill();
	}

}
