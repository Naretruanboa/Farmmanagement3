package farm3.spring.model;
// Generated Sep 25, 2016 9:18:21 PM by Hibernate Tools 4.3.1.Final

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

import com.google.gson.annotations.Expose;

/**
 * Cattle generated by hbm2java
 */
@Entity
@Table(name = "cattle")
public class Cattle implements java.io.Serializable {

	private Integer id;
	private Breed breed;
	private StatusCow statusCow;
	private Farm farmtId;
	private TypeDairy typeDairy;
	private Color color;
	private GroupCattle groupCattle;
	private Sex sex;
	private Stall stall;
	private StatusBorn statusBorn;
	private StatusCattle statusCattle;
	private StatusTreat statusTreat;
	private TypeCattle typeCattle;
	private TypeNutrient typeNutrient; 
	private CattlePedigree cattlePedigree;
	//private ClassCattle classCattle;
	private String price;
	private String priceStart;
	private String priceEnd;
	private String registerNum;
	private String owner;
	private String breeder;

	
	@Expose private String num;
	@Expose private String numEar;
	@Expose private String numDate;
	@Expose private String name;
	private Integer teeth;
	private Integer age;
	private Integer ageWean;
	@Expose private String ageHornDetering;
	@Expose private String weight;
	@Expose private String weightBirth;
	@Expose private String weightWean;
	private String calved;
	private String maId;
	private String faId;
	private String farm;
	private String image;
	@Expose private String alert1;
	@Expose private String alert2;
	@Expose private String alert3;
	@Expose private String alert4;
	private Integer pedigreeId;

	private Set<Synchronize> synchronizes = new HashSet<Synchronize>(0);
	private Set<CattleWean> cattleWeans = new HashSet<CattleWean>(0);
	private Set<HornDetering> hornDeterings = new HashSet<HornDetering>(0);
	private Set<Misscarry> misscarries = new HashSet<Misscarry>(0);
	private Set<Breeding> breedingsForCattlemaId = new HashSet<Breeding>(0);
	private Set<CountBreed> countBreeds = new HashSet<CountBreed>(0);
	private Set<CattleStamp> cattleStamps = new HashSet<CattleStamp>(0);
	private Set<TreatmentHistory> treatmentHistories = new HashSet<TreatmentHistory>(0);
	private Set<Alert> alerts = new HashSet<Alert>(0);
	private Set<Breeding> breedingsForCattlefaId = new HashSet<Breeding>(0);
	private Set<CattleYear> cattleYears = new HashSet<CattleYear>(0);
	private Set<CattleDetail> cattleDetails = new HashSet<CattleDetail>(0);
//	private Set<Pregnant> pregnentForCattlemaId = new HashSet<Pregnant>(0);


	
	public Cattle() {
	}

	public Cattle (TypeDairy typeDairy, Breed breed, StatusCow statusCow, Farm farmtId, Color color, GroupCattle groupCattle, Sex sex, Stall stall, StatusBorn statusBorn,
			StatusCattle statusCattle, StatusTreat statusTreat, TypeCattle typeCattle, TypeNutrient typeNutrient,
			String num, String numEar, String numDate, String name, Integer teeth, Integer age, Integer ageWean,
			String ageHornDetering, String weight, String weightBirth, String weightWean, String calved, String maId,
			String faId, String farm, String image, String alert1, String alert2, String alert3, String alert4, Integer pedigreeId , Integer typeClassId, 
			Set<Synchronize> synchronizes, Set<CattleWean> cattleWeans, Set<HornDetering> hornDeterings,
			Set<Misscarry> misscarries, Set<Breeding> breedingsForCattlemaId, Set<CountBreed> countBreeds,
			Set<CattleStamp> cattleStamps, Set<TreatmentHistory> treatmentHistories, Set<Alert> alerts,
			Set<Breeding> breedingsForCattlefaId, Set<CattleYear> cattleYears, Set<CattleDetail> cattleDetails, CattlePedigree cattlePedigree, String price, String priceStart, 
			String priceEnd, String registerNum, String owner, String breeder) {
		this.breed = breed;
		this.statusCow = statusCow;
		this.farmtId = farmtId;
		this.color = color;
		this.groupCattle = groupCattle;
		this.sex = sex;
		this.stall = stall;
		this.statusBorn = statusBorn;
		this.statusCattle = statusCattle;
		this.statusTreat = statusTreat;
		this.typeCattle = typeCattle;
		this.typeNutrient = typeNutrient;
		this.num = num;
		this.numEar = numEar;
		this.numDate = numDate;
		this.name = name;
		this.teeth = teeth;
		this.age = age;
		this.ageWean = ageWean;
		this.ageHornDetering = ageHornDetering;
		this.weight = weight;
		this.weightBirth = weightBirth;
		this.weightWean = weightWean;
		this.calved = calved;
		this.maId = maId;
		this.faId = faId;
		this.farm = farm;
		this.image = image;
		this.alert1 = alert1;
		this.alert2 = alert2;
		this.alert3 = alert3;
		this.alert4 = alert4;
		this.synchronizes = synchronizes;
		this.cattleWeans = cattleWeans;
		this.hornDeterings = hornDeterings;
		this.misscarries = misscarries;
		this.breedingsForCattlemaId = breedingsForCattlemaId;
		this.countBreeds = countBreeds;
		this.cattleStamps = cattleStamps;
		this.treatmentHistories = treatmentHistories;
		this.alerts = alerts;
		this.breedingsForCattlefaId = breedingsForCattlefaId;
		this.cattleYears = cattleYears;
		this.cattleDetails = cattleDetails;
		this.cattlePedigree  = cattlePedigree;
		this.typeDairy = typeDairy;
		this.price = price;
		this.priceStart = priceStart;
		this.priceEnd = priceEnd;
		this.registerNum = registerNum;
		this.owner = owner;
		this.breeder = breeder;
		//this.classCattle = classCattle ;
	
		/*this.pregnentForCattlemaId = pregnentForCattlemaId;*/
		
		
		
		//		this.typeClassId = typeClassId;
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
	@JoinColumn(name = "breed_id")
	public Breed getBreed() {
		return this.breed;
	}

	public void setBreed(Breed breed) {
		this.breed = breed;
	}
	
	
	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "status_cow_id")
	public StatusCow getStatusCow() {
		return this.statusCow;
	}

	public void setStatusCow(StatusCow statusCow) {
		this.statusCow = statusCow;
	}
	
	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "farmt_id")
	public Farm getFarmtId() {
		return this.farmtId;
	}

	public void setFarmtId(Farm farmtId) {
		this.farmtId = farmtId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "dairy_id")
	public TypeDairy getTypeDairy() {
		return this.typeDairy;
	}

	public void setTypeDairy(TypeDairy typeDairy) {
		this.typeDairy = typeDairy;
	}


	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "color_id")
	public Color getColor() {
		return this.color;
	}

	public void setColor(Color color) {
		this.color = color;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "group_cattle_id")
	public GroupCattle getGroupCattle() {
		return this.groupCattle;
	}

	public void setGroupCattle(GroupCattle groupCattle) {
		this.groupCattle = groupCattle;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "sex_id")
	public Sex getSex() {
		return this.sex;
	}

	public void setSex(Sex sex) {
		this.sex = sex;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "stall_id")
	public Stall getStall() {
		return this.stall;
	}

	public void setStall(Stall stall) {
		this.stall = stall;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "status_born_id")
	public StatusBorn getStatusBorn() {
		return this.statusBorn;
	}

	public void setStatusBorn(StatusBorn statusBorn) {
		this.statusBorn = statusBorn;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "status_cattle_id")
	public StatusCattle getStatusCattle() {
		return this.statusCattle;
	}

	public void setStatusCattle(StatusCattle statusCattle) {
		this.statusCattle = statusCattle;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "status_treat_id")
	public StatusTreat getStatusTreat() {
		return this.statusTreat;
	}

	public void setStatusTreat(StatusTreat statusTreat) {
		this.statusTreat = statusTreat;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "type_cattle_id")
	public TypeCattle getTypeCattle() {
		return this.typeCattle;
	}

	public void setTypeCattle(TypeCattle typeCattle) {
		this.typeCattle = typeCattle;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Type_nutrient_id")
	public TypeNutrient getTypeNutrient() {
		return this.typeNutrient;
	}

	public void setTypeNutrient(TypeNutrient typeNutrient) {
		this.typeNutrient = typeNutrient;
	}
	

	@Column(name = "num", length = 50)
	public String getNum() {
		return this.num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	@Column(name = "num_ear", length = 50)
	public String getNumEar() {
		return this.numEar;
	}

	public void setNumEar(String numEar) {
		this.numEar = numEar;
	}

	@Column(name = "num_date", length = 50)
	public String getNumDate() {
		return this.numDate;
	}

	public void setNumDate(String numDate) {
		this.numDate = numDate;
	}

	@Column(name = "name", length = 50)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "teeth")
	public Integer getTeeth() {
		return this.teeth;
	}

	public void setTeeth(Integer teeth) {
		this.teeth = teeth;
	}

	@Column(name = "age")
	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	@Column(name = "age_wean", length = 50)
	public Integer getAgeWean() {
		return this.ageWean;
	}

	public void setAgeWean(Integer ageWean) {
		this.ageWean = ageWean;
	}

	@Column(name = "age_horn_detering", length = 50)
	public String getAgeHornDetering() {
		return this.ageHornDetering;
	}

	public void setAgeHornDetering(String ageHornDetering) {
		this.ageHornDetering = ageHornDetering;
	}

	@Column(name = "weight", length = 50)
	public String getWeight() {
		return this.weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	@Column(name = "weight_birth", length = 50)
	public String getWeightBirth() {
		return this.weightBirth;
	}

	public void setWeightBirth(String weightBirth) {
		this.weightBirth = weightBirth;
	}

	@Column(name = "weight_wean", length = 50)
	public String getWeightWean() {
		return this.weightWean;
	}

	public void setWeightWean(String weightWean) {
		this.weightWean = weightWean;
	}

	@Column(name = "calved", length = 10)
	public String getCalved() {
		return this.calved;
	}

	public void setCalved(String calved) {
		this.calved = calved;
	}

	@Column(name = "ma_id", length = 50)
	public String getMaId() {
		return this.maId;
	}

	public void setMaId(String maId) {
		this.maId = maId;
	}

	@Column(name = "fa_id", length = 50)
	public String getFaId() {
		return this.faId;
	}

	public void setFaId(String faId) {
		this.faId = faId;
	}

	@Column(name = "farm", length = 50)
	public String getFarm() {
		return this.farm;
	}

	public void setFarm(String farm) {
		this.farm = farm;
	}

	@Column(name = "image", length = 50)
	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Column(name = "alert1", length = 10)
	public String getAlert1() {
		return this.alert1;
	}

	public void setAlert1(String alert1) {
		this.alert1 = alert1;
	}

	@Column(name = "alert2", length = 10)
	public String getAlert2() {
		return this.alert2;
	}

	public void setAlert2(String alert2) {
		this.alert2 = alert2;
	}

	@Column(name = "alert3", length = 10)
	public String getAlert3() {
		return this.alert3;
	}

	public void setAlert3(String alert3) {
		this.alert3 = alert3;
	}

	@Column(name = "alert4", length = 10)
	public String getAlert4() {
		return this.alert4;
	}

	public void setAlert4(String alert4) {
		this.alert4 = alert4;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "pedigree_id")
	public CattlePedigree getCattlePedigree() {
		return this.cattlePedigree;
	}
	public void setCattlePedigree(CattlePedigree cattlePedigree) {
		this.cattlePedigree = cattlePedigree;
	}

//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "type_class_id")
//	public ClassCattle getClassCattle() {
//		return this.classCattle;
//	}
//	public void setClassCattle(ClassCattle classCattle) {
//		this.classCattle = classCattle;
//	}
//	
	
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattle")
	public Set<Synchronize> getSynchronizes() {
		return this.synchronizes;
	}

	public void setSynchronizes(Set<Synchronize> synchronizes) {
		this.synchronizes = synchronizes;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattle")
	public Set<CattleWean> getCattleWeans() {
		return this.cattleWeans;
	}

	public void setCattleWeans(Set<CattleWean> cattleWeans) {
		this.cattleWeans = cattleWeans;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattle")
	public Set<HornDetering> getHornDeterings() {
		return this.hornDeterings;
	}

	public void setHornDeterings(Set<HornDetering> hornDeterings) {
		this.hornDeterings = hornDeterings;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattle")
	public Set<Misscarry> getMisscarries() {
		return this.misscarries;
	}

	public void setMisscarries(Set<Misscarry> misscarries) {
		this.misscarries = misscarries;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattleByCattlemaId")
	public Set<Breeding> getBreedingsForCattlemaId() {
		return this.breedingsForCattlemaId;
	}

	public void setBreedingsForCattlemaId(Set<Breeding> breedingsForCattlemaId) {
		this.breedingsForCattlemaId = breedingsForCattlemaId;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattle")
	public Set<CountBreed> getCountBreeds() {
		return this.countBreeds;
	}

	public void setCountBreeds(Set<CountBreed> countBreeds) {
		this.countBreeds = countBreeds;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattle")
	public Set<CattleStamp> getCattleStamps() {
		return this.cattleStamps;
	}

	public void setCattleStamps(Set<CattleStamp> cattleStamps) {
		this.cattleStamps = cattleStamps;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattle")
	public Set<TreatmentHistory> getTreatmentHistories() {
		return this.treatmentHistories;
	}

	public void setTreatmentHistories(Set<TreatmentHistory> treatmentHistories) {
		this.treatmentHistories = treatmentHistories;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattle")
	public Set<Alert> getAlerts() {
		return this.alerts;
	}

	public void setAlerts(Set<Alert> alerts) {
		this.alerts = alerts;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattleByCattlefaId")
	public Set<Breeding> getBreedingsForCattlefaId() {
		return this.breedingsForCattlefaId;
	}

	public void setBreedingsForCattlefaId(Set<Breeding> breedingsForCattlefaId) {
		this.breedingsForCattlefaId = breedingsForCattlefaId;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattle")
	public Set<CattleYear> getCattleYears() {
		return this.cattleYears;
	}

	public void setCattleYears(Set<CattleYear> cattleYears) {
		this.cattleYears = cattleYears;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattle")
	public Set<CattleDetail> getCattleDetails() {
		return this.cattleDetails;
	}

	public void setCattleDetails(Set<CattleDetail> cattleDetails) {
		this.cattleDetails = cattleDetails;
	}
	
	@Column(name = "price", length = 50)
	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	@Column(name = "price_start", length = 50)
	public String getPriceStart() {
		return priceStart;
	}

	public void setPriceStart(String priceStart) {
		this.priceStart = priceStart;
	}

	@Column(name = "price_end", length = 50)
	public String getPriceEnd() {
		return priceEnd;
	}

	public void setPriceEnd(String priceEnd) {
		this.priceEnd = priceEnd;
	}

	@Column(name = "register_num", length = 50)
	public String getRegisterNum() {
		return registerNum;
	}

	public void setRegisterNum(String registerNum) {
		this.registerNum = registerNum;
	}

	@Column(name = "owner", length = 50)
	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	@Column(name = "breeder", length = 50)
	public String getBreeder() {
		return breeder;
	}

	public void setBreeder(String breeder) {
		this.breeder = breeder;
	}

	
//	@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattle")
//	public Set<TypeDairy> getTypeDairy() {
//		return this.typeDairy;
//	}
//
//	public void setTypeDairy(Set<TypeDairy> typeDairy) {
//		this.typeDairy = typeDairy;
//	}
	
	
	/*@OneToMany(fetch = FetchType.LAZY, mappedBy = "cattleByCattlemaId")
	public Set<Pregnant> getPregnentForCattlemaId() {
		return pregnentForCattlemaId;
	}

	public void setPregnentForCattlemaId(Set<Pregnant> pregnentForCattlemaId) {
		this.pregnentForCattlemaId = pregnentForCattlemaId;
	}*/
	
	

}

