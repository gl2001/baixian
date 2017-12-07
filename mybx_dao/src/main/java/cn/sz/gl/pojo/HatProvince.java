package cn.sz.gl.pojo;


public class HatProvince implements java.io.Serializable {

	private Integer id;
	private String provinceId;
	private String province;

	public HatProvince() {
	}

	public HatProvince(String provinceId, String province) {
		this.provinceId = provinceId;
		this.province = province;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProvinceId() {
		return this.provinceId;
	}

	public void setProvinceId(String provinceId) {
		this.provinceId = provinceId;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

}
