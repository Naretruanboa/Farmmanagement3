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
 * SemenImport generated by hbm2java
 */
@Entity
@Table(name = "semen_import")
public class SemenImport implements java.io.Serializable {

	private Integer id;
	private Member member;
	private Semen semen;
	private Integer quantity;
	private Integer price;
	private String farm;
	private String importSemen;
	private String place;
	private String note;
	private Integer billId;
	private String day;
	private Integer beforeQuantity;
	private Integer lot;

	public SemenImport() {
	}

	public SemenImport(Member member, Semen semen, Integer quantity, Integer price, String farm, String importSemen,
			String place, String note, Integer billId, String day, Integer beforeQuantity, Integer lot) {
		this.member = member;
		this.semen = semen;
		this.quantity = quantity;
		this.price = price;
		this.farm = farm;
		this.importSemen = importSemen;
		this.place = place;
		this.note = note;
		this.billId = billId;
		this.day = day;
		this.beforeQuantity = beforeQuantity;
		this.lot = lot;
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
	@JoinColumn(name = "member_id")
	public Member getMember() {
		return this.member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "semen_id")
	public Semen getSemen() {
		return this.semen;
	}

	public void setSemen(Semen semen) {
		this.semen = semen;
	}

	@Column(name = "quantity")
	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	@Column(name = "price")
	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	@Column(name = "farm", length = 100)
	public String getFarm() {
		return this.farm;
	}

	public void setFarm(String farm) {
		this.farm = farm;
	}

	@Column(name = "import_semen", length = 100)
	public String getImportSemen() {
		return this.importSemen;
	}

	public void setImportSemen(String importSemen) {
		this.importSemen = importSemen;
	}

	@Column(name = "place", length = 20)
	public String getPlace() {
		return this.place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	@Column(name = "note", length = 65535)
	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Column(name = "bill_id")
	public Integer getBillId() {
		return this.billId;
	}

	public void setBillId(Integer billId) {
		this.billId = billId;
	}

	@Column(name = "day", length = 10)
	public String getDay() {
		return this.day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	@Column(name = "before_quantity")
	public Integer getBeforeQuantity() {
		return this.beforeQuantity;
	}

	public void setBeforeQuantity(Integer beforeQuantity) {
		this.beforeQuantity = beforeQuantity;
	}

	@Column(name = "lot")
	public Integer getLot() {
		return this.lot;
	}

	public void setLot(Integer lot) {
		this.lot = lot;
	}
}
