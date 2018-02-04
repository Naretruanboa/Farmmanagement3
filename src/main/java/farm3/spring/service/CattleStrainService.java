package farm3.spring.service;

import java.util.List;

import farm3.spring.model.CattleStrain;

public interface CattleStrainService {

	public void add(CattleStrain cattlestrain);
	public void edit(CattleStrain cattlestrain);
	public void delete(int id);
	public CattleStrain getCattleStrain(int id);
	public List getAllCattleStrain();	
	public List CheckCattleStrainName(String name);	
	public List CheckCattleStrainPrivateNo(String privateNo);	
	public List getAllCattleStrainByUser(int userId);	
	public List getCattleStrainlist(int id);	
	public List CowStrainNotInFestivity(String gene,String id);	
	public List CowStrainInFestivity(String id);
	public List MemberCowStrainFestivity(String id,String username,int i);	
	public List SearchCattleStrain(CattleStrain cattlestrain,int page);	
	public List SearchCattleStrainByUser(CattleStrain cattlestrain,int page);	
	public int CountCattleStrain(CattleStrain cattlestrain);	
	public int CountCattleStrainByUser(CattleStrain cattlestrain);	
}
