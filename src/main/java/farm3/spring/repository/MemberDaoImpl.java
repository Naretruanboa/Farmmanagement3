package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import farm3.spring.dao.MemberDao;
import farm3.spring.model.Medicine;
import farm3.spring.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Member member) {
		// TODO Auto-generated method stub
		session.getCurrentSession().save(member);
	}

	@Override
	public void edit(Member member) {
		// TODO Auto-generated method stub
		session.getCurrentSession().update(member);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		session.getCurrentSession().delete(getMember(id));
	}

	@Override
	public Member getMember(int id) {
		// TODO Auto-generated method stub
		return (Member) session.getCurrentSession().get(Member.class, id);
	}

	@Override
	public List getAllMember() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Member").list();
	}
	
	@Override
	public List getMemberByUsername(String username) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Member where username='"+username+"'").list();
	}
	
	@Override
	public List checkIdCard(String IdCardNo) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Member where idCard='"+IdCardNo+"'").list();
	}
	
	@Override //login
	public Member getLogin(String username,String password) {
		// TODO Auto-generated method stub
		return (Member) session.getCurrentSession().createQuery("from Member u where u.username='"+username+"' and u.password='"+password+" ' ").uniqueResult();
		/*Criteria criteria = session.getCurrentSession().createCriteria(Member.class); //���¡�� criteria ��������ᴧ�ա��
		criteria.add(Restrictions.eq("username", username));
		criteria.add(Restrictions.eq("password", password));  Ẻ���� login ��
		return (Member) criteria.uniqueResult(); //��һ�С���� member ��� return �� unique...
*/	}
	
	@Override //login
	public Member getMemberByUser(String username) {
		// TODO Auto-generated method stub
		Criteria criteria = session.getCurrentSession().createCriteria(Member.class); //���¡�� criteria ��������ᴧ�ա��
		criteria.add(Restrictions.eq("username", username));
		return (Member) criteria.uniqueResult(); //��һ�С���� member ��� return �� unique...
	}
	@Override
	public List getSearch(Member member,int page){
		Criteria criteria = session.getCurrentSession().createCriteria(Member.class);
		if(member.getFirst()!=null){
			criteria.add(Restrictions.like("first", "%"+member.getFirst()+"%"));
		}
		if(member.getAddress()!=null){
			criteria.add(Restrictions.like("address", "%"+member.getAddress()+"%"));
		}
		if(member.getPrivilege()!=null){
			criteria.setFetchMode("privilege", FetchMode.JOIN);
			criteria.createAlias("privilege", "pr");
			criteria.add(Restrictions.like("pr.value", "%"+member.getPrivilege().getValue()+"%"));
		}
		criteria.setFirstResult((page-1)*10);
		criteria.setMaxResults(10);
		return  criteria.list();
	}
	@Override
	public int CountAllMember(Member member){
		Criteria criteria = session.getCurrentSession().createCriteria(Member.class);
		if(member.getFirst()!=null){
			criteria.add(Restrictions.like("first", "%"+member.getFirst()+"%"));
		}
		if(member.getAddress()!=null){
			criteria.add(Restrictions.like("address", "%"+member.getAddress()+"%"));
		}
		if(member.getPrivilege()!=null){
			criteria.setFetchMode("privilege", FetchMode.JOIN);
			criteria.createAlias("privilege", "pr");
			criteria.add(Restrictions.like("pr.value", "%"+member.getPrivilege().getValue()+"%"));
		}
		return (int) criteria.setProjection(Projections.rowCount()).uniqueResult();
	}
	
	@Override
	public List getchkuser(String username) {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Member where username='"+username+"'").list();
	}
	
	@Override
	public Member login(String username, String password) {
		// TODO Auto-generated method stub
		return (Member) session.getCurrentSession().createQuery("from Member where username='"+username+"' and password='"+password+"'").uniqueResult();
	}
}
