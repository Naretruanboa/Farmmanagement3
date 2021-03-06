package farm3.spring.model;
// Generated Sep 25, 2016 9:18:21 PM by Hibernate Tools 4.3.1.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * FestivityFattenHistory generated by hbm2java
 */
@Entity
@Table(name = "festivity_fatten_history")
public class FestivityFattenHistory implements java.io.Serializable {

	private Integer id;
	private Festivity festivity;
	private String cowId;

	public FestivityFattenHistory() {
	}

	public FestivityFattenHistory(Festivity festivity, String cowId) {
		this.festivity = festivity;
		this.cowId = cowId;
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
	@JoinColumn(name = "festivity_id")
	public Festivity getFestivity() {
		return this.festivity;
	}

	public void setFestivity(Festivity festivity) {
		this.festivity = festivity;
	}

	@Column(name = "cow_id", length = 50)
	public String getCowId() {
		return this.cowId;
	}

	public void setCowId(String cowId) {
		this.cowId = cowId;
	}

}
