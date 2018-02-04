package farm3.spring.repository;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import farm3.spring.dao.ToolDao;
import farm3.spring.model.Tool;
import farm3.spring.service.ToolService;

@Service
public class ToolServiceImpl implements ToolService {

	@Autowired
	private ToolDao tooldao;
	
	@Transactional
	public void add(Tool tool) {
		// TODO Auto-generated method stub
		tooldao.add(tool);
	}

	@Transactional
	public void edit(Tool tool) {
		// TODO Auto-generated method stub
		tooldao.edit(tool);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		tooldao.delete(Id);
	}

	@Transactional
	public Tool getTool(int Id) {
		// TODO Auto-generated method stub
		return tooldao.getTool(Id);
	}

	@Transactional
	public List getAllTool() {
		// TODO Auto-generated method stub
		return tooldao.getAllTool();
	}
@Transactional
public List<Tool> CheckAlertStock(int stockTool){
	return tooldao.CheckAlertStock(stockTool);
}
@Transactional
public List<Tool> CheckAlertStockForNextpage(int stockTool,int page){
	return tooldao.CheckAlertStockForNextpage(stockTool, page);
}
	@Transactional //ત���ͫ��
	public List getToolByName(String name) {
		// TODO Auto-generated method stub
		return tooldao.getToolByName(name);
	}
@Transactional
public List<Tool> getAllToolForRelease(){
	return tooldao.getAllToolForRelease();
}
@Transactional
public List<Tool> getAllToolForBorrow(){
	return tooldao.getAllToolForBorrow();
}

//search
@Transactional //ત���ͫ��
public List getSearch(Tool tool,int page) {
	// TODO Auto-generated method stub
	return tooldao.getSearch(tool,page);
}

@Transactional //ત���ͫ��
public int CountAllTool(Tool tool) {
	// TODO Auto-generated method stub
	return tooldao.CountAllTool(tool);
}
@Transactional
public List getSearchForRelease(Tool tool,int page){
	return tooldao.getSearchForRelease(tool, page);
}
@Transactional
public int CountReleaseTool(Tool tool){
	return tooldao.CountReleaseTool(tool);
}
@Transactional
public List getSearchForBorrow(Tool tool,int page){
	return tooldao.getSearchForBorrow(tool, page);
}
@Transactional
public int CountBorrowTool(Tool tool){
	return tooldao.CountBorrowTool(tool);
}
@Transactional
public List getAllToolForNextpage(int page){
	return tooldao.getAllToolForNextpage(page);
}

}
