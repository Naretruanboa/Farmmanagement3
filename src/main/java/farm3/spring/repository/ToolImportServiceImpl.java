package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.ToolImportDao;
import farm3.spring.model.ToolImport;
import farm3.spring.service.ToolImportService;
@Service
public class ToolImportServiceImpl implements ToolImportService {
	@Autowired
	private ToolImportDao toolimportdao;
	
	@Transactional
	public void add(ToolImport toolimport) {
		// TODO Auto-generated method stub
		toolimportdao.add(toolimport);
	}

	@Transactional
	public void edit(ToolImport toolimport) {
		// TODO Auto-generated method stub
		toolimportdao.edit(toolimport);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		toolimportdao.delete(Id);
	}

	@Transactional
	public ToolImport getToolImport(int Id) {
		// TODO Auto-generated method stub
		return toolimportdao.getToolImport(Id);
	}

	@Transactional
	public List<ToolImport> getAllToolImport() {
		// TODO Auto-generated method stub
		return toolimportdao.getAllToolImport();
	}
	@Transactional
	public List<ToolImport> getSearch(ToolImport toolimport,int page){
		return toolimportdao.getSearch(toolimport, page);
	}
	@Transactional
	public int CountAllToolImport(ToolImport toolimport){
		return toolimportdao.CountAllToolImport(toolimport);
	}
	@Transactional
	public List<ToolImport> getSearchReport(String Start,String End,int memid){
		return toolimportdao.getSearchReport(Start, End, memid);
	}
	@Transactional
	public List<ToolImport> getSearchReportForNextPage(String Start,String End,int memid,int page){
		return toolimportdao.getSearchReportForNextPage(Start, End, memid, page);
	}

}
