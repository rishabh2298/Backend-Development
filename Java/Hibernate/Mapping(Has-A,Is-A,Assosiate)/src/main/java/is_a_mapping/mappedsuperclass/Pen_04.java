package is_a_mapping.mappedsuperclass;

import javax.persistence.Entity;

@Entity
public class Pen_04 extends Product_04 {
	
	private String color;
	
	public Pen_04() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pen_04(String pName, int price ,String color) {
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
