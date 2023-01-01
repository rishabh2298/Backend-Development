package is_a_mapping.jointable;

import javax.persistence.Entity;

@Entity
public class Book_02 extends Product_02 {
	
	private String author;
	
	public Book_02() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Book_02(String pName,String author, int price) {
		super(pName,price);
		this.author = author;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

}
