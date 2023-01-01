package is_a_mapping.singletable;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue(value = "PEN")
public class Pen_01 extends Product_01 {
	
	private String color;
	
	public Pen_01() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Pen_01(int pid, String pName, int price ,String color) {
		super(pid, pName, price);
		this.color = color;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	@Override
	public String toString() {
		return "Pen [color=" + color + "]";
	}

}
