//package farm3.spring.repository;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import farm3.spring.dao.StatusBreedDao;
//import farm3.spring.dao.StatusCattleDao;
//import farm3.spring.model.StatusBreed;
//import farm3.spring.service.StatusBreedService;
//@Service
//public class StatusBreedServiceImpl implements StatusBreedService {
//
//	@Autowired
//	private StatusBreedDao statusbreeddao;	
//	
//	@Transactional
//	public void add(StatusBreed statusbreed) {
//		// TODO Auto-generated method stub
//		statusbreeddao.add(statusbreed);
//	}
//
//	@Transactional
//	public void edit(StatusBreed statusbreed) {
//		// TODO Auto-generated method stub
//		statusbreeddao.edit(statusbreed);
//	}
//
//	@Transactional
//	public void delete(int id) {
//		// TODO Auto-generated method stub
//		statusbreeddao.delete(id);
//	}
//
//	@Transactional
//	public StatusBreed getStatusBreed(int id) {
//		// TODO Auto-generated method stub
//		return statusbreeddao.getStatusBreed(id);
//	}
//
//	@Transactional
//	public List getAllStatusBreed() {
//		// TODO Auto-generated method stub
//		return statusbreeddao.getAllStatusBreed();
//	}
//	
//	@Transactional
//	public List getStatBreed(String name){
//		return statusbreeddao.getStatBreed(name);
//	}
//
//}
