package farm3.spring.model;
public class NutrientRaw {
	private double[] param;
	private double[] height;
	private double[] lb;
	private double[] ub;
	private int[] idr;
	private int dim;
	private double[][] gg;
	private double[][] a;
	
	public NutrientRaw() {}
	
	
	public NutrientRaw(double[] param, double[][] gg, int dim, int[] idr, double[] height, double[] lb, double[] ub, double[] a) {
		this.param = param;
		this.gg = gg;
		this.dim = dim;
		this.height = height;
		this.idr = idr;
		this.lb = lb;
		this.ub = ub;
		this.a = new double[][] {a};
	}
	
	// idr
	public int[] getIdr() {
		return this.idr;
	}
	public void setIdr(int[] idr) {
		this.idr = idr;
	}	
	
	// param
	public double[] getParam() {
		return this.param;
	}
	public void setParam(double[] param) {
		this.param = param;
	}
	
	// height
	public double[] getHeight() {
		return this.height;
	}
	public void setHeight(double[] height) {
		this.height = height;
	}
	
	// lb
	public double[] getLb() {
		return this.lb;
	}
	public void setLb(double[] lb) {
		this.lb = lb;
	}
	
	// ub
	public double[] getUb() {
		return this.ub;
	}
	public void setUb(double[] ub) {
		this.ub = ub;
	}
	
	// gg
	public double[][] getGg() {
		return this.gg;
	}
	public void setGg(double[][] gg) {
		this.gg = gg;
	}
	
	// dim
	public int getDim() {
		return this.dim;
	}
	public void setDim(int dim) {
		this.dim = dim;
	}
	
	// a
	public double[][] getA() {
		return this.a;
	}
	public void setA(double[] a) {
		this.a = new double[][] {a};
	}
	
	
}