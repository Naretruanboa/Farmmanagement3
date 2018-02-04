package farm3.spring.dao;

import java.util.List;

import farm3.spring.model.RawMaterialRelease;



public interface RawMaterialReleaseDao {
	public void add(RawMaterialRelease rawmaterialrelease);
	public void edit(RawMaterialRelease rawmaterialrelease);
	public void delete(int Id);
	public RawMaterialRelease getRawMaterialRelease(int Id);
	public List<RawMaterialRelease> getAllRawMaterialRelease();
	public List<RawMaterialRelease> getSearch(RawMaterialRelease rawmaterialrelease,int page); //����
	int CountAllRawMaterialRelease(RawMaterialRelease rawmaterialrelease); //�Ѻ�ӹǹ㹴ҵ����
	public List<RawMaterialRelease> getSearchReport(String Start,String End,int memid);
	public List<RawMaterialRelease> getSearchReportForNextPage(String Start,String End,int memid,int page);
}
