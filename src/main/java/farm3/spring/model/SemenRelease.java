package farm3.spring.model;
// Generated Sep 18, 2016 10:00:53 AM by Hibernate Tools 4.3.1.Final

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
 * SemenRelease generated by hbm2java
 */
@Entity
@Table(name = "semen_release")
public class SemenRelease implements java.io.Serializable {

	private Integer id;
	private Member member;
	private Semen semen;
	private String day;
	private Integer quantity;
	private Integer billId;

	public SemenRelease() {
	}

	public SemenRelease(Member member, Semen semen, String day) {
		this.member = member;
		this.semen = semen;
		this.day = day;
	}

	public SemenRelease(Member member, Semen semen, String day, Integer quantity, Integer billId) {
		this.member = member;
		this.semen = semen;
		this.day = day;
		this.quantity = quantity;
		this.billId = billId;
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
	@JoinColumn(name = "member_id", nullable = false)
	public Member getMember() {
		return this.member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "semen_id", nullable = false)
	public Semen getSemen() {
		return this.semen;
	}

	public void setSemen(Semen semen) {
		this.semen = semen;
	}

	@Column(name = "day", nullable = false, length = 10)
	public String getDay() {
		return this.day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	@Column(name = "quantity")
	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	@Column(name = "bill_id")
	public Integer getBillId() {
		return this.billId;
	}

	public void setBillId(Integer billId) {
		this.billId = billId;
	}

}
