package farm3.spring.service;

import java.util.List;

import farm3.spring.model.MedicineRelease;

public interface MedicineReleaseService {
	public void add(MedicineRelease medicinerelease);
	public void edit(MedicineRelease medicinerelease);
	public void delete(int Id);
	public MedicineRelease getMedicineRelease(int Id);
	public List<MedicineRelease> getAllMedicineRelease();
	public List<MedicineRelease> getSearch(MedicineRelease medicinerelease,int page); //����
	int CountAllMedicineRelease(MedicineRelease medicinerelease);
	public List<MedicineRelease> getSearchReport(String Start,String End,int memid);
	public List<MedicineRelease> getSearchReportForNextPage(String Start,String End,int memid,int page);
}
