package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import farm3.spring.dao.ToolDao;
import farm3.spring.model.Tool;

@Repository
public class ToolDaoImpl implements ToolDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Tool tool) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(tool);
	}

	@Override
	public void edit(Tool tool) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(tool);;
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getTool(Id));
	}

	@Override
	public Tool getTool(int Id) {
		// TODO Auto-generated method stub
		return (Tool) session.getCurrentSession().get(Tool.class, Id);
	}

	@Override
	public List getAllTool() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Tool").list();
	}
@Override
public List<Tool> CheckAlertStock(int stockTool){
	return session.getCurrentSession().createQuery("from Tool where statusalert=0 and quantity <"+stockTool).list();
}
@Override
public List getAllToolForNextpage(int page){
	Query q = session.getCurrentSession().createQuery("from Tool");
	q.setFirstResult((page-1)*10);
	q.setMaxResults(10);
	return q.list();
}
@Override
public List<Tool> CheckAlertStockForNextpage(int stockTool,int page){
	Query q = session.getCurrentSession().createQuery("from Tool where statusalert=0 and quantity <"+stockTool);
	q.setFirstResult((page-1)*10);
	q.setMaxResults(10);
	return q.list();
}
	@Override //ત���ͫ��
	public List getToolByName(String name) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Tool where name='"+name+"' ").list();
	}
	@Override
	public List<Tool> getAllToolForRelease(){
		return session.getCurrentSession().createQuery("from Tool where typeTool != 2 and quantity > 0").list();
	}
	@Override
	public List<Tool> getAllToolForBorrow(){
		return session.getCurrentSession().createQuery("from Tool where typeTool = 2 and quantity > 0").list();
	}
	
	
	@Override
	public List getSearch(Tool tool,int page) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(Tool.class);
		
		if(tool.getName()!=null){
			criteria.add(Restrictions.like("name", "%"+tool.getName()+"%"));
			
		}
		if(tool.getTypeTool()!=null){
			criteria.setFetchMode("typeTool", FetchMode.JOIN);
			criteria.createAlias("typeTool", "type");
			criteria.add(Restrictions.like("type.value", "%"+tool.getTypeTool().getValue()+"%"));
		}
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	
	
	@Override
	public int CountAllTool(Tool tool) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(Tool.class);
		if(tool.getName()!=null){
			criteria.add(Restrictions.like("name", "%"+tool.getName()+"%"));
			
		}
		if(tool.getTypeTool()!=null){
			criteria.setFetchMode("typeTool", FetchMode.JOIN);
			criteria.createAlias("typeTool", "type");
			criteria.add(Restrictions.like("type.value", "%"+tool.getTypeTool().getValue()+"%"));
		}

		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	
	
	@Override
	public List getSearchForRelease(Tool tool,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(Tool.class);
		
		if(tool.getName()!=null){
			criteria.add(Restrictions.like("name", "%"+tool.getName()+"%"));
			
		}
		if(tool.getTypeTool()!=null){
			criteria.setFetchMode("typeTool", FetchMode.JOIN);
			criteria.createAlias("typeTool", "type");
			criteria.add(Restrictions.like("type.value", "%"+tool.getTypeTool().getValue()+"%"));
		}
		//criteria.add(Restrictions.eq("typeTool.id",1)); 
		criteria.add(Restrictions.gt("typeTool.id", 1));
		/*criteria.setFetchMode("typeTool", FetchMode.JOIN);
		criteria.createAlias("typeTool", "type");
		criteria.add(Restrictions.ilike("type.value", "��ʴط����㹿����%")); */
		criteria.add(Restrictions.gt("quantity", 0));
		
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountReleaseTool(Tool tool){
		Criteria criteria = session.getCurrentSession().createCriteria(Tool.class);
		if(tool.getName()!=null){
			criteria.add(Restrictions.like("name", "%"+tool.getName()+"%"));
			
		}
		if(tool.getTypeTool()!=null){
			criteria.setFetchMode("typeTool", FetchMode.JOIN);
			criteria.createAlias("typeTool", "type");
			criteria.add(Restrictions.like("type.value", "%"+tool.getTypeTool().getValue()+"%"));
		}
		//criteria.add(Restrictions.eq("typeTool.id",1));
		criteria.add(Restrictions.gt("typeTool.id", 1));
		/*criteria.setFetchMode("typeTool", FetchMode.JOIN);
		criteria.createAlias("typeTool", "type");
		criteria.add(Restrictions.ilike("type.value", "��ʴط����㹿����%"));*/
		criteria.add(Restrictions.gt("quantity", 0));
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	@Override
	public List getSearchForBorrow(Tool tool,int page){
Criteria criteria = session.getCurrentSession().createCriteria(Tool.class);
		
		if(tool.getName()!=null){
			criteria.add(Restrictions.like("name", "%"+tool.getName()+"%"));
			
		}
		if(tool.getTypeTool()!=null){
			criteria.setFetchMode("typeTool", FetchMode.JOIN);
			criteria.createAlias("typeTool", "type");
			criteria.add(Restrictions.like("type.value", "%"+tool.getTypeTool().getValue()+"%"));
		}
		criteria.add(Restrictions.eq("typeTool.id",1));
		
		/*criteria.setFetchMode("typeTool", FetchMode.JOIN);
		criteria.createAlias("typeTool", "type");
		criteria.add(Restrictions.ilike("type.value", "�ػ�ó�����㹿����%"));*/
		criteria.add(Restrictions.gt("quantity", 0));
		
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountBorrowTool(Tool tool){
		Criteria criteria = session.getCurrentSession().createCriteria(Tool.class);
		if(tool.getName()!=null){
			criteria.add(Restrictions.like("name", "%"+tool.getName()+"%"));
			
		}
		if(tool.getTypeTool()!=null){
			criteria.setFetchMode("typeTool", FetchMode.JOIN);
			criteria.createAlias("typeTool", "type");
			criteria.add(Restrictions.like("type.value", "%"+tool.getTypeTool().getValue()+"%"));
		}
		criteria.add(Restrictions.eq("typeTool.id",1));
		/*criteria.setFetchMode("typeTool", FetchMode.JOIN);
		criteria.createAlias("typeTool", "type");
		criteria.add(Restrictions.ilike("type.value", "�ػ�ó�����㹿����%"));*/
		criteria.add(Restrictions.gt("quantity", 0));
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
}
