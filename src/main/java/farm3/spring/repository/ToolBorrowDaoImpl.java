package farm3.spring.repository;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.ToolBorrowDao;
import farm3.spring.model.ToolBorrow;
@Repository
public class ToolBorrowDaoImpl implements ToolBorrowDao {
	@Autowired
	private SessionFactory session;
	@Override
	public void add(ToolBorrow toolborrow) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(toolborrow);
	}

	@Override
	public void edit(ToolBorrow toolborrow) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(toolborrow);
	}

	@Override
	public void delete(int Id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getToolBorrow(Id));
	}

	@Override
	public ToolBorrow getToolBorrow(int Id) {
		// TODO Auto-generated method stub
		return (ToolBorrow) session.getCurrentSession().get(ToolBorrow.class, Id);
	}

	@Override
	public List<ToolBorrow> getAllToolBorrow() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from ToolBorrow").list();
	}
	@Override
	public List<ToolBorrow> getToolBorrow(){
		return session.getCurrentSession().createQuery("from ToolBorrow where status = 1").list();
	}
	@Override
	public List<ToolBorrow> getSearchReport(String Start,String End,int memid,int type){
		if(type==1){ //���ҡ�����
			if(memid==0){
				return session.getCurrentSession().createQuery("from ToolBorrow where status = 1 and dayBorrow BETWEEN '"+Start+"' and '"+End+"'").list();
			}
			else{
				return session.getCurrentSession().createQuery
						("from ToolBorrow tool where status = 1 and tool.member.id='"+memid+"' and dayBorrow BETWEEN '"+Start+"' and '"+End+"'").list();
			}
		}else{ //���ҡ�ä׹
			if(memid==0){
				return session.getCurrentSession().createQuery("from ToolBorrow where status = 2 and dayReturn BETWEEN '"+Start+"' and '"+End+"'").list();
			}
			else{
				return session.getCurrentSession().createQuery
						("from ToolBorrow tool where status = 2 and tool.member.id='"+memid+"' and dayReturn BETWEEN '"+Start+"' and '"+End+"'").list();
			}
		}
		
	}
	@Override
	public List<ToolBorrow> getSearchReportForNextPage(String Start,String End,int memid,int type,int page){
		Query q=null;
		if(type==1){ //���ҡ�����
			if(memid==0){
				q= session.getCurrentSession().createQuery("from ToolBorrow where status = 1 and dayBorrow BETWEEN '"+Start+"' and '"+End+"'");
			}
			else{
				q= session.getCurrentSession().createQuery
						("from ToolBorrow tool where status = 1 and tool.member.id='"+memid+"' and dayBorrow BETWEEN '"+Start+"' and '"+End+"'");
			}
		}else{ //���ҡ�ä׹
			if(memid==0){
				q= session.getCurrentSession().createQuery("from ToolBorrow where status = 2 and dayReturn BETWEEN '"+Start+"' and '"+End+"'");
			}
			else{
				q= session.getCurrentSession().createQuery
						("from ToolBorrow tool where status = 2 and tool.member.id='"+memid+"' and dayReturn BETWEEN '"+Start+"' and '"+End+"'");
			}
		}
		q.setFirstResult((page-1)*10);
		q.setMaxResults(10);
		
		return q.list();
	}

}
