package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.ToolReleaseDao;
import farm3.spring.model.ToolRelease;
import farm3.spring.service.ToolReleaseService;
@Service
public class ToolReleaseServiceImpl implements ToolReleaseService {
	@Autowired
	private ToolReleaseDao toolreleasedao;
	@Transactional
	public void add(ToolRelease toolrelease) {
		// TODO Auto-generated method stub
		toolreleasedao.add(toolrelease);
	}

	@Transactional
	public void edit(ToolRelease toolrelease) {
		// TODO Auto-generated method stub
		toolreleasedao.edit(toolrelease);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		toolreleasedao.delete(Id);
	}

	@Transactional
	public ToolRelease getToolRelease(int Id) {
		// TODO Auto-generated method stub
		return toolreleasedao.getToolRelease(Id);
	}

	@Transactional
	public List<ToolRelease> getAllToolRelease() {
		// TODO Auto-generated method stub
		return toolreleasedao.getAllToolRelease();
	}
	@Transactional
	public List<ToolRelease> getSearch(ToolRelease toolrelease,int page){
		return toolreleasedao.getSearch(toolrelease, page);
	}
	@Transactional
	public int CountAllToolRelease(ToolRelease toolrelease){
		return toolreleasedao.CountAllToolRelease(toolrelease);
	}
	@Transactional
	public List<ToolRelease> getSearchReport(String Start,String End,int memid){
		return toolreleasedao.getSearchReport(Start, End, memid);
	}
	@Transactional
	public List<ToolRelease> getSearchReportForNextPage(String Start,String End,int memid,int page){
		return toolreleasedao.getSearchReportForNextPage(Start, End, memid, page);
	}

}
