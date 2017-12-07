package cn.sz.gl.pojo;

public class CompanyVip implements java.io.Serializable {

	private Integer comid;
	private VipUser vipUser;
	private String companyName;
	private String address;
	private String licensePic;
	private String organizationPic;
	private String taxPic;
	private String officePic;
	private String footPic;
	private String otherPic01;
	private String otherPic02;
	private String otherPic03;
	private String otherPic04;
	private String otherPic05;
	private String bossName;
	private String operatorName;
	private String operatorJob;
	private String operatorPhone;
	private String companyStatus;
	private String style;

	public CompanyVip() {
	}

	public CompanyVip(Integer comid) {
		this.comid = comid;
	}

	public CompanyVip(Integer comid, VipUser vipUser, String companyName,
			String address, String licensePic, String organizationPic,
			String taxPic, String officePic, String footPic, String otherPic01,
			String otherPic02, String otherPic03, String otherPic04,
			String otherPic05, String bossName, String operatorName,
			String operatorJob, String operatorPhone, String companyStatus,
			String style) {
		this.comid = comid;
		this.vipUser = vipUser;
		this.companyName = companyName;
		this.address = address;
		this.licensePic = licensePic;
		this.organizationPic = organizationPic;
		this.taxPic = taxPic;
		this.officePic = officePic;
		this.footPic = footPic;
		this.otherPic01 = otherPic01;
		this.otherPic02 = otherPic02;
		this.otherPic03 = otherPic03;
		this.otherPic04 = otherPic04;
		this.otherPic05 = otherPic05;
		this.bossName = bossName;
		this.operatorName = operatorName;
		this.operatorJob = operatorJob;
		this.operatorPhone = operatorPhone;
		this.companyStatus = companyStatus;
		this.style = style;
	}

	public Integer getComid() {
		return this.comid;
	}

	public void setComid(Integer comid) {
		this.comid = comid;
	}

	public VipUser getVipUser() {
		return this.vipUser;
	}

	public void setVipUser(VipUser vipUser) {
		this.vipUser = vipUser;
	}

	public String getCompanyName() {
		return this.companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLicensePic() {
		return this.licensePic;
	}

	public void setLicensePic(String licensePic) {
		this.licensePic = licensePic;
	}

	public String getOrganizationPic() {
		return this.organizationPic;
	}

	public void setOrganizationPic(String organizationPic) {
		this.organizationPic = organizationPic;
	}

	public String getTaxPic() {
		return this.taxPic;
	}

	public void setTaxPic(String taxPic) {
		this.taxPic = taxPic;
	}

	public String getOfficePic() {
		return this.officePic;
	}

	public void setOfficePic(String officePic) {
		this.officePic = officePic;
	}

	public String getFootPic() {
		return this.footPic;
	}

	public void setFootPic(String footPic) {
		this.footPic = footPic;
	}

	public String getOtherPic01() {
		return this.otherPic01;
	}

	public void setOtherPic01(String otherPic01) {
		this.otherPic01 = otherPic01;
	}

	public String getOtherPic02() {
		return this.otherPic02;
	}

	public void setOtherPic02(String otherPic02) {
		this.otherPic02 = otherPic02;
	}

	public String getOtherPic03() {
		return this.otherPic03;
	}

	public void setOtherPic03(String otherPic03) {
		this.otherPic03 = otherPic03;
	}

	public String getOtherPic04() {
		return this.otherPic04;
	}

	public void setOtherPic04(String otherPic04) {
		this.otherPic04 = otherPic04;
	}

	public String getOtherPic05() {
		return this.otherPic05;
	}

	public void setOtherPic05(String otherPic05) {
		this.otherPic05 = otherPic05;
	}

	public String getBossName() {
		return this.bossName;
	}

	public void setBossName(String bossName) {
		this.bossName = bossName;
	}

	public String getOperatorName() {
		return this.operatorName;
	}

	public void setOperatorName(String operatorName) {
		this.operatorName = operatorName;
	}

	public String getOperatorJob() {
		return this.operatorJob;
	}

	public void setOperatorJob(String operatorJob) {
		this.operatorJob = operatorJob;
	}

	public String getOperatorPhone() {
		return this.operatorPhone;
	}

	public void setOperatorPhone(String operatorPhone) {
		this.operatorPhone = operatorPhone;
	}

	public String getCompanyStatus() {
		return this.companyStatus;
	}

	public void setCompanyStatus(String companyStatus) {
		this.companyStatus = companyStatus;
	}

	public String getStyle() {
		return this.style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

}
