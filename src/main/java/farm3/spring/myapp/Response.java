package farm3.spring.myapp;

import farm3.spring.model.NutrientRaw;

public class Response {
	private String status;
	private Object data;
	
	private NutrientRaw nut;
	private double[] result;
	
	public Response () {}
	
	public Response (String status, Object data, NutrientRaw nut, double[] result) {
		this.status = status;
		this.data = data;
		this.nut = nut;
		this.result = result;
	}
	
	public String getStatus() {
		return this.status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public Object getData() {
		return this.data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	
	public NutrientRaw getNutrientRaw() {
		return this.nut;
	}
	public void setNutrientRaw(NutrientRaw nut) {
		this.nut = nut;
	}
	
	public double[] getResult() {
		return this.result;
	}
	public void setResult(double[] result) {
		this.result = result;
	}
}