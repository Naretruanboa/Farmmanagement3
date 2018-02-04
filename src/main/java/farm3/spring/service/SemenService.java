package farm3.spring.service;

import java.util.List;

import farm3.spring.model.Semen;

public interface SemenService {
	public void add(Semen semen);
	public void edit(Semen semen);
	public void delete(int Id);
	public Semen getSemen(int Id);
	public List<Semen> getAllSemen();
	public List<Semen> getAllSemenForNextpage(int page);
	public List<Semen> CheckAlertStock(int stockSemen);
	public List<Semen> CheckAlertStockForNextpage(int stockSemen,int page);
	public List<Semen> getSemenByNameCattle(String nameCattle);//ત���
	public List<Semen> getAllSemenForRelease();
	
	public List<Semen> getSearch(Semen semen,int page);
	int CountAllSemen(Semen semen);
	
	public List<Semen> getSearchForRelease(Semen semen,int page);
	int CountReleaseSemen(Semen semen);
}
