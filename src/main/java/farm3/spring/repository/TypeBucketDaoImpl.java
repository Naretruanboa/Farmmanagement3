package farm3.spring.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.TypeBucketDao;
import farm3.spring.model.TypeBucket;
@Repository
public class TypeBucketDaoImpl implements TypeBucketDao {
	@Autowired
	private SessionFactory session;
	@Override
	public void add(TypeBucket typebucket) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(typebucket);
	}

	@Override
	public void edit(TypeBucket typebucket) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(typebucket);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getTypeBucket(Id));
	}

	@Override
	public TypeBucket getTypeBucket(int Id) {
		// TODO Auto-generated method stub
		return (TypeBucket) session.getCurrentSession().get(TypeBucket.class, Id);
	}

	@Override
	public List<TypeBucket> getAllTypeBucket() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from TypeBucket").list();
	}

}
