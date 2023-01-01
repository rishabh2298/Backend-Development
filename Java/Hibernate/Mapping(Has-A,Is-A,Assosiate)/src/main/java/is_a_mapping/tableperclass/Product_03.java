package is_a_mapping.tableperclass;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class Product_03 {
	
	@Id
	private int pid;      	//Can't generate auto in this type
	private String pName;
	private int price;
	
	public Product_03() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product_03(int pid,String pName, int price) {
		super();
		this.pid = pid;
		this.pName = pName;
		this.price = price;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
}
