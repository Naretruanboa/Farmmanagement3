package farm3.spring.model;
// Generated Sep 25, 2016 9:18:21 PM by Hibernate Tools 4.3.1.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * CattleDetail generated by hbm2java
 */
@Entity
@Table(name = "cattle_detail")
public class CattleDetail implements java.io.Serializable {

	private Integer id;
	private Cattle cattle;
	private FormulaRecord formulaRecord;
	private Date date;
	private Integer age;
	private Float weight;
	private Float wpD;
	private Float pregnant;
	private Integer lactation;
	private Float lactationPerDays;
	private Float fatMilk;
	private String unitBond;
	private String typeEating;
	private String strain;
	private String unitEnergy;
	private String stageWalk;
	private String priceMilk;
	private String scoreBody;

	public CattleDetail() {
	}

	public CattleDetail(Cattle cattle, FormulaRecord formulaRecord, Date date, Integer age, Float weight, Float wpD,
			Float pregnant, Integer lactation, Float lactationPerDays, Float fatMilk, String unitBond,
			String typeEating, String strain, String unitEnergy, String stageWalk, String priceMilk, String scoreBody) {
		this.cattle = cattle;
		this.formulaRecord = formulaRecord;
		this.date = date;
		this.age = age;
		this.weight = weight;
		this.wpD = wpD;
		this.pregnant = pregnant;
		this.lactation = lactation;
		this.lactationPerDays = lactationPerDays;
		this.fatMilk = fatMilk;
		this.unitBond = unitBond;
		this.typeEating = typeEating;
		this.strain = strain;
		this.unitEnergy = unitEnergy;
		this.stageWalk = stageWalk;
		this.priceMilk = priceMilk;
		this.scoreBody = scoreBody;
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "cattle_id")
	public Cattle getCattle() {
		return this.cattle;
	}

	public void setCattle(Cattle cattle) {
		this.cattle = cattle;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Formula_record_id")
	public FormulaRecord getFormulaRecord() {
		return this.formulaRecord;
	}

	public void setFormulaRecord(FormulaRecord formulaRecord) {
		this.formulaRecord = formulaRecord;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "Date", length = 10)
	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Column(name = "Age")
	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	@Column(name = "Weight", precision = 12, scale = 0)
	public Float getWeight() {
		return this.weight;
	}

	public void setWeight(Float weight) {
		this.weight = weight;
	}

	@Column(name = "WpD", precision = 12, scale = 0)
	public Float getWpD() {
		return this.wpD;
	}

	public void setWpD(Float wpD) {
		this.wpD = wpD;
	}

	@Column(name = "Pregnant", precision = 12, scale = 0)
	public Float getPregnant() {
		return this.pregnant;
	}

	public void setPregnant(Float pregnant) {
		this.pregnant = pregnant;
	}

	@Column(name = "Lactation")
	public Integer getLactation() {
		return this.lactation;
	}

	public void setLactation(Integer lactation) {
		this.lactation = lactation;
	}

	@Column(name = "LactationPerDays", precision = 12, scale = 0)
	public Float getLactationPerDays() {
		return this.lactationPerDays;
	}

	public void setLactationPerDays(Float lactationPerDays) {
		this.lactationPerDays = lactationPerDays;
	}

	@Column(name = "Fat_milk", precision = 12, scale = 0)
	public Float getFatMilk() {
		return this.fatMilk;
	}

	public void setFatMilk(Float fatMilk) {
		this.fatMilk = fatMilk;
	}

	@Column(name = "Unit_bond", length = 50)
	public String getUnitBond() {
		return this.unitBond;
	}

	public void setUnitBond(String unitBond) {
		this.unitBond = unitBond;
	}

	@Column(name = "Type_eating", length = 50)
	public String getTypeEating() {
		return this.typeEating;
	}

	public void setTypeEating(String typeEating) {
		this.typeEating = typeEating;
	}

	@Column(name = "Strain", length = 50)
	public String getStrain() {
		return this.strain;
	}

	public void setStrain(String strain) {
		this.strain = strain;
	}

	@Column(name = "Unit_energy", length = 50)
	public String getUnitEnergy() {
		return this.unitEnergy;
	}

	public void setUnitEnergy(String unitEnergy) {
		this.unitEnergy = unitEnergy;
	}

	@Column(name = "Stage_walk", length = 50)
	public String getStageWalk() {
		return this.stageWalk;
	}

	public void setStageWalk(String stageWalk) {
		this.stageWalk = stageWalk;
	}

	@Column(name = "Price_milk", length = 50)
	public String getPriceMilk() {
		return this.priceMilk;
	}

	public void setPriceMilk(String priceMilk) {
		this.priceMilk = priceMilk;
	}

	@Column(name = "Score_body", length = 50)
	public String getScoreBody() {
		return this.scoreBody;
	}

	public void setScoreBody(String scoreBody) {
		this.scoreBody = scoreBody;
	}

}
