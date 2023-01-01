package is_a_mapping.tableperclass;

import javax.persistence.Entity;

@Entity
public class Book_03 extends Product_03 {
	
	private String author;
	
	public Book_03() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Book_03(int pid, String pName,String author, int price) {
		super(pid,pName,price);
		this.author = author;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

}
