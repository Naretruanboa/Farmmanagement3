/*package farm3.spring.model;


import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name = "class_cattle")
public class ClassCattle implements java.io.Serializable{
	private Integer id;
	private String breeds;
	
	private Set<Cattle> cattles = new HashSet<Cattle>(0);
	
	public ClassCattle() {
	}
	
	public ClassCattle(String breeds, Set<Cattle> cattles) {
		this.breeds = breeds;
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
	
	@Column(name = "breeds", length = 255)
	public String getBreeds() {
		return this.breeds;
	}

	public void setBreeds(String breeds) {
		this.breeds = breeds;
	}
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "classCattle")
	public Set<Cattle> getCattles() {
		return this.cattles;
	}

	public void setCattles(Set<Cattle> cattles) {
		this.cattles = cattles;
	}
	
}
*/