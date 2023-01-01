//package is_a_mapping.singletable;
//
//import javax.persistence.EntityManager;
//
//import util.EMUtil;
//
//public class SingleTable {
//
//	public static void main(String[] args) {
//		
//		EntityManager em = EMUtil.providEntityManager();
//		
//		
//		Pen_01 pen1 = new Pen_01(11, "Renold's Gel", 10, "Blue");
//		
//		Book_01 book1 = new Book_01(13, "Harry Potter", "J.K. Rollings", 1200);
//		
//		
//		
//		Pen_01 pen2 = new Pen_01(12, "Cello Ball", 5, "Black");
//		
//		Book_01 book2 = new Book_01(14, "Rich Dad Poor Dad", "Robert Kiyosaki", 459);
//		
//		
//		em.getTransaction().begin();
//		
//		em.persist(pen1);
//		em.persist(book1);
//		
//		em.persist(pen2);
//		em.persist(book2);
//		
//		em.getTransaction().commit();
//		
//		
//		System.out.println("Check Database");
//
//
//		
//		
//
//		mysql> select * from product;
//		+--------------+-----+-------------------+-------+-----------------+-------+
//		| Product_Type | pid | pName             | price | author          | color |
//		+--------------+-----+-------------------+-------+-----------------+-------+
//		| PEN          |  11 | Renold's Gel      |    10 | NULL            | Blue  |
//		| PEN          |  12 | Cello Ball        |     5 | NULL            | Black |
//		| BOOK         |  13 | Harry Potter      |  1200 | J.K. Rollings   | NULL  |
//		| BOOK         |  14 | Rich Dad Poor Dad |   459 | Robert Kiyosaki | NULL  |
//		+--------------+-----+-------------------+-------+-----------------+-------+
//		4 rows in set (0.00 sec)
//		
//	
//	}
//	
//}
