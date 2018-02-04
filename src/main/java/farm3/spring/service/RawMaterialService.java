package farm3.spring.service;

import java.util.List;

import farm3.spring.model.RawMaterial;



public interface RawMaterialService {
	public void add(RawMaterial rawmaterial);
	public void edit(RawMaterial rawmaterial);
	public void delete(int Id);

	public RawMaterial getRawMaterial(int Id);
	public List getAllRawMaterial();
	public List<RawMaterial> getAllRawMaterialForNextpage(int page);
	public List<RawMaterial> CheckAlertStock(int stockRaw);
	public List<RawMaterial> CheckAlertStockForNextpage(int stockRaw,int page);
	public List getRawMaterialByName(String name); //ત��Ҫ����ѵ�شԺ����������
	public List<RawMaterial> getAllRawMaterialForRelease();
	public List getSearch(RawMaterial rawmaterial,int page); //����
	int CountAllRaw(RawMaterial rawmaterial); //�Ѻ�ӹǹ㹴ҵ����
	public List getSearchForRelease(RawMaterial rawmaterial,int page); 
	int CountReleaseRaw(RawMaterial rawmaterial); 
}
