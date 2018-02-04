package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.MemberDao;
import farm3.spring.model.Member;
import farm3.spring.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	

	@Autowired
	private MemberDao memberDao;
	
	@Transactional
	public void add(Member member) {
		// TODO Auto-generated method stub
		memberDao.add(member);
	}

	@Transactional
	public void edit(Member member) {
		// TODO Auto-generated method stub
		memberDao.edit(member);
	}

	@Transactional
	public void delete(int id) {
		// TODO Auto-generated method stub
		memberDao.delete(id);
	}

	@Transactional
	public Member getMember(int id) {
		// TODO Auto-generated method stub
		return memberDao.getMember(id);
	}

	@Transactional
	public List getAllMember() {
		// TODO Auto-generated method stub
		return memberDao.getAllMember();
	}
	
	@Transactional
	public List getMemberByUsername(String username) {
		// TODO Auto-generated method stub
		return memberDao.getMemberByUsername(username);
	}
	
	@Transactional
	public List checkIdCard(String IdCardNo) {
		// TODO Auto-generated method stub
		return memberDao.checkIdCard(IdCardNo);
	}
	
	@Transactional //login
	public Member getLogin(String username, String password) {
		// TODO Auto-generated method stub
		return memberDao.getLogin(username,password);
	}

	@Transactional //login
	public Member getMemberByUser(String username) {
		// TODO Auto-generated method stub
		return memberDao.getMemberByUser(username);
	}
	@Transactional
	public List getSearch(Member member,int page){
		return memberDao.getSearch(member, page);
	}
	@Transactional
	public int CountAllMember(Member member){
		return memberDao.CountAllMember(member);
	}
	@Transactional
	public List getchkuser(String username) {
		// TODO Auto-generated method stub
		return memberDao.getchkuser(username);
	}

	@Transactional
	public Member login(String username, String password) {
		// TODO Auto-generated method stub

		return  memberDao.login(username,password);
	}
}
