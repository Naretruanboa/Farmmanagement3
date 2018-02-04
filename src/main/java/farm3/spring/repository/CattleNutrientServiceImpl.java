package farm3.spring.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.joptimizer.optimizers.LPOptimizationRequest;
import com.joptimizer.optimizers.LPPrimalDualMethod;

import farm3.spring.dao.CattleNutrientDao;
import farm3.spring.model.CattleNutrient;
import farm3.spring.service.CattleNutrientService;

//import farm3.spring.service.NutrientRawService;

@Service
public class CattleNutrientServiceImpl implements CattleNutrientService {

	@Autowired
	private CattleNutrientDao cattlenutrientDao;

	@Transactional
	public void add(CattleNutrient cattlenutrient) {
		cattlenutrientDao.add(cattlenutrient);
	}

	@Transactional
	public void edit(CattleNutrient cattlenutrient) {
		cattlenutrientDao.edit(cattlenutrient);
	}

	@Transactional
	public void delete(int id) {
		cattlenutrientDao.delete(id);
	}

	@Transactional
	public CattleNutrient getCattleNutrient(int id) {
		return cattlenutrientDao.getCattleNutrient(id);
	}

	@Transactional
	public List getAllCattleNutrient() {
		return cattlenutrientDao.getAllCattleNutrient();
	}

	@Transactional
	public List getSearch(Map<String, String> attributes) {
		return cattlenutrientDao.getSearch(attributes);
	}
	
	
	@Transactional
	public double[] getC(double[] c) {
		
		
		return c;
	}
	@Transactional
	public int[] getIdRaw(int[] idR){
		return idR;
	}
	@Transactional
	public double[] getH(double[] h){
			if(h[0]<0){
				h[0]=(-1)*h[0];
			}else{h[0]=0;}
			if(h[1]<0){
				h[1]=(-1)*h[1];
			}else{h[1]=0;}
			if(h[2]<0){
				h[2]=(-1)*h[2];
			}else{h[2]=0;}
			if(h[3]<0){
				h[3]=(-1)*h[3];
			}else{h[3]=0;}
			if(h[4]<0){
				h[4]=(-1)*h[4];
			}else{h[4]=0;}
			if(h[5]<0){
				h[5]=(-1)*h[5];
			}else{h[5]=0;}
		return h;
	}
	@Transactional
	public double[] getLB(double[] lb){
		return lb;
	}
	@Transactional
	public double[] getUB(double[] ub){
		return ub;
	}
	@Transactional
	public String[] getG(String[] G){
		return G;
	}
	
	@Transactional
	public double[] optimize (double[] c,double[][] _G,double[] lb,double[] ub,double[] h) {
		//double[] c = new double[] { -1., -1. };

		//Inequalities constraints
		//double[][] G = new double[][] {{-0.90 ,-0.87,-0.89,-0.91}, {-0.12,-0.07,-0.42,-0.23},{-0.67,-0.72,-0.73,-0.64},{-0.08,-0.03,-0.08,-0.21},{0,0,0,0},{-0.02,0,-0.01,0},{-0.39,-0.63,-0.27,-0.10},{-49.0,-43.0,-35.0,-66.0},{0,0,-8.74,0},{-0.59,-0.22,0,0},{-1.0,-1.0,-1.0,-1.0}};
		double[][] G = _G;
		/*double[] h = new double[] {-83,-10,-45,-18,-500,-20,-100};*/
		/*double[] h = new double[] {-89,-12,-77,-13,-500,-20,-100};*/
		
		//Bounds on variables
		/*double[] lb = new double[] {0,0,0,0,0,0};
		double[] ub = new double[] {100.0,100.0,100.0,100.0,100.0,100.0};*/
		
		//optimization problem
		LPOptimizationRequest or = new LPOptimizationRequest();
		or.setC(c);
		or.setG(G);
		or.setH(h);
		or.setLb(lb);
		or.setUb(ub);
		or.setDumpProblem(true); 
		
		//optimization
		LPPrimalDualMethod opt = new LPPrimalDualMethod();
		
		opt.setLPOptimizationRequest(or);
		
		try {
			int returnCode = opt.optimize();
		}
		catch(Exception e){
			System.out.print("Error");
		}
		double[] sol = opt.getOptimizationResponse().getSolution();
		
		for (int i = 0; i <= 5; i++) {
			if(sol[i]<0.001){
				sol[i]=0;
			}
			sol[i] = Math.round(sol[i]*100)/100.00;
		}
		//System.out.println(sol[0]);	
		return sol;}

}