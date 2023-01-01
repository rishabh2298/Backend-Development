package is_a_mapping.mappedsuperclass;


import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public class Product_04 {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;      	
	private String pName;
	private int price;
	
	public Product_04() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product_04(String pName, int price) {
		super();
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
