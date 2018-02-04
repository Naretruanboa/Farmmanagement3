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
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Type generated by hbm2java
 */
@Entity
@Table(name = "type")
public class Type implements java.io.Serializable {

	private Integer id;
	private String name;
	private Set<Festivity> festivities = new HashSet<Festivity>(0);

	public Type() {
	}

	public Type(String name, Set<Festivity> festivities) {
		this.name = name;
		this.festivities = festivities;
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

	@Column(name = "name", length = 50)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "type")
	public Set<Festivity> getFestivities() {
		return this.festivities;
	}

	public void setFestivities(Set<Festivity> festivities) {
		this.festivities = festivities;
	}

}