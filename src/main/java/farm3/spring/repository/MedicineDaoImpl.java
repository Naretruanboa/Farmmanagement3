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

import farm3.spring.dao.MedicineDao;
import farm3.spring.model.Medicine;




@Repository
public class MedicineDaoImpl implements MedicineDao {

	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Medicine medicine) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(medicine);
	}

	@Override
	public void edit(Medicine medicine) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(medicine);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getMedicine(Id));
	}	

	@Override
	public Medicine getMedicine(int Id) {
		// TODO Auto-generated method stub
		return (Medicine) session.getCurrentSession().get(Medicine.class, Id);
	}

	
	
	@Override
	public List getAllMedicine() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Medicine").list();
	}
	@Override
	public List<Medicine> getAllMedicineForNextpage(int page){
		Query q = session.getCurrentSession().createQuery("from Medicine");
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}
	
	@Override
	public List CheckAlertStock(int stockM) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Medicine where statusalert = 0 and quantity < "+stockM).list();
	}
	@Override
	public List CheckAlertStockForNextpage(int stockM,int page){
		Query q = session.getCurrentSession().createQuery("from Medicine where statusalert = 0 and quantity < "+stockM);
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}
	
	@Override
	public List<Medicine> getAllMedicineForRelease(){
		return session.getCurrentSession().createQuery("from Medicine where quantity > 0").list();
	}
	@Override
	public List getMedicineByTradname(String tradname){
		return session.getCurrentSession().createQuery("from Medicine where tradeName='"+tradname+"'").list();
	}
	
	/*-------------------------------����-----------------------------*/
	@Override
	public List<Medicine> getSearch(Medicine medicine,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(Medicine.class);
		if(medicine.getTradeName()!=null){
			criteria.add(Restrictions.like("tradeName", "%"+medicine.getTradeName()+"%"));
		}
		if(medicine.getGroupMedicine()!=null){
			criteria.setFetchMode("groupMedicine", FetchMode.JOIN);
			criteria.createAlias("groupMedicine", "groupM");
			criteria.add(Restrictions.like("groupM.value", "%"+medicine.getGroupMedicine().getValue()+"%"));
		}
		if (medicine.getProperties() != null) {
			criteria.add(Restrictions.like("properties", "%"+medicine.getProperties()+"%"));
		}
		
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	
	@Override
	public int CountAllMedicine(Medicine medicine){
		Criteria criteria = session.getCurrentSession().createCriteria(Medicine.class);
		if(medicine.getTradeName()!=null){
			criteria.add(Restrictions.like("tradeName", "%"+medicine.getTradeName()+"%"));
		}
		if(medicine.getGroupMedicine()!=null){
			criteria.setFetchMode("groupMedicine", FetchMode.JOIN);
			criteria.createAlias("groupMedicine", "groupM");
			criteria.add(Restrictions.like("groupM.value", "%"+medicine.getGroupMedicine().getValue()+"%"));
		}
		if (medicine.getProperties() != null) {
			criteria.add(Restrictions.like("properties", "%"+medicine.getProperties()+"%"));
		}
		
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	
	
	@Override
	public List<Medicine> getSearchForRelease(Medicine medicine,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(Medicine.class);
		if(medicine.getTradeName()!=null){
			criteria.add(Restrictions.like("tradeName", "%"+medicine.getTradeName()+"%"));
			criteria.add(Restrictions.gt("quantity", 0));
		}
		if(medicine.getGroupMedicine()!=null ){
			criteria.setFetchMode("groupMedicine", FetchMode.JOIN);
			criteria.createAlias("groupMedicine", "groupM");
			criteria.add(Restrictions.like("groupM.value", "%"+medicine.getGroupMedicine().getValue()+"%"));
			criteria.add(Restrictions.gt("quantity", 0));
		}

		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountReleaseMedicine(Medicine medicine){
		Criteria criteria = session.getCurrentSession().createCriteria(Medicine.class);
		if(medicine.getTradeName()!=null ){
			criteria.add(Restrictions.like("tradeName", "%"+medicine.getTradeName()+"%"));
			criteria.add(Restrictions.gt("quantity", 0)); //more than quantity  0
		}
		if(medicine.getGroupMedicine()!=null ){
			criteria.setFetchMode("groupMedicine", FetchMode.JOIN);
			criteria.createAlias("groupMedicine", "groupM");
			criteria.add(Restrictions.like("groupM.value", "%"+medicine.getGroupMedicine().getValue()+"%"));
			criteria.add(Restrictions.gt("quantity", 0));
		}
		
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	@Override
	public Medicine getMedicine2(int[] Id) {
		// TODO Auto-generated method stub
		return (Medicine) session.getCurrentSession().get(Medicine.class, Id);
	}
	@Override
	public List<Medicine> getNameMedBygroup(int Id){
		return session.getCurrentSession().createQuery("from Medicine where GroupMedicine ="+Id).list();
	}
	/*@Override
	public List getSeachAllMedicine2(Medicine medicine) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(Medicine.class);
		
		
        if( medicine.getMediId() != "" && medicine.getMediId() != null){
        	criteria.add(Restrictions.like("Id", "%"+ medicine.getMediId() +"%"));
        	
        }else if( medicine.getCommonName() != "" && medicine.getCommonName() != null){
        	criteria.add(Restrictions.like("commonName", "%"+ medicine.getCommonName() +"%"));
        }
        
        
        
	return  criteria.list();
	}
	}*/

}
