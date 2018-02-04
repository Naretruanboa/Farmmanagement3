package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Pay;

public interface PayService {

	public void add(Pay pay);
	public void edit(Pay pay);
	public void delete(int id);
	public Pay getPay(int id);
	public List getAllPay();	
}
