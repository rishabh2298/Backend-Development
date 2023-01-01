//package is_a_mapping.jointable;
//
//import javax.persistence.EntityManager;
//
//import util.EMUtil;
//
//public class JoinTable {
//	
//	public static void main(String[] args) {
//		
//		EntityManager em = EMUtil.providEntityManager();
//		
//		
//		Pen_02 pen1 = new Pen_02("Renold's Gel", 12, "Red");
//		Pen_02 pen2 = new Pen_02("Cello Ball", 15, "Blue");
//		
//		Book_02 book1 = new Book_02("Harry Potter", "J.K. Rollinks", 899);
//		Book_02 book2 = new Book_02("Rich Monk", "Robin", 430);
//		
//		
//		em.getTransaction().begin();
//		
//		em.persist(pen1);
//		em.persist(book1);
//		
//		
//		em.persist(pen2);
//		em.persist(book2);
//		
//		em.getTransaction().commit();
//		
//		em.close();
//		
//		
//		System.out.println("Check Database");
//		
//		
//		
//		
//
//		mysql> select * from product_02;
//		+-----+--------------+-------+
//		| pid | pName        | price |
//		+-----+--------------+-------+
//		|   1 | Renold's Gel |    12 |
//		|   2 | Harry Potter |   899 |
//		|   3 | Cello Ball   |    15 |
//		|   4 | Rich Monk    |   430 |
//		+-----+--------------+-------+
//		4 rows in set (0.00 sec)
//		
//		
//		mysql> select * from book_02;
//		+---------------+-----+
//		| author        | pid |
//		+---------------+-----+
//		| J.K. Rollinks |   2 |
//		| Robin         |   4 |
//		+---------------+-----+
//		2 rows in set (0.00 sec)
//		
//		
//		mysql> select * from pen_02;
//		+-------+------------+
//		| color | Product_Id |				Here I have override foreign key col by @PrimaryKeyJoinColumn
//		+-------+------------+
//		| Red   |          1 |
//		| Blue  |          3 |
//		+-------+------------+
//		2 rows in set (0.00 sec)
//
//		
//		
//	}
//
//}
