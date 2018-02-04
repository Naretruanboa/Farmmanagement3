package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.ToolBorrowDao;
import farm3.spring.model.ToolBorrow;
import farm3.spring.service.ToolBorrowService;
@Service
public class ToolBorrowServiceImpl implements ToolBorrowService {
@Autowired
private ToolBorrowDao toolborrowdao;
	@Transactional
	public void add(ToolBorrow toolborrow) {
		// TODO Auto-generated method stub
		toolborrowdao.add(toolborrow);
	}

	@Transactional
	public void edit(ToolBorrow toolborrow) {
		// TODO Auto-generated method stub
		toolborrowdao.edit(toolborrow);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		toolborrowdao.delete(Id);
	}

	@Transactional
	public ToolBorrow getToolBorrow(int Id) {
		// TODO Auto-generated method stub
		return toolborrowdao.getToolBorrow(Id);
	}

	@Transactional
	public List<ToolBorrow> getAllToolBorrow() {
		// TODO Auto-generated method stub
		return toolborrowdao.getAllToolBorrow();
	}
	@Transactional
	public List<ToolBorrow> getToolBorrow(){
		return toolborrowdao.getToolBorrow();
	}
	@Transactional
	public List<ToolBorrow> getSearchReport(String Start,String End,int memid,int type){
		return toolborrowdao.getSearchReport(Start, End, memid, type);
	}
	@Transactional
	public List<ToolBorrow> getSearchReportForNextPage(String Start,String End,int memid,int type,int page){
		return toolborrowdao.getSearchReportForNextPage(Start, End, memid, type, page);
	}
}
