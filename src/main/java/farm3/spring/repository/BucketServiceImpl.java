package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.BucketDao;
import farm3.spring.model.Bucket;
import farm3.spring.service.BucketService;

@Service
public class BucketServiceImpl implements BucketService {

	@Autowired
	private BucketDao bucketdao;
	
	@Transactional
	public void add(Bucket bucket) {
		// TODO Auto-generated method stub
		bucketdao.add(bucket);
	}

	@Transactional
	public void edit(Bucket bucket) {
		// TODO Auto-generated method stub
		bucketdao.edit(bucket);
	}

	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		bucketdao.delete(id);
	}

	@Transactional
	public Bucket getBucket(int id) {
		// TODO Auto-generated method stub
		return bucketdao.getBucket(id);
	}

	@Transactional
	public List getAllBucket() {
		// TODO Auto-generated method stub
		return bucketdao.getAllBucket();
	}

	@Transactional  //ત���ͫ��
	public List getBucketByName(String name) {
		// TODO Auto-generated method stub
		return bucketdao.getBucketByName(name);
	}
@Transactional
public List<Bucket> CheckAlertExpNitrogen(int day){
	return bucketdao.CheckAlertExpNitrogen(day);
}
@Transactional
public List<Bucket> CheckAlertExpNitrogenForNextpage(int day,int page){
	return bucketdao.CheckAlertExpNitrogenForNextpage(day, page);
}
@Transactional
public List<Bucket> getSearch(Bucket bucket){
	return bucketdao.getSearch(bucket);
}
@Transactional
public List<Bucket> getSearchViewForNextPage(Bucket bucket, int page){
	return bucketdao.getSearchViewForNextPage(bucket, page);
}
@Transactional
public List getBucketForsaveSemen(){
	return bucketdao.getBucketForsaveSemen();
}
@Transactional
public List<Bucket> getSearchForAddNitrogen(Bucket bucket,int page){
	return bucketdao.getSearchForAddNitrogen(bucket,page);
}
@Transactional
public List getBucketForAddNitrogen(){
	return bucketdao.getBucketForAddNitrogen();
}
@Transactional
public int countAllBucket(Bucket bucket){
	return bucketdao.countAllBucket(bucket);
}
}
