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
 * Report generated by hbm2java
 */
@Entity
@Table(name = "report")
public class Report implements java.io.Serializable {

	private Integer id;
	private Worktogether worktogether;
	private String namefestivity;
	private String numpeople;
	private String numcattle;
	private String finalprice;
	private Integer festivityNo;

	public Report() {
	}

	public Report(Worktogether worktogether, String namefestivity, String numpeople, String numcattle,
			String finalprice, Integer festivityNo) {
		this.worktogether = worktogether;
		this.namefestivity = namefestivity;
		this.numpeople = numpeople;
		this.numcattle = numcattle;
		this.finalprice = finalprice;
		this.festivityNo = festivityNo;
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
	@JoinColumn(name = "worktogether_id")
	public Worktogether getWorktogether() {
		return this.worktogether;
	}

	public void setWorktogether(Worktogether worktogether) {
		this.worktogether = worktogether;
	}

	@Column(name = "namefestivity", length = 50)
	public String getNamefestivity() {
		return this.namefestivity;
	}

	public void setNamefestivity(String namefestivity) {
		this.namefestivity = namefestivity;
	}

	@Column(name = "numpeople", length = 50)
	public String getNumpeople() {
		return this.numpeople;
	}

	public void setNumpeople(String numpeople) {
		this.numpeople = numpeople;
	}

	@Column(name = "numcattle", length = 50)
	public String getNumcattle() {
		return this.numcattle;
	}

	public void setNumcattle(String numcattle) {
		this.numcattle = numcattle;
	}

	@Column(name = "finalprice", length = 50)
	public String getFinalprice() {
		return this.finalprice;
	}

	public void setFinalprice(String finalprice) {
		this.finalprice = finalprice;
	}

	@Column(name = "festivity_No")
	public Integer getFestivityNo() {
		return this.festivityNo;
	}

	public void setFestivityNo(Integer festivityNo) {
		this.festivityNo = festivityNo;
	}

}
