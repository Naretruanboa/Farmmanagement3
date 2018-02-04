package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.StatusBill;



public interface StatusBillDao {
	public void add(StatusBill statusbill);
	public void edit(StatusBill statusbill);
	public void delete(int Id);
	public StatusBill getStatusBill(int Id);
	public List<StatusBill> getAllStatusBill();
}
