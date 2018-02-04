package farm3.spring.dao;

import java.util.List;
import farm3.spring.model.RawMaterialImport;



public interface RawMaterialImportDao {
	public void add(RawMaterialImport rawmaterialimport);
	public void edit(RawMaterialImport rawmaterialimport);
	public void delete(int Id);
	public RawMaterialImport getRawMaterialImport(int Id);
	public List<RawMaterialImport> getAllRawMaterialImport();
	public List<RawMaterialImport> CheckAlertExpRaw(int day);
	public List<RawMaterialImport> CheckAlertExpRawForNextpage(int day,int page);
	public List<RawMaterialImport> getSearch(RawMaterialImport rawmaterialimport,int page); //����
	int CountAllRawMaterialImport(RawMaterialImport rawmaterialimport); //�Ѻ�ӹǹ㹴ҵ����
	public List<RawMaterialImport> getSearchReport(String Start,String End,int memid);
	public List<RawMaterialImport> getSearchReportForNextPage(String Start,String End,int memid,int page);
}
