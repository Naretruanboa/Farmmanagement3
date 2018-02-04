package farm3.spring.model;
// Generated Sep 25, 2016 9:18:21 PM by Hibernate Tools 4.3.1.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Farm generated by hbm2java
 */
@Entity
@Table(name = "farm")
public class Farm implements java.io.Serializable {

	private Integer id;
	private String nameThai;
	private String nameEng;
	private String shotName;
	private String address;
	private String phone;
	private Set<Cattle> cattles = new HashSet<Cattle>(0);
	
	
	public Farm() {
	}

	public Farm(String nameThai, String nameEng, String shotName, String address, String phone, Set<Cattle> cattles ) {
		this.nameThai = nameThai;
		this.nameEng = nameEng;
		this.shotName = shotName;
		this.address = address;
		this.phone = phone;
		this.cattles = cattles;
		
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

	@Column(name = "name_thai", length = 50)
	public String getNameThai() {
		return this.nameThai;
	}

	public void setNameThai(String nameThai) {
		this.nameThai = nameThai;
	}

	@Column(name = "name_eng", length = 50)
	public String getNameEng() {
		return this.nameEng;
	}

	public void setNameEng(String nameEng) {
		this.nameEng = nameEng;
	}

	@Column(name = "shot_name", length = 50)
	public String getShotName() {
		return this.shotName;
	}

	public void setShotName(String shotName) {
		this.shotName = shotName;
	}

	@Column(name = "address", length = 100)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "phone", length = 10)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "farm")
	public Set<Cattle> getCattles() {
		return this.cattles;
	}

	public void setCattles(Set<Cattle> cattles) {
		this.cattles = cattles;
	}


	
}
