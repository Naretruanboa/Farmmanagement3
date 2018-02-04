package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.RawMaterial;

public interface RawMaterialDao {
	public void add(RawMaterial rawmaterial);
	public void edit(RawMaterial rawmaterial);
	public void delete(int Id);
	public RawMaterial getRawMaterial(int Id);
	public List<RawMaterial> getAllRawMaterial();
	public List<RawMaterial> getAllRawMaterialForNextpage(int page);
	public List<RawMaterial> CheckAlertStock(int stockRaw); //ત�ӹǹ����ѧ��ӡ��ҡ�˹�
	public List<RawMaterial> CheckAlertStockForNextpage(int stockRaw,int page);
	public List<RawMaterial> getRawMaterialByName(String name);//ત��Ҫ��ͫ������
	public List<RawMaterial> getAllRawMaterialForRelease();
	
	public List getSearch(RawMaterial rawmaterial,int page); //����
	int CountAllRaw(RawMaterial rawmaterial); //�Ѻ�ӹǹ㹴ҵ����
	public List getSearchForRelease(RawMaterial rawmaterial,int page); 
	int CountReleaseRaw(RawMaterial rawmaterial); 
}
