package cn.sz.gl.pojo;



public class Dept implements java.io.Serializable {

	private Integer deptno;
	private String dname;
	private String status;
	private Integer parentid;

	public Dept() {
	}

	public Dept(Integer deptno) {
		this.deptno = deptno;
	}

	public Dept(Integer deptno, String dname, String status, Integer parentid) {
		this.deptno = deptno;
		this.dname = dname;
		this.status = status;
		this.parentid = parentid;
	}

	public Integer getDeptno() {
		return this.deptno;
	}

	public void setDeptno(Integer deptno) {
		this.deptno = deptno;
	}

	public String getDname() {
		return this.dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getParentid() {
		return this.parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

}
