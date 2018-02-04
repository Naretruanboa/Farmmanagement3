package farm3.spring.repository;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.ToolBrokenDao;
import farm3.spring.model.ToolBroken;
@Repository
public class ToolBrokenDaoImpl implements ToolBrokenDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(ToolBroken toolbroken) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(toolbroken);
	}

	@Override
	public void edit(ToolBroken toolbroken) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(toolbroken);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getToolBroken(Id));
	}

	@Override
	public ToolBroken getToolBroken(int Id) {
		// TODO Auto-generated method stub
		return (ToolBroken) session.getCurrentSession().get(ToolBroken.class, Id);
	}

	@Override
	public List<ToolBroken> getAllToolBroken() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from ToolBroken").list();
	}

	@Override
	public List<ToolBroken> getSendToolBroken() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from ToolBroken where status = 5").list();
	}

	@Override
	public List<ToolBroken> getSearchReport(String Start, String End) {
		return session.getCurrentSession().createQuery("from ToolBroken where status = 5 and dayBroken BETWEEN '"+Start+"' and '"+End+"'").list();
		/*if(type==1)//��¡���觫���
			return session.getCurrentSession().createQuery("from ToolBroken where status = 5 and dayBroken BETWEEN '"+Start+"' and '"+End+"'").list();
		else//��¡�ë�������
			return session.getCurrentSession().createQuery("from ToolBroken where status = 6 and dayReturn BETWEEN '"+Start+"' and '"+End+"'").list();
		*/
	}
	@Override
	public List<ToolBroken> getSearchReportForNextPage(String Start,String End,int page){
		Query q = session.getCurrentSession().createQuery("from ToolBroken where status = 5 and dayBroken BETWEEN '"+Start+"' and '"+End+"'");
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}

}
