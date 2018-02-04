package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.SemenReleaseDao;
import farm3.spring.model.SemenRelease;
import farm3.spring.service.SemenReleaseService;
@Service
public class SemenReleaseServiceImpl implements SemenReleaseService {
	@Autowired
	private SemenReleaseDao semenreleasedao;
	
	@Transactional
	public void add(SemenRelease semenrelease) {
		// TODO Auto-generated method stub
		semenreleasedao.add(semenrelease);
	}

	@Transactional
	public void edit(SemenRelease semenrelease) {
		// TODO Auto-generated method stub
		semenreleasedao.edit(semenrelease);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		semenreleasedao.delete(Id);
	}

	@Transactional
	public SemenRelease getSemenRelease(int Id) {
		// TODO Auto-generated method stub
		return semenreleasedao.getSemenRelease(Id);
	}

	@Transactional
	public List<SemenRelease> getAllSemenRelease() {
		// TODO Auto-generated method stub
		return semenreleasedao.getAllSemenRelease();
	}
	@Transactional
	public List<SemenRelease> getSearch(SemenRelease semenrelease,int page){
		return semenreleasedao.getSearch(semenrelease, page);
	}
	@Transactional
	public int CountAllSemenRelease(SemenRelease semenrelease){
		return semenreleasedao.CountAllSemenRelease(semenrelease);
	}
	@Transactional
	public List<SemenRelease> getSearchReport(String Start,String End,int memid){
		return semenreleasedao.getSearchReport(Start, End, memid);
	}
	@Transactional
	public List<SemenRelease> getSearchReportForNextPage(String Start,String End,int memid,int page){
		return semenreleasedao.getSearchReportForNextPage(Start, End, memid, page);
	}

}
