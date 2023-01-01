package is_a_mapping.mappedsuperclass;

import javax.persistence.Entity;

@Entity
public class Book_04 extends Product_04 {
	
	private String author;
	
	public Book_04() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Book_04(String pName,String author, int price) {
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
