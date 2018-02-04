package farm3.spring.service;

import java.util.List;
import farm3.spring.model.CattleNutrient;

public interface CattleNutrientService {
	
	public void add(CattleNutrient cattlenutrient);
	public void edit(CattleNutrient cattlenutrient);
	public void delete(int id);
	public CattleNutrient getCattleNutrient(int id);
	public List getAllCattleNutrient();
	
	public double[] getC(double[] c);
	public double[] optimize(double[] c,double[][] G,double[] lb,double[] ub,double[] h);
	public int[] getIdRaw(int[] idR);
	public double[] getH(double[] h); 
	public double[] getLB(double[] lb); 
	public double[] getUB(double[] ub); 
	public String[] getG(String[] G);
}
