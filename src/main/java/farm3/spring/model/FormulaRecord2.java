package farm3.spring.model;
// Generated Sep 25, 2016 9:18:21 PM by Hibernate Tools 4.3.1.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * FormulaRecord2 generated by hbm2java
 */
@Entity
@Table(name = "formula_record2")
public class FormulaRecord2 implements java.io.Serializable {

	private Integer id;
	private Member member;
	private TypeFormula typeFormula;
	private Float sumweight;
	private Float cost;
	private Float dm1;
	private Float dm2;
	private Float cp1;
	private Float cp2;
	private Float tdn1;
	private Float tdn2;
	private Float ndf1;
	private Float ndf2;
	private Float adf1;
	private Float adf2;
	private Float ca1;
	private Float ca2;
	private Float p1;
	private Float p2;
	private Float nfc1;
	private Float nfc2;
	private Float vita1;
	private Float vita2;
	private Float vite1;
	private Float vite2;
	private Set<RawMaterialFormula> rawMaterialFormulas = new HashSet<RawMaterialFormula>(0);

	public FormulaRecord2() {
	}

	public FormulaRecord2(Member member, TypeFormula typeFormula, Float sumweight, Float cost, Float dm1, Float dm2,
			Float cp1, Float cp2, Float tdn1, Float tdn2, Float ndf1, Float ndf2, Float adf1, Float adf2, Float ca1, Float ca2,
			Float p1, Float p2, Float nfc1, Float nfc2, Float vita1, Float vita2, Float vite1,
			Float vite2, Set<RawMaterialFormula> rawMaterialFormulas) {
		this.member = member;
		this.typeFormula = typeFormula;
		this.sumweight = sumweight;
		this.cost = cost;
		this.dm1 = dm1;
		this.dm2 = dm2;
		this.cp1 = cp1;
		this.cp2 = cp2;
		this.tdn1 = tdn1;
		this.tdn2 = tdn2;
		this.ndf1 = ndf1;
		this.ndf2 = ndf2;
		this.adf1 = adf1;
		this.adf2 = adf2;
		this.ca1 = ca1;
		this.ca2 = ca2;
		this.p1 = p1;
		this.p2 = p2;
		this.nfc1 = nfc1;
		this.nfc2 = nfc2;
		this.vita1 = vita1;
		this.vita2 = vita2;
		this.vite1 = vite1;
		this.vite2 = vite2;
		this.rawMaterialFormulas = rawMaterialFormulas;
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
	@JoinColumn(name = "Member_id")
	public Member getMember() {
		return this.member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Type_Formula_id")
	public TypeFormula getTypeFormula() {
		return this.typeFormula;
	}

	public void setTypeFormula(TypeFormula typeFormula) {
		this.typeFormula = typeFormula;
	}

	@Column(name = "sumweight", precision = 12, scale = 0)
	public Float getSumweight() {
		return this.sumweight;
	}

	public void setSumweight(Float sumweight) {
		this.sumweight = sumweight;
	}

	@Column(name = "cost", precision = 12, scale = 0)
	public Float getCost() {
		return this.cost;
	}

	public void setCost(Float cost) {
		this.cost = cost;
	}

	@Column(name = "dm1", precision = 12, scale = 0)
	public Float getDm1() {
		return this.dm1;
	}

	public void setDm1(Float dm1) {
		this.dm1 = dm1;
	}

	@Column(name = "dm2", precision = 12, scale = 0)
	public Float getDm2() {
		return this.dm2;
	}

	public void setDm2(Float dm2) {
		this.dm2 = dm2;
	}

	@Column(name = "cp1", precision = 12, scale = 0)
	public Float getCp1() {
		return this.cp1;
	}

	public void setCp1(Float cp1) {
		this.cp1 = cp1;
	}

	@Column(name = "cp2", precision = 12, scale = 0)
	public Float getCp2() {
		return this.cp2;
	}

	public void setCp2(Float cp2) {
		this.cp2 = cp2;
	}

	@Column(name = "tdn1", precision = 12, scale = 0)
	public Float getTdn1() {
		return this.tdn1;
	}

	public void setTdn1(Float tdn1) {
		this.tdn1 = tdn1;
	}

	@Column(name = "tdn2", precision = 12, scale = 0)
	public Float getTdn2() {
		return this.tdn2;
	}

	public void setTdn2(Float tdn2) {
		this.tdn2 = tdn2;
	}

	@Column(name = "ndf1", precision = 12, scale = 0)
	public Float getNdf1() {
		return this.ndf1;
	}

	public void setNdf1(Float ndf1) {
		this.ndf1 = ndf1;
	}

	@Column(name = "ndf2", precision = 12, scale = 0)
	public Float getNdf2() {
		return this.ndf2;
	}

	public void setNdf2(Float ndf2) {
		this.ndf2 = ndf2;
	}
	
/// เพิ่มเติม ///
	@Column(name = "adf1", precision =12, scale =0)
	public Float getAdf1() {
		return this.adf1;
	}
	
	public void setAdf1(Float adf1) {
		this.adf1 = adf1;
	}
	
	@Column(name = "adf2", precision =12, scale =0)
	public Float getAdf2() {
		return this.adf2;
	}
	
	public void setAdf2(Float adf2) {
		this.adf2 = adf2;
	}
	///ca
	@Column(name = "ca1", precision =12, scale =0)
	public Float getCa1() {
		return this.ca1;
	}
	
	public void setCa1(Float ca1) {
		this.ca1 = ca1;
	}
	
	@Column(name = "ca2", precision =12, scale =0)
	public Float getCa2() {
		return this.ca2;
	}
	
	public void setCa2(Float ca2) {
		this.ca2 = ca2;
	}
	//p
	@Column(name = "p1", precision =12, scale =0)
	public Float getP1() {
		return this.p1;
	}
	
	public void setP1(Float p1) {
		this.p1 = p1;
	}
	@Column(name = "p2", precision =12, scale =0)
	public Float getP2() {
		return this.p2;
	}
	
	public void setP2(Float p2) {
		this.p2 = p2;
	}
	//nfc
	@Column(name = "nfc1", precision =12, scale =0)
	public Float getNfc1() {
		return this.nfc1;
	}
	
	public void setNfc1(Float nfc1) {
		this.nfc1 = nfc1;
	}
	
	@Column(name = "nfc2", precision =12, scale =0)
	public Float getNfc2() {
		return this.nfc2;
	}
	
	public void setNfc2(Float nfc2) {
		this.nfc2 = nfc2;
	}
	
	@Column(name = "vita1", precision = 12, scale = 0)
	public Float getVita1() {
		return this.vita1;
	}

	public void setVita1(Float vita1) {
		this.vita1 = vita1;
	}

	@Column(name = "vita2", precision = 12, scale = 0)
	public Float getVita2() {
		return this.vita2;
	}

	public void setVita2(Float vita2) {
		this.vita2 = vita2;
	}

	@Column(name = "vite1", precision = 12, scale = 0)
	public Float getVite1() {
		return this.vite1;
	}

	public void setVite1(Float vite1) {
		this.vite1 = vite1;
	}

	@Column(name = "vite2", precision = 12, scale = 0)
	public Float getVite2() {
		return this.vite2;
	}

	public void setVite2(Float vite2) {
		this.vite2 = vite2;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "formulaRecord2")
	public Set<RawMaterialFormula> getRawMaterialFormulas() {
		return this.rawMaterialFormulas;
	}

	public void setRawMaterialFormulas(Set<RawMaterialFormula> rawMaterialFormulas) {
		this.rawMaterialFormulas = rawMaterialFormulas;
	}

}
