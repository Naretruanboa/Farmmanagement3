package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.RawMaterialImportDao;
import farm3.spring.model.RawMaterialImport;
import farm3.spring.service.RawMaterialImportService;
@Service
public class RawMaterialImportServiceImpl implements RawMaterialImportService {
	@Autowired
	private RawMaterialImportDao rawmaterialimportdao;
	@Transactional
	public void add(RawMaterialImport rawmaterialimport) {
		// TODO Auto-generated method stub
		rawmaterialimportdao.add(rawmaterialimport);
	}

	@Transactional
	public void edit(RawMaterialImport rawmaterialimport) {
		// TODO Auto-generated method stub
		rawmaterialimportdao.edit(rawmaterialimport);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		rawmaterialimportdao.delete(Id);
	}

	@Transactional
	public RawMaterialImport getRawMaterialImport(int Id) {
		// TODO Auto-generated method stub
		return rawmaterialimportdao.getRawMaterialImport(Id);
	}

	@Transactional
	public List<RawMaterialImport> getAllRawMaterialImport() {
		// TODO Auto-generated method stub
		return rawmaterialimportdao.getAllRawMaterialImport();
	}
	@Transactional
	public List<RawMaterialImport> CheckAlertExpRaw(int day){
		return rawmaterialimportdao.CheckAlertExpRaw(day);
	}
	@Transactional
	public List<RawMaterialImport> CheckAlertExpRawForNextpage(int day,int page){
		return rawmaterialimportdao.CheckAlertExpRawForNextpage(day, page);
	}
	@Transactional
	public List<RawMaterialImport> getSearch(RawMaterialImport rawmaterialimport,int page){
		return rawmaterialimportdao.getSearch(rawmaterialimport, page);
	}
	@Transactional
	public int CountAllRawMaterialImport(RawMaterialImport rawmaterialimport){
		return rawmaterialimportdao.CountAllRawMaterialImport(rawmaterialimport);
	}
	@Transactional
	public List<RawMaterialImport> getSearchReport(String Start,String End,int memid){
		return rawmaterialimportdao.getSearchReport(Start, End, memid);
	}
	@Transactional
	public List<RawMaterialImport> getSearchReportForNextPage(String Start,String End,int memid,int page){
		return rawmaterialimportdao.getSearchReportForNextPage(Start, End, memid, page);
	}
}
