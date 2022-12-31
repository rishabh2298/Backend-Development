package has_a_mapping.twodata;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Employee_02")
public class Employee_02 {
	
	@Id
	@Column(name = "EMPID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int empId;
	
	private String empName;
	
	private int empage;
	
	@Embedded
	@AttributeOverrides({
		@AttributeOverride(name = "city", column = @Column(name = "Home_City")),
		@AttributeOverride(name = "state", column = @Column(name = "Home_State")),
		@AttributeOverride(name = "pincode", column = @Column(name = "Home_Pincode"))
	})
	private Address homeAddress;
	
	@Embedded
	@AttributeOverrides({
		@AttributeOverride(name = "city", column = @Column(name = "Office_City")),
		@AttributeOverride(name = "state", column = @Column(name = "Office_State")),
		@AttributeOverride(name = "pincode", column = @Column(name = "Office_Pincode"))
	})
	private Address officeAddress;
	
	

	public Employee_02() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Employee_02(int empId, String empName, int empage, Address homeAddress, Address officeAddress) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.empage = empage;
		this.homeAddress = homeAddress;
		this.officeAddress = officeAddress;
	}



	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public int getEmpage() {
		return empage;
	}

	public void setEmpage(int empage) {
		this.empage = empage;
	}

	public Address getHomeAddress() {
		return homeAddress;
	}

	public void setHomeAddress(Address homeAddress) {
		this.homeAddress = homeAddress;
	}

	public Address getOfficeAddress() {
		return officeAddress;
	}

	public void setOfficeAddress(Address officeAddress) {
		this.officeAddress = officeAddress;
	}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", empName=" + empName + ", empage=" + empage + ", homeAddress="
				+ homeAddress + ", officeAddress=" + officeAddress + "]";
	}

}
