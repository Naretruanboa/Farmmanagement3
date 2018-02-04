package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.RawMaterialOrderDao;
import farm3.spring.model.RawMaterialOrder;
import farm3.spring.service.RawMaterialOrderService;
@Service
public class RawMaterialOrderServiceImpl implements RawMaterialOrderService {
	@Autowired
	RawMaterialOrderDao rawmaterialorderdao;
	@Transactional
	public void add(RawMaterialOrder rawmaterialorder) {
		// TODO Auto-generated method stub
		rawmaterialorderdao.add(rawmaterialorder);
	}

	@Transactional
	public void edit(RawMaterialOrder rawmaterialorder) {
		// TODO Auto-generated method stub
		rawmaterialorderdao.edit(rawmaterialorder);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		rawmaterialorderdao.delete(Id);
	}

	@Transactional
	public RawMaterialOrder getRawMaterialOrder(int Id) {
		// TODO Auto-generated method stub
		return rawmaterialorderdao.getRawMaterialOrder(Id);
	}

	@Transactional
	public List<RawMaterialOrder> getAllRawMaterialOrder() {
		// TODO Auto-generated method stub
		return rawmaterialorderdao.getAllRawMaterialOrder();
	}
	@Transactional
	public List<RawMaterialOrder> getSearch(RawMaterialOrder rawmaterialorder,int page){
		return rawmaterialorderdao.getSearch(rawmaterialorder, page);
	}
	@Transactional
	public int CountAllRawMaterialOrder(RawMaterialOrder rawmaterialorder){
		return rawmaterialorderdao.CountAllRawMaterialOrder(rawmaterialorder);
	}
	@Transactional
	public List<RawMaterialOrder> getSearchReport(String Start,String End,int memid){
		return rawmaterialorderdao.getSearchReport(Start, End, memid);
	}
	@Transactional
	public List<RawMaterialOrder> getSearchReportForNextPage(String Start,String End,int memid,int page){
		return rawmaterialorderdao.getSearchReportForNextPage(Start, End, memid, page);
	}
}
