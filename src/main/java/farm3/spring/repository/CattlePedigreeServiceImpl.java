package farm3.spring.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import farm3.spring.dao.CattlePedigreeDao;
import farm3.spring.model.CattlePedigree;
import farm3.spring.service.CattlePedigreeService;

@Service
public class CattlePedigreeServiceImpl implements CattlePedigreeService {
	
	@Autowired
	private CattlePedigreeDao cattlepedigreedao;
	
	@Transactional
	public void add(CattlePedigree cattlepedigree) {
		// TODO Auto-generated method stub
		cattlepedigreedao.add(cattlepedigree);
	}

	@Transactional
	public void edit(CattlePedigree cattlepedigree) {
		// TODO Auto-generated method stub
		cattlepedigreedao.edit(cattlepedigree);
	}

	@Transactional
	public void delete(int Id) {
		// TODO Auto-generated method stub
		cattlepedigreedao.delete(Id);
	}

	@Transactional
	public CattlePedigree getCattlePedigree(int Id) {
		// TODO Auto-generated method stub
		return cattlepedigreedao.getCattlePedigree(Id);
	}

	@Transactional
	public List<CattlePedigree> getAllCattlePedigree() {
		// TODO Auto-generated method stub
		return cattlepedigreedao.getAllcattlePedigree();
	}
	
	

}
