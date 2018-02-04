package farm3.spring.model;



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
@Table(name = "cattle_pedigree")
public class CattlePedigree implements java.io.Serializable{
	
	private Integer id;
	private String bwEpd;
	private String bwAcc;
	private String wwEpd;
	private String wwAcc;
	private String ywEpd;
	private String ywAcc;
	private String milkEpd;
	private String milkAcc;
	private String tmEpd;
	private String tmAcc;
	private String scEpd;
	private String scAcc;
	private String fatEpd;
	private String fatAcc;
	private String reaEpd;
	private String reaAcc;
	private String imfEpd;
	private String rumpEpd;
	private String rumpAcc;
	private String milkDairy;
	private String fatDairy;
	private String tenderness;
	private String docility;
	private String ma;
	private String breastFront;
	private String breastBack;
	private String breastBackHeight;
	private String breastBackWidth;
	private String breastDepth;
	private String lenthNipple;
	private String frontBreast;
	private String backBreast;
	private String body;
	private String bodyDepth;
	private String stong;
	private String hipAngle;
	private String widthHips;
	private String curBackLegs;
	private String straightBackLegs;
	private String hoofCorner;
	private String pointLegHoof;
	private String ageYield;
	private String protein;
	private String netIncome;
	private String birthRate;
	private String daughterBirthRate;
	private String firstDeath;
	private String daughterFirstDeath;
	private String daughterPregnancyRate;
	private String somatic;
	private String adg;
	private String calvingEaseDirEbv;
	private String calvingEaseDirAcc;
	private String calvingEaseDtrsEbv;
	private String calvingEaseDtrsAcc;
	private String birthwtEbv;
	private String birthwtAcc;
	private String gestationLengthEbv;
	private String gestationLengthAcc;
	private String wt200dayEbv;
	private String wt200dayAcc;
	private String wt400dayEbv;
	private String wt400dayAcc;
	private String wt600dayEbv;
	private String wt600dayAcc;
	private String matCowEbv;
	private String matCowAcc;
	private String milk200dayEbv;
	private String milk200dayAcc;
	private String scrotalSizeEbv;
	private String scrotalSizeAcc;
	private String carcaseWtEbv;
	private String carcaseWtAcc;
	private String eyeMuscleAreaEbv;
	private String eyeMuscleAreaAcc;
	private String ribFatEbv;
	private String ribFatAcc;
	private String retailBeefYieldEbv;
	private String retailBeefYieldAcc;
	private String imfEbv;
	private String imfAcc;
	
	private String dateReport;
	private String picture;
	private String numberEar;
	private String rumpEbv;
	private String bwEbv;

	
	
	
	private Set<Cattle> cattles = new HashSet<Cattle>(0);
	
	
	
	public CattlePedigree() {
	}

	public CattlePedigree(String bwEpd, String bwAcc, String wwEpd, String wwAcc, String ywEpd, 
			String ywAcc, String milkEpd, String milkAcc, String tmEpd, String tmAcc, String scEpd, 
			String scAcc, String fatEpd, String fatAcc, String reaEpd, String reaAcc, String imfEpd, 
			String rumpEpd, String rumpAcc, String milkDairy, String fatDairy, String tenderness, 
			String docility, String ma, String breastFront, String breastBack, String breastBackHeight, 
			String breastBackWidth, String breastDepth, String lenthNipple, String frontBreast, String backBreast, 
			String body, String bodyDepth, String stong, String hipAngle, String widthHips, String curBackLegs, 
			String straightBackLegs, String hoofCorner, String pointLegHoof, String ageYield, String protein, 
			String netIncome, String birthrate, String daughterBirthRate, String firstDeath, String daughterFirstDeath, 
			String daughterPregnancyRate, String somatic, String adg, String calvingEaseDirEbv, String calvingEaseDirAcc, 
			String calvingEaseDtrsEbv, String calvingEaseDtrsAcc, String birthwtEbv, String birthwtAcc, 
			String gestationLengthEbv, String gestationLengthAcc, String wt200dayEbv, String wt200dayAcc, 
			String wt400dayEbv, String wt400dayAcc, String wt600dayEbv, String wt600dayAcc, String matCowEbv, 
			String matCowAcc, String milk200dayEbv, String milk200dayAcc, String scrotalSizeEbv, String scrotalSizeAcc, 
			String carcaseWtEbv, String carcaseWtAcc, String eyeMuscleAreaEbv, String eyeMuscleAreaAcc, String ribFatEbv, 
			String ribFatAcc, String retailBeefYieldEbv, String retailBeefYieldAcc, String imfEbv, String imfAcc, String dateReport, String picture, String numberEar, Set<Cattle> cattles, String rumpEbv, String bwEbv) {
		this.bwEpd = bwEpd;
		this.bwAcc = bwAcc;
		this.wwEpd = wwEpd;
		this.wwAcc = wwAcc;
		this.ywEpd = ywEpd;
		this.ywAcc = ywAcc;
		this.milkEpd = milkEpd;
		this.milkAcc = milkAcc;
		this.tmEpd = tmEpd;
		this.tmAcc = tmAcc;
		this.scEpd = scEpd;
		this.scAcc = scAcc;
		this.fatEpd = fatEpd;
		this.fatAcc = fatAcc;
		this.reaEpd = reaEpd;
		this.reaAcc = reaAcc;
		this.imfEpd = imfEpd;
		this.rumpEpd = rumpEpd;
		this.rumpEbv = rumpEbv;
		this.rumpAcc = rumpAcc;
		this.milkDairy = milkDairy;
		this.fatDairy = fatDairy;
		this.tenderness = tenderness;
		this.docility = docility;
		this.ma = ma;
		this.breastFront = breastFront;
		this.breastBack = breastBack;
		this.breastBackHeight = breastBackHeight;
		this.breastBackWidth = breastBackWidth;
		this.breastDepth = breastDepth;
		this.lenthNipple = lenthNipple;
		this.frontBreast = frontBreast;
		this.backBreast = backBreast;
		this.body = body;
		this.bodyDepth = bodyDepth;
		this.stong = stong;
		this.hipAngle = hipAngle;
		this.widthHips = widthHips;
		this.curBackLegs = curBackLegs;
		this.straightBackLegs = straightBackLegs;
		this.hoofCorner = hoofCorner;
		this.pointLegHoof = pointLegHoof;
		this.ageYield = ageYield;
		this.protein = protein;
		this.netIncome = netIncome;
		this.birthRate = birthRate;
		this.daughterBirthRate = daughterBirthRate;
		this.firstDeath = firstDeath;
		this.daughterFirstDeath = daughterFirstDeath;
		this.daughterPregnancyRate = daughterPregnancyRate;
		this.somatic = somatic;
		this.adg = adg;
		this.calvingEaseDirEbv = calvingEaseDirEbv;
		this.calvingEaseDirAcc = calvingEaseDirAcc;
		this.calvingEaseDtrsEbv = calvingEaseDtrsEbv;
		this.calvingEaseDtrsAcc = calvingEaseDtrsAcc;
		this.birthwtEbv = birthwtEbv;
		this.birthwtAcc = birthwtAcc;
		this.gestationLengthEbv = gestationLengthEbv;
		this.gestationLengthAcc = gestationLengthAcc;
		this.wt200dayEbv = wt200dayEbv;
		this.wt400dayEbv = wt400dayEbv;
		this.wt400dayAcc = wt400dayAcc;
		this.wt600dayEbv = wt600dayEbv;
		this.wt600dayAcc = wt600dayAcc;
		this.matCowEbv = matCowEbv;
		this.matCowAcc = matCowAcc;
		this.milk200dayEbv = milk200dayEbv;
		this.milk200dayAcc = milk200dayAcc;
		this.scrotalSizeEbv = scrotalSizeEbv;
		this.scrotalSizeAcc = scrotalSizeAcc;
		this.carcaseWtEbv = carcaseWtEbv;
		this.carcaseWtAcc = carcaseWtAcc;
		this.eyeMuscleAreaEbv = eyeMuscleAreaEbv;
		this.eyeMuscleAreaAcc = eyeMuscleAreaAcc;
		this.ribFatEbv = ribFatEbv;
		this.ribFatAcc = ribFatAcc;
		this.retailBeefYieldEbv = retailBeefYieldEbv;
		this.retailBeefYieldAcc = retailBeefYieldAcc;
		this.imfEbv = imfEbv;
		this.imfAcc = imfAcc;
		this.dateReport = dateReport;
		this.picture = picture;
		this.numberEar = numberEar;
		this.bwEbv = bwEbv;
		
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
	
	@Column(name = "bw_epd", length = 10)
	public String getBwEpd() {
		return bwEpd;
	}

	public void setBwEpd(String bwEpd) {
		this.bwEpd = bwEpd;
	}

	@Column(name = "bw_acc", length = 10)
	public String getBwAcc() {
		return bwAcc;
	}

	public void setBwAcc(String bwAcc) {
		this.bwAcc = bwAcc;
	}

	@Column(name = "ww_epd", length = 10)
	public String getWwEpd() {
		return wwEpd;
	}

	public void setWwEpd(String wwEpd) {
		this.wwEpd = wwEpd;
	}

	@Column(name = "ww_acc", length = 10)
	public String getWwAcc() {
		return wwAcc;
	}

	public void setWwAcc(String wwAcc) {
		this.wwAcc = wwAcc;
	}
	
	@Column(name = "yw_epd", length = 10)
	public String getYwEpd() {
		return ywEpd;
	}

	public void setYwEpd(String ywEpd) {
		this.ywEpd = ywEpd;
	}

	@Column(name = "yw_acc", length = 10)
	public String getYwAcc() {
		return ywAcc;
	}

	public void setYwAcc(String ywAcc) {
		this.ywAcc = ywAcc;
	}

	@Column(name = "milk_epd", length = 10)
	public String getMilkEpd() {
		return milkEpd;
	}

	public void setMilkEpd(String milkEpd) {
		this.milkEpd = milkEpd;
	}

	@Column(name = "milk_acc", length = 10)
	public String getMilkAcc() {
		return milkAcc;
	}

	public void setMilkAcc(String milkAcc) {
		this.milkAcc = milkAcc;
	}
	
	@Column(name = "tm_epd", length = 10)
	public String getTmEpd() {
		return tmEpd;
	}

	public void setTmEpd(String tmEpd) {
		this.tmEpd = tmEpd;
	}

	@Column(name = "tm_acc", length = 10)
	public String getTmAcc() {
		return tmAcc;
	}

	public void setTmAcc(String tmAcc) {
		this.tmAcc = tmAcc;
	}
	
	@Column(name = "sc_epd", length = 10)
	public String getScEpd() {
		return scEpd;
	}

	public void setScEpd(String scEpd) {
		this.scEpd = scEpd;
	}

	@Column(name = "sc_acc", length = 10)
	public String getScAcc() {
		return scAcc;
	}

	public void setScAcc(String scAcc) {
		this.scAcc = scAcc;
	}

	@Column(name = "fat_epd", length = 10)
	public String getFatEpd() {
		return fatEpd;
	}

	public void setFatEpd(String fatEpd) {
		this.fatEpd = fatEpd;
	}

	@Column(name = "fat_acc", length = 10)
	public String getFatAcc() {
		return fatAcc;
	}

	public void setFatAcc(String fatAcc) {
		this.fatAcc = fatAcc;
	}

	@Column(name = "rea_epd", length = 10)
	public String getReaEpd() {
		return reaEpd;
	}

	public void setReaEpd(String reaEpd) {
		this.reaEpd = reaEpd;
	}

	@Column(name = "rea_acc", length = 10)
	public String getReaAcc() {
		return reaAcc;
	}

	public void setReaAcc(String reaAcc) {
		this.reaAcc = reaAcc;
	}

	@Column(name = "imf_epd", length = 10)
	public String getImfEpd() {
		return imfEpd;
	}

	public void setImfEpd(String imfEpd) {
		this.imfEpd = imfEpd;
	}

	@Column(name = "rump_epd", length = 10)
	public String getRumpEpd() {
		return rumpEpd;
	}

	public void setRumpEpd(String rumpEpd) {
		this.rumpEpd = rumpEpd;
	}

	@Column(name = "rump_acc", length = 10)
	public String getRumpAcc() {
		return rumpAcc;
	}

	public void setRumpAcc(String rumpAcc) {
		this.rumpAcc = rumpAcc;
	}

	@Column(name = "milk_dairy", length = 10)
	public String getMilkDairy() {
		return milkDairy;
	}

	public void setMilkDairy(String milkDairy) {
		this.milkDairy = milkDairy;
	}

	@Column(name = "fat_dairy", length = 10)
	public String getFatDairy() {
		return fatDairy;
	}

	public void setFatDairy(String fatDairy) {
		this.fatDairy = fatDairy;
	}
	
	
	@Column(name = "tenderness", length = 10)
	public String getTenderness() {
		return tenderness;
	}

	public void setTenderness(String tenderness) {
		this.tenderness = tenderness;
	}
	
	@Column(name = "docility", length = 10)
	public String getDocility() {
		return docility;
	}

	public void setDocility(String docility) {
		this.docility = docility;
	}

	@Column(name = "ma", length = 10)
	public String getMa() {
		return ma;
	}

	public void setMa(String ma) {
		this.ma = ma;
	}

	@Column(name = "breast_front", length = 10)
	public String getBreastFront() {
		return breastFront;
	}

	public void setBreastFront(String breastFront) {
		this.breastFront = breastFront;
	}

	@Column(name = "breast_back", length = 10)
	public String getBreastBack() {
		return breastBack;
	}

	public void setBreastBack(String breastBack) {
		this.breastBack = breastBack;
	}

	@Column(name = "breast_back_height", length = 10)
	public String getBreastBackHeight() {
		return breastBackHeight;
	}

	public void setBreastBackHeight(String breastBackHeight) {
		this.breastBackHeight = breastBackHeight;
	}

	@Column(name = "breast_back_width", length = 10)
	public String getBreastBackWidth() {
		return breastBackWidth;
	}

	public void setBreastBackWidth(String breastBackWidth) {
		this.breastBackWidth = breastBackWidth;
	}

	@Column(name = "breast_depth", length = 10)
	public String getBreastDepth() {
		return breastDepth;
	}

	public void setBreastDepth(String breastDepth) {
		this.breastDepth = breastDepth;
	}

	@Column(name = "lenth_nipple", length = 10)
	public String getLenthNipple() {
		return lenthNipple;
	}

	public void setLenthNipple(String lenthNipple) {
		this.lenthNipple = lenthNipple;
	}
	
	@Column(name = "front_breast", length = 10)
	public String getFrontBreast() {
		return frontBreast;
	}

	public void setFrontBreast(String frontBreast) {
		this.frontBreast = frontBreast;
	}

	@Column(name = "back_breast", length = 10)
	public String getBackBreast() {
		return backBreast;
	}

	public void setBackBreast(String backBreast) {
		this.backBreast = backBreast;
	}

	@Column(name = "body", length = 10)
	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	@Column(name = "body_depth", length = 10)
	public String getBodyDepth() {
		return bodyDepth;
	}

	public void setBodyDepth(String bodyDepth) {
		this.bodyDepth = bodyDepth;
	}

	@Column(name = "stong", length = 10)
	public String getStong() {
		return stong;
	}

	public void setStong(String stong) {
		this.stong = stong;
	}

	@Column(name = "hip_angle", length = 10)
	public String getHipAngle() {
		return hipAngle;
	}

	public void setHipAngle(String hipAngle) {
		this.hipAngle = hipAngle;
	}

	@Column(name = "width_hips", length = 10)
	public String getWidthHips() {
		return widthHips;
	}

	public void setWidthHips(String widthHips) {
		this.widthHips = widthHips;
	}

	@Column(name = "cur_back_legs", length = 10)
	public String getCurBackLegs() {
		return curBackLegs;
	}

	public void setCurBackLegs(String curBackLegs) {
		this.curBackLegs = curBackLegs;
	}

	@Column(name = "straight_back_legs", length = 10)
	public String getStraightBackLegs() {
		return straightBackLegs;
	}

	public void setStraightBackLegs(String straightBackLegs) {
		this.straightBackLegs = straightBackLegs;
	}

	@Column(name = "hoof_corner", length = 10)
	public String getHoofCorner() {
		return hoofCorner;
	}

	public void setHoofCorner(String hoofCorner) {
		this.hoofCorner = hoofCorner;
	}

	@Column(name = "point_leg_hoof", length = 10)
	public String getPointLegHoof() {
		return pointLegHoof;
	}

	public void setPointLegHoof(String pointLegHoof) {
		this.pointLegHoof = pointLegHoof;
	}

	@Column(name = "age_yield", length = 10)
	public String getAgeYield() {
		return ageYield;
	}

	public void setAgeYield(String ageYield) {
		this.ageYield = ageYield;
	}

	@Column(name = "protein", length = 10)
	public String getProtein() {
		return protein;
	}

	public void setProtein(String protein) {
		this.protein = protein;
	}

	@Column(name = "net_income", length = 10)
	public String getNetIncome() {
		return netIncome;
	}

	public void setNetIncome(String netIncome) {
		this.netIncome = netIncome;
	}

	@Column(name = "birth_rate", length = 10)
	public String getBirthRate() {
		return birthRate;
	}

	public void setBirthRate(String birthRate) {
		this.birthRate = birthRate;
	}

	@Column(name = "daughter_birth_rate", length = 10)
	public String getDaughterBirthRate() {
		return daughterBirthRate;
	}

	public void setDaughterBirthRate(String daughterBirthRate) {
		this.daughterBirthRate = daughterBirthRate;
	}

	@Column(name = "first_death", length = 10)
	public String getFirstDeath() {
		return firstDeath;
	}

	public void setFirstDeath(String firstDeath) {
		this.firstDeath = firstDeath;
	}

	@Column(name = "daughter_pregnancy_rate", length = 10)
	public String getDaughterPregnancyRate() {
		return daughterPregnancyRate;
	}

	public void setDaughterPregnancyRate(String daughterPregnancyRate) {
		this.daughterPregnancyRate = daughterPregnancyRate;
	}

	@Column(name = "somatic", length = 10)
	public String getSomatic() {
		return somatic;
	}

	public void setSomatic(String somatic) {
		this.somatic = somatic;
	}

	@Column(name = "adg", length = 10)
	public String getAdg() {
		return adg;
	}

	public void setAdg(String adg) {
		this.adg = adg;
	}

	@Column(name = "date_report", length = 10)
	public String getDateReport() {
		return dateReport;
	}

	public void setDateReport(String dateReport) {
		this.dateReport = dateReport;
	}

	@Column(name = "daughter_first_death", length = 10)
	public String getDaughterFirstDeath() {
		return daughterFirstDeath;
	}

	public void setDaughterFirstDeath(String daughterFirstDeath) {
		this.daughterFirstDeath = daughterFirstDeath;
	}

	@Column(name = "calving_ease_dir_ebv", length = 10)
	public String getCalvingEaseDirEbv() {
		return calvingEaseDirEbv;
	}

	public void setCalvingEaseDirEbv(String calvingEaseDirEbv) {
		this.calvingEaseDirEbv = calvingEaseDirEbv;
	}
	
	@Column(name = "calving_ease_dir_acc", length = 10)
	public String getCalvingEaseDirAcc() {
		return calvingEaseDirAcc;
	}

	public void setCalvingEaseDirAcc(String calvingEaseDirAcc) {
		this.calvingEaseDirAcc = calvingEaseDirAcc;
	}

	@Column(name = "calving_ease_dtrs_ebv", length = 10)
	public String getCalvingEaseDtrsEbv() {
		return calvingEaseDtrsEbv;
	}

	public void setCalvingEaseDtrsEbv(String calvingEaseDtrsEbv) {
		this.calvingEaseDtrsEbv = calvingEaseDtrsEbv;
	}

	@Column(name = "calving_ease_dtrs_acc", length = 10)
	public String getCalvingEaseDtrsAcc() {
		return calvingEaseDtrsAcc;
	}

	public void setCalvingEaseDtrsAcc(String calvingEaseDtrsAcc) {
		this.calvingEaseDtrsAcc = calvingEaseDtrsAcc;
	}

	@Column(name = "birthwt_ebv", length = 10)
	public String getBirthwtEbv() {
		return birthwtEbv;
	}

	public void setBirthwtEbv(String birthwtEbv) {
		this.birthwtEbv = birthwtEbv;
	}

	@Column(name = "birthwt_acc", length = 10)
	public String getBirthwtAcc() {
		return birthwtAcc;
	}

	public void setBirthwtAcc(String birthwtAcc) {
		this.birthwtAcc = birthwtAcc;
	}

	@Column(name = "gestation_length_ebv", length = 10)
	public String getGestationLengthEbv() {
		return gestationLengthEbv;
	}

	public void setGestationLengthEbv(String gestationLengthEbv) {
		this.gestationLengthEbv = gestationLengthEbv;
	}

	@Column(name = "gestation_length_acc", length = 10)
	public String getGestationLengthAcc() {
		return gestationLengthAcc;
	}

	public void setGestationLengthAcc(String gestationLengthAcc) {
		this.gestationLengthAcc = gestationLengthAcc;
	}

	@Column(name = "wt200day_ebv", length = 10)
	public String getWt200dayEbv() {
		return wt200dayEbv;
	}

	public void setWt200dayEbv(String wt200dayEbv) {
		this.wt200dayEbv = wt200dayEbv;
	}

	@Column(name = "wt200day_acc", length = 10)
	public String getWt200dayAcc() {
		return wt200dayAcc;
	}

	public void setWt200dayAcc(String wt200dayAcc) {
		this.wt200dayAcc = wt200dayAcc;
	}

	@Column(name = "wt400day_ebv", length = 10)
	public String getWt400dayEbv() {
		return wt400dayEbv;
	}

	public void setWt400dayEbv(String wt400dayEbv) {
		this.wt400dayEbv = wt400dayEbv;
	}

	@Column(name = "wt400day_acc", length = 10)
	public String getWt400dayAcc() {
		return wt400dayAcc;
	}

	public void setWt400dayAcc(String wt400dayAcc) {
		this.wt400dayAcc = wt400dayAcc;
	}

	@Column(name = "wt600day_ebv", length = 10)
	public String getWt600dayEbv() {
		return wt600dayEbv;
	}

	public void setWt600dayEbv(String wt600dayEbv) {
		this.wt600dayEbv = wt600dayEbv;
	}

	@Column(name = "wt600day_acc", length = 10)
	public String getWt600dayAcc() {
		return wt600dayAcc;
	}

	public void setWt600dayAcc(String wt600dayAcc) {
		this.wt600dayAcc = wt600dayAcc;
	}

	@Column(name = "mat_cow_ebv", length = 10)
	public String getMatCowEbv() {
		return matCowEbv;
	}

	public void setMatCowEbv(String matCowEbv) {
		this.matCowEbv = matCowEbv;
	}

	@Column(name = "mat_cow_acc", length = 10)
	public String getMatCowAcc() {
		return matCowAcc;
	}

	public void setMatCowAcc(String matCowAcc) {
		this.matCowAcc = matCowAcc;
	}

	@Column(name = "milk200day_ebv", length = 10)
	public String getMilk200dayEbv() {
		return milk200dayEbv;
	}

	public void setMilk200dayEbv(String milk200dayEbv) {
		this.milk200dayEbv = milk200dayEbv;
	}

	@Column(name = "milk200day_acc", length = 10)
	public String getMilk200dayAcc() {
		return milk200dayAcc;
	}

	public void setMilk200dayAcc(String milk200dayAcc) {
		this.milk200dayAcc = milk200dayAcc;
	}

	@Column(name = "scrotal_size_ebv", length = 10)
	public String getScrotalSizeEbv() {
		return scrotalSizeEbv;
	}

	public void setScrotalSizeEbv(String scrotalSizeEbv) {
		this.scrotalSizeEbv = scrotalSizeEbv;
	}

	@Column(name = "scrotal_size_acc", length = 10)
	public String getScrotalSizeAcc() {
		return scrotalSizeAcc;
	}

	public void setScrotalSizeAcc(String scrotalSizeAcc) {
		this.scrotalSizeAcc = scrotalSizeAcc;
	}

	@Column(name = "carcase_wt_ebv", length = 10)
	public String getCarcaseWtEbv() {
		return carcaseWtEbv;
	}

	public void setCarcaseWtEbv(String carcaseWtEbv) {
		this.carcaseWtEbv = carcaseWtEbv;
	}

	@Column(name = "carcase_wt_acc", length = 10)
	public String getCarcaseWtAcc() {
		return carcaseWtAcc;
	}

	public void setCarcaseWtAcc(String carcaseWtAcc) {
		this.carcaseWtAcc = carcaseWtAcc;
	}

	@Column(name = "eye_muscle_area_ebv", length = 10)
	public String getEyeMuscleAreaEbv() {
		return eyeMuscleAreaEbv;
	}

	public void setEyeMuscleAreaEbv(String eyeMuscleAreaEbv) {
		this.eyeMuscleAreaEbv = eyeMuscleAreaEbv;
	}

	@Column(name = "eye_muscle_area_acc", length = 10)
	public String getEyeMuscleAreaAcc() {
		return eyeMuscleAreaAcc;
	}

	public void setEyeMuscleAreaAcc(String eyeMuscleAreaAcc) {
		this.eyeMuscleAreaAcc = eyeMuscleAreaAcc;
	}

	@Column(name = "rib_fat_ebv", length = 10)
	public String getRibFatEbv() {
		return ribFatEbv;
	}

	public void setRibFatEbv(String ribFatEbv) {
		this.ribFatEbv = ribFatEbv;
	}

	@Column(name = "rib_fat_acc", length = 10)
	public String getRibFatAcc() {
		return ribFatAcc;
	}

	public void setRibFatAcc(String ribFatAcc) {
		this.ribFatAcc = ribFatAcc;
	}

	@Column(name = "retail_beef_yield_ebv", length = 10)
	public String getRetailBeefYieldEbv() {
		return retailBeefYieldEbv;
	}

	public void setRetailBeefYieldEbv(String retailBeefYieldEbv) {
		this.retailBeefYieldEbv = retailBeefYieldEbv;
	}

	@Column(name = "retail_beef_yield_acc", length = 10)
	public String getRetailBeefYieldAcc() {
		return retailBeefYieldAcc;
	}

	public void setRetailBeefYieldAcc(String retailBeefYieldAcc) {
		this.retailBeefYieldAcc = retailBeefYieldAcc;
	}

	@Column(name = "imf_ebv", length = 10)
	public String getImfEbv() {
		return imfEbv;
	}

	public void setImfEbv(String imfEbv) {
		this.imfEbv = imfEbv;
	}

	@Column(name = "imf_acc", length = 10)
	public String getImfAcc() {
		return imfAcc;
	}

	public void setImfAcc(String imfAcc) {
		this.imfAcc = imfAcc;
	}

	@Column(name = "picture", length = 100)
	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	@Column(name = "number_ear", length = 20)
	public String getNumberEar() {
		return numberEar;
	}

	public void setNumberEar(String numberEar) {
		this.numberEar = numberEar;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattlePedigree")
	public Set<Cattle> getCattles() {
		return cattles;
	}

	public void setCattles(Set<Cattle> cattles) {
		this.cattles = cattles;
	}
	
	
	@Column(name = "rump_ebv", length = 10)
	public String getRumpEbv() {
		return rumpEbv;
	}

	public void setRumpEbv(String rumpEbv) {
		this.rumpEbv = rumpEbv;
	}
	
	@Column(name = "bw_ebv", length = 10)
	public String getBwEbv() {
		return bwEbv;
	}

	public void setBwEbv(String bwEbv) {
		this.bwEbv = bwEbv;
	}
	
	
	
}
