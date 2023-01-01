package is_a_mapping.singletable;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue(value = "BOOK")
public class Book_01 extends Product_01 {
	
	private String author;
	
	public Book_01() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Book_01(int pid, String pName,String author, int price) {
		super(pid,pName,price);
		this.author = author;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	@Override
	public String toString() {
		return "Book [author=" + author + "]";
	}

}
