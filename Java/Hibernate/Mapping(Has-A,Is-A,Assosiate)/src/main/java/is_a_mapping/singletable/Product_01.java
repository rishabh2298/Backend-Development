package is_a_mapping.singletable;

import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "Product_Type", discriminatorType = DiscriminatorType.STRING)
public class Product_01 {
	
	@Id
	private int pid;
	private String pName;
	private int price;
	
	public Product_01() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product_01(int pid, String pName, int price) {
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

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pName=" + pName + ", price=" + price + "]";
	}

}
