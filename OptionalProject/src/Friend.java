
public class Friend {
	String name;
	Company company;
	
	public Friend(String name, Company company) {
		this.name = name;
		this.company = company;
	}
	
	public String getName() {return name;}
	public Company getCompany() {return company;}
}

class Company{
	String cName;
	DeptInfo deptInfo;
	
	public Company(String cName, DeptInfo deptInfo) {
		this.cName = cName;
		this.deptInfo = deptInfo;
	}
	
	public String getCName() {return cName;}
	public DeptInfo getDeptInfo() {return deptInfo;}
}

class DeptInfo{
	String phone;
	String addr;
	
	public DeptInfo(String phone, String addr) {
		this.phone = phone;
		this.addr = addr;
	}
	
	public String getPhone() {return phone;}
	public String getAddr() {return addr;}
}