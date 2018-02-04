package farm3.spring.service;

import java.util.List;

import farm3.spring.model.TypeBucket;



public interface TypeBucketService {
	public void add(TypeBucket typebucket);
	public void edit(TypeBucket typebucket);
	public void delete(int Id);
	public TypeBucket getTypeBucket(int Id);
	public List<TypeBucket> getAllTypeBucket();
}
