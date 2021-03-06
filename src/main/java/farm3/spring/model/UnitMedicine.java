package farm3.spring.model;
// Generated Sep 25, 2016 9:18:21 PM by Hibernate Tools 4.3.1.Final

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import com.google.gson.annotations.Expose;

/**
 * UnitMedicine generated by hbm2java
 */
@Entity
@Table(name = "unit_medicine")
public class UnitMedicine {
	private Integer id;
	@Expose private String value;
	private Set<Medicine> medicines = new HashSet<Medicine>(0);

	public UnitMedicine() {
	}

	public UnitMedicine(String value, Set<Medicine> medicines) {
		this.value = value;
		this.medicines = medicines;
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

	@Column(name = "value", unique = true, length = 45)
	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "unitMedicine")
	public Set<Medicine> getMedicines() {
		return this.medicines;
	}

	public void setMedicines(Set<Medicine> medicines) {
		this.medicines = medicines;
	}
	/*@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	@Column(name = "value")
@Expose  private String value;
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "unitMedicine")
	@Fetch(value = FetchMode.SUBSELECT)
	private List<Medicine> medicines;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public List<Medicine> getMedicines() {
		return medicines;
	}
	public void setMedicines(List<Medicine> medicines) {
		this.medicines = medicines;
	}*/
	

}
