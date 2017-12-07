package cn.sz.gl.pojo;

import java.io.Serializable;

public class TurnImage implements Serializable {

	private Integer turnid;
	private String title;
	private String turnUrl;
	private String status;
	public Integer getTurnid() {
		return turnid;
	}
	public void setTurnid(Integer turnid) {
		this.turnid = turnid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTurnUrl() {
		return turnUrl;
	}
	public void setTurnUrl(String turnUrl) {
		this.turnUrl = turnUrl;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
