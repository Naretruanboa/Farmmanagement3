package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.RawMaterialDao;
import farm3.spring.model.RawMaterial;
import farm3.spring.model.Semen;
import farm3.spring.model.Tool;

@Repository
public class RawMaterialDaoImpl implements RawMaterialDao {

	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(RawMaterial rawmaterial) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(rawmaterial);
	}

	@Override
	public void edit(RawMaterial rawmaterial) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(rawmaterial);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getRawMaterial(Id));
	}

	@Override
	public RawMaterial getRawMaterial(int Id) {
		// TODO Auto-generated method stub
		return (RawMaterial) session.getCurrentSession().get(RawMaterial.class, Id);
	}

	@Override
	public List getAllRawMaterial() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from RawMaterial").list();
	}
	@Override
	public List<RawMaterial> getAllRawMaterialForNextpage(int page){
		Query q = session.getCurrentSession().createQuery("from RawMaterial");
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		return q.list();
	}
	@Override
	public List<RawMaterial> CheckAlertStock(int stockRaw){
		return session.getCurrentSession().createQuery("from RawMaterial where statusalert=0 and quantity <"+stockRaw).list();
	}
	@Override
	public List<RawMaterial> CheckAlertStockForNextpage(int stockRaw,int page){
		Query q = session.getCurrentSession().createQuery("from RawMaterial where statusalert=0 and quantity <"+stockRaw);
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		return q.list();
	}

	@Override //ત�����ѵ�شԺ���
	public List getRawMaterialByName(String name) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from RawMaterial where name='"+name+"'").list();
	}
	@Override
	public List<RawMaterial> getAllRawMaterialForRelease(){
		return session.getCurrentSession().createQuery("from RawMaterial where quantity >0").list();
	}
	
	@Override
	public List getSearch(RawMaterial rawmaterial,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(RawMaterial.class); //���¡�� class model
		
		if(rawmaterial.getName()!=null){
			criteria.add(Restrictions.like("name", "%"+rawmaterial.getName()+"%"));
		}
		if(rawmaterial.getTypeMaterial()!=null){
			criteria.setFetchMode("typeMaterial", FetchMode.JOIN);
			criteria.createAlias("typeMaterial", "type");
			criteria.add(Restrictions.like("type.value", "%"+rawmaterial.getTypeMaterial().getValue()+"%"));
			//�óն���յ��ҧ forienkey �������
		}
		
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountAllRaw(RawMaterial rawmaterial){
		Criteria criteria = session.getCurrentSession().createCriteria(RawMaterial.class);
		
		if(rawmaterial.getName()!=null){
			criteria.add(Restrictions.like("name", "%"+rawmaterial.getName()+"%"));
		}
		if(rawmaterial.getTypeMaterial()!=null){
			criteria.setFetchMode("typeMaterial", FetchMode.JOIN);
			criteria.createAlias("typeMaterial", "type");
			criteria.add(Restrictions.like("type.value", "%"+rawmaterial.getTypeMaterial().getValue()+"%"));
		}
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	@Override
	public List getSearchForRelease(RawMaterial rawmaterial,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(RawMaterial.class); //���¡�� class model
		
		if(rawmaterial.getName()!=null){
			criteria.add(Restrictions.like("name", "%"+rawmaterial.getName()+"%"));
		}
		if(rawmaterial.getTypeMaterial()!=null){
			criteria.setFetchMode("typeMaterial", FetchMode.JOIN);
			criteria.createAlias("typeMaterial", "type");
			criteria.add(Restrictions.like("type.value", "%"+rawmaterial.getTypeMaterial().getValue()+"%"));
		}
		criteria.add(Restrictions.gt("quantity", 0));
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountReleaseRaw(RawMaterial rawmaterial){
Criteria criteria = session.getCurrentSession().createCriteria(RawMaterial.class);
		
		if(rawmaterial.getName()!=null){
			criteria.add(Restrictions.like("name", "%"+rawmaterial.getName()+"%"));
		}
		if(rawmaterial.getTypeMaterial()!=null){
			criteria.setFetchMode("typeMaterial", FetchMode.JOIN);
			criteria.createAlias("typeMaterial", "type");
			criteria.add(Restrictions.like("type.value", "%"+rawmaterial.getTypeMaterial().getValue()+"%"));
		}
		criteria.add(Restrictions.gt("quantity", 0));
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
}
