package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.ToolOrderDao;
import farm3.spring.model.ToolOrder;
import farm3.spring.service.ToolOrderService;
@Service
public class ToolOrderServiceImpl implements ToolOrderService {
	@Autowired
	private ToolOrderDao toolorderdao;
	@Transactional
	public void add(ToolOrder toolorder) {
		// TODO Auto-generated method stub
		toolorderdao.add(toolorder);
	}

	@Transactional
	public void edit(ToolOrder toolorder) {
		// TODO Auto-generated method stub
		toolorderdao.edit(toolorder);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		toolorderdao.delete(Id);
	}

	@Transactional
	public ToolOrder getToolOrder(int Id) {
		// TODO Auto-generated method stub
		return toolorderdao.getToolOrder(Id);
	}

	@Transactional
	public List<ToolOrder> getAllToolOrder() {
		// TODO Auto-generated method stub
		return toolorderdao.getAllToolOrder();
	}
	@Transactional
	public List<ToolOrder> getSearch(ToolOrder toolorder,int page){
		return toolorderdao.getSearch(toolorder, page);
	}
	@Transactional
	public int CountAllToolOrder(ToolOrder toolorder){
		return toolorderdao.CountAllToolOrder(toolorder);
	}
	@Transactional
	public List<ToolOrder> getSearchReport(String Start,String End,int memid){
		return toolorderdao.getSearchReport(Start, End, memid);
	}
	@Transactional
	public List<ToolOrder> getSearchReportForNextPage(String Start,String End,int memid,int page){
		return toolorderdao.getSearchReportForNextPage(Start, End, memid, page);
	}

}
