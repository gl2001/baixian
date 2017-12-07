package cn.sz.gl.pojo;


public class HatCity implements java.io.Serializable {

	private Integer id;
	private String cityId;
	private String city;
	private String father;

	public HatCity() {
	}

	public HatCity(String cityId, String city, String father) {
		this.cityId = cityId;
		this.city = city;
		this.father = father;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCityId() {
		return this.cityId;
	}

	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getFather() {
		return this.father;
	}

	public void setFather(String father) {
		this.father = father;
	}

}
