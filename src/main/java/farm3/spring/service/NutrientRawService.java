package farm3.spring.service;

import java.util.List;

import farm3.spring.model.NutrientRaw;

public interface NutrientRawService {
	
	public void add(NutrientRaw cattlenutrient);
	public void edit(NutrientRaw cattlenutrient);
	public void delete(int id);
	public NutrientRaw getCattleNutrient(int id);
	public List getAllCattleNutrient();
	
	public double[] getC(double[] c);
	public double[] optimize(double[] c,double[] gg,double[] lb,double[] ub,double[] height);
	public int[] getIdRaw(int[] idR);
	public double[] getH(double[] height); 
	public double[] getLB(double[] lb); 
	public double[] getUB(double[] ub); 
	public String[] getG(String[] gg);
}
