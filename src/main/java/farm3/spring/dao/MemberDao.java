package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.Member;

public interface MemberDao {
	public void add(Member member);
	public void edit(Member member);
	public void delete(int id);
	public Member getMember(int id);
	public List getAllMember();
	
	public List getMemberByUsername(String username); //ત user ��ҫ������
	
	public List checkIdCard(String IdCardNo); //ત ���ʻ�ЪҪ� ��Ҷ١��ͧ����
	
	public Member getLogin(String username, String password);//login
	
	public Member getMemberByUser(String username); //ત user ��ҫ������
	
	public List getSearch(Member member,int page);
	int CountAllMember(Member member);
	//�ͧ���ٹ
	public List getchkuser(String username);
	public Member login(String username,String password);
	
}
