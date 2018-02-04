package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.SyncDao;
import farm3.spring.model.Sync;
import farm3.spring.service.SyncService;

@Service
public class SyncServiceImpl implements SyncService {
	
	@Autowired
	private SyncDao syncdao;

	@Transactional
	public void add(Sync sync) {
		// TODO Auto-generated method stub
		syncdao.add(sync);
	}

	@Transactional
	public void edit(Sync sync) {
		// TODO Auto-generated method stub
		syncdao.edit(sync);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		syncdao.delete(Id);
	}

	@Transactional
	public Sync getSync(int Id) {
		// TODO Auto-generated method stub
		return syncdao.getSync(Id);
	}

	@Transactional
	public List getAllSync() {
		// TODO Auto-generated method stub
		return syncdao.getAllSync();
	}
	
	@Transactional
	public List getSyncByq(String q){
		return syncdao.getSyncByq(q);
	}
	
	@Transactional
	public List getAllSyncByType(int id){
		return syncdao.getAllSyncByType(id);
	}
	
	@Transactional
	public List LastSync(int id){
		return syncdao.LastSync(id);
	}

}
