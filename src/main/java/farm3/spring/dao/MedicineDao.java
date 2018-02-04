package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.Medicine;



public interface MedicineDao {
	public void add(Medicine medicine);
	public void edit(Medicine medicine);
	public void delete(int Id);
	public Medicine getMedicine(int Id);
	public List<Medicine> getAllMedicine();
	public List<Medicine> getAllMedicineForNextpage(int page);
	public List<Medicine> CheckAlertStock(int stockM);
	public List<Medicine> CheckAlertStockForNextpage(int stockM,int page);
	public List<Medicine> getAllMedicineForRelease();
	public List<Medicine> getSearch(Medicine medicine,int page); //����
	int CountAllMedicine(Medicine medicine); //�Ѻ�ӹǹ㹴ҵ����
	public List getMedicineByTradname(String tradname);//ત���ͫ��
	
	
	public List<Medicine> getSearchForRelease(Medicine medicine,int page);
	int CountReleaseMedicine(Medicine medicine);
	
	public List<Medicine> getNameMedBygroup(int Id);
	public Medicine getMedicine2(int[] Id);
}
