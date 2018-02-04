package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.RawMaterialReleaseDao;
import farm3.spring.model.RawMaterialRelease;
import farm3.spring.service.RawMaterialReleaseService;
@Service
public class RawMaterialReleaseServiceImpl implements RawMaterialReleaseService {
	@Autowired
	private RawMaterialReleaseDao rawmaterialreleasedao;
	
	
	@Transactional
	public void add(RawMaterialRelease rawmaterialrelease) {
		// TODO Auto-generated method stub
		rawmaterialreleasedao.add(rawmaterialrelease);
	}

	@Transactional
	public void edit(RawMaterialRelease rawmaterialrelease) {
		// TODO Auto-generated method stub
		rawmaterialreleasedao.edit(rawmaterialrelease);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		rawmaterialreleasedao.delete(Id);
	}

	@Transactional
	public RawMaterialRelease getRawMaterialRelease(int Id) {
		// TODO Auto-generated method stub
		return rawmaterialreleasedao.getRawMaterialRelease(Id);
	}

	@Transactional
	public List<RawMaterialRelease> getAllRawMaterialRelease() {
		// TODO Auto-generated method stub
		return rawmaterialreleasedao.getAllRawMaterialRelease();
	}
	@Transactional
	public List<RawMaterialRelease> getSearch(RawMaterialRelease rawmaterialrelease,int page){
		return rawmaterialreleasedao.getSearch(rawmaterialrelease, page);
	}
	@Transactional
	public int CountAllRawMaterialRelease(RawMaterialRelease rawmaterialrelease){
		return rawmaterialreleasedao.CountAllRawMaterialRelease(rawmaterialrelease);
	}
	@Transactional
	public List<RawMaterialRelease> getSearchReport(String Start,String End,int memid){
		return rawmaterialreleasedao.getSearchReport(Start, End, memid);
	}
	@Transactional
	public List<RawMaterialRelease> getSearchReportForNextPage(String Start,String End,int memid,int page){
		return rawmaterialreleasedao.getSearchReportForNextPage(Start, End, memid, page);
	}
}
