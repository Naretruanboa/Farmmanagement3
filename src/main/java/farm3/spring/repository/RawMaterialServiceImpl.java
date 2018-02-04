package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.RawMaterialDao;
import farm3.spring.model.RawMaterial;
import farm3.spring.service.RawMaterialService;

@Service
public class RawMaterialServiceImpl implements RawMaterialService {


	@Autowired
	private RawMaterialDao rawmaterialdao;
	
	@Transactional
	public void add(RawMaterial rawmaterial) {
		// TODO Auto-generated method stub
		rawmaterialdao.add(rawmaterial);
	}

	@Transactional
	public void edit(RawMaterial rawmaterial) {
		// TODO Auto-generated method stub
		rawmaterialdao.edit(rawmaterial);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		rawmaterialdao.delete(Id);
	}

	@Transactional
	public RawMaterial getRawMaterial(int Id) {
		// TODO Auto-generated method stub
		return rawmaterialdao.getRawMaterial(Id);
	}

	@Transactional
	public List getAllRawMaterial() {
		// TODO Auto-generated method stub
		return rawmaterialdao.getAllRawMaterial();
	}
	@Transactional
	public List<RawMaterial> CheckAlertStock(int stockRaw){
		return rawmaterialdao.CheckAlertStock(stockRaw);
	}
	@Transactional
	public List<RawMaterial> CheckAlertStockForNextpage(int stockRaw,int page){
		return rawmaterialdao.CheckAlertStockForNextpage(stockRaw, page);
	}
	@Transactional  //ત�ѵ�شԺ���
	public List getRawMaterialByName(String name){
		return rawmaterialdao.getRawMaterialByName(name);
	}
@Transactional
public List<RawMaterial> getAllRawMaterialForRelease(){
	return rawmaterialdao.getAllRawMaterialForRelease();
}

@Transactional
public List getSearch(RawMaterial rawmaterial,int page) //����
{
	return rawmaterialdao.getSearch(rawmaterial, page);
}
@Transactional
public int CountAllRaw(RawMaterial rawmaterial) //�Ѻ�ӹǹ㹴ҵ����
{
	return rawmaterialdao.CountAllRaw(rawmaterial);
	}
@Transactional
public List getSearchForRelease(RawMaterial rawmaterial,int page){
	return rawmaterialdao.getSearchForRelease(rawmaterial, page);
}
@Transactional
public int CountReleaseRaw(RawMaterial rawmaterial){
	return rawmaterialdao.CountReleaseRaw(rawmaterial);
}
@Transactional
public List<RawMaterial> getAllRawMaterialForNextpage(int page){
	return rawmaterialdao.getAllRawMaterialForNextpage(page);
}
}
