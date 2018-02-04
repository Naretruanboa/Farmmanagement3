package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.TypeBill;



public interface TypeBillDao {
	public void add(TypeBill typebill);
	public void edit(TypeBill typebill);
	public void delete(int Id);
	public TypeBill getTypeBill(int Id);
	public List<TypeBill> getAllTypeBill();
}
