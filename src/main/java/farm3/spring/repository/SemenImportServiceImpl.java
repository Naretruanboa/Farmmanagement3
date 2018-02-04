package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.SemenImportDao;
import farm3.spring.model.SemenImport;
import farm3.spring.service.SemenImportService;
@Service
public class SemenImportServiceImpl implements SemenImportService {
	@Autowired
	private SemenImportDao semenimportdao;
	
	
	@Transactional
	public void add(SemenImport semenimport) {
		// TODO Auto-generated method stub
		semenimportdao.add(semenimport);
	}

	@Transactional
	public void edit(SemenImport semenimport) {
		// TODO Auto-generated method stub
		semenimportdao.edit(semenimport);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		semenimportdao.delete(Id);
	}

	@Transactional
	public SemenImport getSemenImport(int Id) {
		// TODO Auto-generated method stub
		return semenimportdao.getSemenImport(Id);
	}

	@Transactional
	public List<SemenImport> getAllSemenImport() {
		// TODO Auto-generated method stub
		return semenimportdao.getAllSemenImport();
	}
	@Transactional
	public List<SemenImport> getSearch(SemenImport semenimport,int page){
		return semenimportdao.getSearch(semenimport, page);
	}
	@Transactional
	public int CountAllSemenImport(SemenImport semenimport){
		return semenimportdao.CountAllSemenImport(semenimport);
	}
	@Transactional
	public List<SemenImport> getSearchReport(String Start,String End,int memid){
		return semenimportdao.getSearchReport(Start, End, memid);
	}
	@Transactional
	public List<SemenImport> getSearchReportForNextPage(String Start,String End,int memid,int page){
		return semenimportdao.getSearchReportForNextPage(Start, End, memid, page);
	}

}
