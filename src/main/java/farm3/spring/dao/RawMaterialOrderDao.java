package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.RawMaterialOrder;




public interface RawMaterialOrderDao {
	public void add(RawMaterialOrder rawmaterialorder);
	public void edit(RawMaterialOrder rawmaterialorder);
	public void delete(int Id);
	public RawMaterialOrder getRawMaterialOrder(int Id);
	public List<RawMaterialOrder> getAllRawMaterialOrder();
	public List<RawMaterialOrder> getSearch(RawMaterialOrder rawmaterialorder,int page); //����
	int CountAllRawMaterialOrder(RawMaterialOrder rawmaterialorder); //�Ѻ�ӹǹ㹴ҵ����
	public List<RawMaterialOrder> getSearchReport(String Start,String End,int memid);
	public List<RawMaterialOrder> getSearchReportForNextPage(String Start,String End,int memid,int page);
}
