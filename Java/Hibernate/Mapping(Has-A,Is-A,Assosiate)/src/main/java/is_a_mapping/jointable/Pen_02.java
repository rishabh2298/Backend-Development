package is_a_mapping.jointable;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
@PrimaryKeyJoinColumn(name = "Product_Id")
public class Pen_02 extends Product_02 {
	
	private String color;
	
	public Pen_02() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pen_02(String pName, int price ,String color) {
		super(pName,price);
		this.color = color;
	}


	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

}
