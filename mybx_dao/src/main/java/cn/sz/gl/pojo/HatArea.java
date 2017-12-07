package cn.sz.gl.pojo;


import java.util.HashSet;
import java.util.Set;

public class HatArea implements java.io.Serializable {

	private Integer id;
	private String areaId;
	private String area;
	private String father;

	public HatArea() {
	}

	public HatArea(String areaId, String area, String father) {
		this.areaId = areaId;
		this.area = area;
		this.father = father;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAreaId() {
		return this.areaId;
	}

	public void setAreaId(String areaId) {
		this.areaId = areaId;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getFather() {
		return this.father;
	}

	public void setFather(String father) {
		this.father = father;
	}

}
