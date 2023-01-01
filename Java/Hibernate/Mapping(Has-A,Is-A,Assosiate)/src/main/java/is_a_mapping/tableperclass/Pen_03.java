package is_a_mapping.tableperclass;

import javax.persistence.Entity;

@Entity
public class Pen_03 extends Product_03 {
	
	private String color;
	
	public Pen_03() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pen_03(int pid ,String pName, int price ,String color) {
		super(pid,pName,price);
		this.color = color;
	}


	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

}
