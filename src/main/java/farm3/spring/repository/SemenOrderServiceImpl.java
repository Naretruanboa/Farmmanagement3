package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.SemenOrderDao;
import farm3.spring.model.SemenOrder;
import farm3.spring.service.SemenOrderService;
@Service
public class SemenOrderServiceImpl implements SemenOrderService {
	@Autowired
	private SemenOrderDao semenorderdao;
	
	@Transactional
	public void add(SemenOrder semenorder) {
		// TODO Auto-generated method stub
		semenorderdao.add(semenorder);
	}

	@Transactional
	public void edit(SemenOrder semenorder) {
		// TODO Auto-generated method stub
		semenorderdao.edit(semenorder);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		semenorderdao.delete(Id);
	}

	@Transactional
	public SemenOrder getSemenOrder(int Id) {
		// TODO Auto-generated method stub
		return semenorderdao.getSemenOrder(Id);
	}

	@Transactional
	public List<SemenOrder> getAllSemenOrder() {
		// TODO Auto-generated method stub
		return semenorderdao.getAllSemenOrder();
	}
	@Transactional
	public List<SemenOrder> getSearch(SemenOrder semenorder,int page){
		return semenorderdao.getSearch(semenorder, page);
	}
	@Transactional
	public int CountAllSemenOrder(SemenOrder semenorder){
		return semenorderdao.CountAllSemenOrder(semenorder);
	}
	@Transactional
	public List<SemenOrder> getSearchReport(String Start,String End,int memid){
		return semenorderdao.getSearchReport(Start, End, memid);
	}
	@Transactional
	public List<SemenOrder> getSearchReportForNextPage(String Start,String End,int memid,int page){
		return semenorderdao.getSearchReportForNextPage(Start, End, memid, page);
	}

}
