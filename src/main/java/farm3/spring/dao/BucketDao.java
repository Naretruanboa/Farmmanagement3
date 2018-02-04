package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.Bucket;


public interface BucketDao {
	public void add(Bucket bucket);
	public void edit(Bucket bucket);
	public void delete(int id);
	public Bucket getBucket(int id);
	public List getAllBucket();
	
	public List getBucketForsaveSemen();
	public List getBucketForAddNitrogen(); //����Ѻ�����ਹ�͡�����
	
	public List getBucketByName(String name);//ત��Ҫ��ͫ������
	public List<Bucket> CheckAlertExpNitrogen(int day);
	public List<Bucket> CheckAlertExpNitrogenForNextpage(int day,int page);
	public List<Bucket> getSearch(Bucket bucket);
	public List<Bucket> getSearchViewForNextPage(Bucket bucket, int page);
	public int countAllBucket(Bucket bucket);
	public List<Bucket> getSearchForAddNitrogen(Bucket bucket,int page);
	//int CountAllSemen(Bucket bucket);
}
