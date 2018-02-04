package farm3.spring.model;
// Generated Sep 18, 2016 10:00:53 AM by Hibernate Tools 4.3.1.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * AlertStorehouse generated by hbm2java
 */
@Entity
@Table(name = "alert_storehouse")
public class AlertStorehouse implements java.io.Serializable {

	private Integer id;
	private Integer stockMedicine;
	private Integer stockRaw;
	private Integer stockTool;
	private Integer stockSemen;
	private Integer expMedicine;
	private Integer expRaw;
	private Integer expBucket;

	public AlertStorehouse() {
	}

	public AlertStorehouse(Integer stockMedicine, Integer stockRaw, Integer stockTool, Integer stockSemen,
			Integer expMedicine, Integer expRaw, Integer expBucket) {
		this.stockMedicine = stockMedicine;
		this.stockRaw = stockRaw;
		this.stockTool = stockTool;
		this.stockSemen = stockSemen;
		this.expMedicine = expMedicine;
		this.expRaw = expRaw;
		this.expBucket = expBucket;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "stock_medicine")
	public Integer getStockMedicine() {
		return this.stockMedicine;
	}

	public void setStockMedicine(Integer stockMedicine) {
		this.stockMedicine = stockMedicine;
	}

	@Column(name = "stock_raw")
	public Integer getStockRaw() {
		return this.stockRaw;
	}

	public void setStockRaw(Integer stockRaw) {
		this.stockRaw = stockRaw;
	}

	@Column(name = "stock_tool")
	public Integer getStockTool() {
		return this.stockTool;
	}

	public void setStockTool(Integer stockTool) {
		this.stockTool = stockTool;
	}

	@Column(name = "stock_semen")
	public Integer getStockSemen() {
		return this.stockSemen;
	}

	public void setStockSemen(Integer stockSemen) {
		this.stockSemen = stockSemen;
	}

	@Column(name = "exp_medicine")
	public Integer getExpMedicine() {
		return this.expMedicine;
	}

	public void setExpMedicine(Integer expMedicine) {
		this.expMedicine = expMedicine;
	}

	@Column(name = "exp_raw")
	public Integer getExpRaw() {
		return this.expRaw;
	}

	public void setExpRaw(Integer expRaw) {
		this.expRaw = expRaw;
	}

	@Column(name = "exp_bucket")
	public Integer getExpBucket() {
		return this.expBucket;
	}

	public void setExpBucket(Integer expBucket) {
		this.expBucket = expBucket;
	}

}
