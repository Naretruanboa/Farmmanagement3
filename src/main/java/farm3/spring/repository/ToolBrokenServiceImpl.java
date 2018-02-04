package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.ToolBrokenDao;
import farm3.spring.model.ToolBroken;
import farm3.spring.service.ToolBrokenService;
@Service
public class ToolBrokenServiceImpl implements ToolBrokenService {
	@Autowired
	private ToolBrokenDao toolbrokendao;
	@Transactional
	public void add(ToolBroken toolbroken) {
		// TODO Auto-generated method stub
		toolbrokendao.add(toolbroken);
	}

	@Transactional
	public void edit(ToolBroken toolbroken) {
		// TODO Auto-generated method stub
		toolbrokendao.edit(toolbroken);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		toolbrokendao.delete(Id);
	}

	@Transactional
	public ToolBroken getToolBroken(int Id) {
		// TODO Auto-generated method stub
		return toolbrokendao.getToolBroken(Id);
	}

	@Transactional
	public List<ToolBroken> getAllToolBroken() {
		// TODO Auto-generated method stub
		return toolbrokendao.getAllToolBroken();
	}

	@Transactional
	public List<ToolBroken> getSendToolBroken() {
		// TODO Auto-generated method stub
		return toolbrokendao.getSendToolBroken();
	}

	@Transactional
	public List<ToolBroken> getSearchReport(String Start, String End) {
		// TODO Auto-generated method stub
		return toolbrokendao.getSearchReport(Start, End);
	}
	@Transactional
	public List<ToolBroken> getSearchReportForNextPage(String Start,String End,int page){
		return toolbrokendao.getSearchReportForNextPage(Start, End, page);
	}

}
