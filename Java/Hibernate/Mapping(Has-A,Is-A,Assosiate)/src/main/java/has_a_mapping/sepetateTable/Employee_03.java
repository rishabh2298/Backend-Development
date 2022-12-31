package has_a_mapping.sepetateTable;

import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;

@Entity
public class Employee_03 {
	
	@Id
	@Column(name = "EMPID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int empId;
	
	private String empName;
	
	private int empage;
	
	@Embedded
	@ElementCollection(fetch = FetchType.EAGER)
	@JoinTable(name = "Employee_Address", joinColumns = @JoinColumn(name = "EMPID"))
	private Set<Address> addresses = new HashSet<>();
	
	
	

	public Employee_03() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Employee_03(String empName, int empage, Set<Address> addresses) {
		super();
		this.empName = empName;
		this.empage = empage;
		this.addresses = addresses;
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

	public Set<Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(Set<Address> addresses) {
		this.addresses = addresses;
	}

	// Since we are using set (userdefinded object)
	@Override
	public int hashCode() {
		return Objects.hash(addresses, empId, empName, empage);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Employee_03 other = (Employee_03) obj;
		return Objects.equals(addresses, other.addresses) && empId == other.empId
				&& Objects.equals(empName, other.empName) && empage == other.empage;
	}

	@Override
	public String toString() {
		return "Employee_03 [empId=" + empId + ", empName=" + empName + ", empage=" + empage + ", addresses="
				+ addresses + "]";
	}

}
