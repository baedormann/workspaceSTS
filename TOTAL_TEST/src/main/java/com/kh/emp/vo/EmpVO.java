package com.kh.emp.vo;

public class EmpVO {
	private String empNum;
	private String empName;
	private String empRank;
	private int empAge;
	private String empGender;
	private String[] empTells;
	private String empTell;
	private String deptNum;
	private String deptName;
	private String deptLocation;
	
	public String getEmpNum() {
		return empNum;
	}
	public void setEmpNum(String empNum) {
		this.empNum = empNum;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpRank() {
		return empRank;
	}
	public void setEmpRank(String empRank) {
		this.empRank = empRank;
	}
	public int getEmpAge() {
		return empAge;
	}
	public void setEmpAge(int empAge) {
		this.empAge = empAge;
	}
	public String getEmpGender() {
		return empGender;
	}
	public void setEmpGender(String empGender) {
		this.empGender = empGender;
	}
	public String getEmpTell() {
		return empTell;
	}
	public void setEmpTell(String empTell) {
		this.empTell = empTell;
	}
	public void setEmpTell(String[] empTells) {
		this.empTell = empTells[0] + " - " + empTells[1] + " - " + empTells[2];
	}
	public String getDeptNum() {
		return deptNum;
	}
	public void setDeptNum(String deptNum) {
		this.deptNum = deptNum;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getDeptLocation() {
		return deptLocation;
	}
	public void setDeptLocation(String deptLocation) {
		this.deptLocation = deptLocation;
	}
	public String[] getEmpTells() {
		return empTells;
	}
	public void setEmpTells(String[] empTells) {
		this.empTells = empTells;
	}
	
	
}
