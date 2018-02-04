package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Bill;

public interface BillService {
	public void add(Bill bill);
	public void edit(Bill bill);
	public void delete(int Id);
	public Bill getBill(int Id);
	public List<Bill> getAllBill();
}
