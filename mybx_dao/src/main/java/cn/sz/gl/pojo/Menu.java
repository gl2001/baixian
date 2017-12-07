package cn.sz.gl.pojo;


public class Menu implements java.io.Serializable {

	private Integer menuid;
	private String menuName;
	private String menuUrl;
	private String menuImage;
	private Integer parentid;
	private String status;

	public Menu() {
	}

	public Menu(Integer menuid) {
		this.menuid = menuid;
	}

	public Menu(Integer menuid, String menuName, String menuImage,
			Integer parentid, String status) {
		this.menuid = menuid;
		this.menuName = menuName;
		this.menuImage = menuImage;
		this.parentid = parentid;
		this.status = status;
	}

	public Integer getMenuid() {
		return this.menuid;
	}

	public void setMenuid(Integer menuid) {
		this.menuid = menuid;
	}

	public String getMenuName() {
		return this.menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuImage() {
		return this.menuImage;
	}

	public void setMenuImage(String menuImage) {
		this.menuImage = menuImage;
	}

	public Integer getParentid() {
		return this.parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMenuUrl() {
		return menuUrl;
	}

	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

}
