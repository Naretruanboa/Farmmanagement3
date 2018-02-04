package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.TypeBucketDao;
import farm3.spring.model.TypeBucket;
import farm3.spring.service.TypeBucketService;
@Service
public class TypeBucketServiceImpl implements TypeBucketService {
	@Autowired
	private TypeBucketDao typebucketdao;
	@Transactional
	public void add(TypeBucket typebucket) {
		// TODO Auto-generated method stub
		typebucketdao.add(typebucket);
	}

	@Transactional
	public void edit(TypeBucket typebucket) {
		// TODO Auto-generated method stub
		typebucketdao.edit(typebucket);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		typebucketdao.delete(Id);
	}

	@Transactional
	public TypeBucket getTypeBucket(int Id) {
		// TODO Auto-generated method stub
		return typebucketdao.getTypeBucket(Id);
	}

	@Transactional
	public List<TypeBucket> getAllTypeBucket() {
		// TODO Auto-generated method stub
		return typebucketdao.getAllTypeBucket();
	}

}
