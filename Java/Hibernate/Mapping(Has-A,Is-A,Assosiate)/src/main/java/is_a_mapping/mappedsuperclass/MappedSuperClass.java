//package is_a_mapping.mappedsuperclass;
//
//import javax.persistence.EntityManager;
//
//import util.EMUtil;
//
//public class MappedSuperClass {
//	
//	/**
//	 * @param args
//	 */
//	/**
//	 * @param args
//	 */
//	public static void main(String[] args) {
//		
//		EntityManager em = EMUtil.providEntityManager();
//
//		Pen_04 pen1 = new Pen_04("Renold's Gel", 12, "Red");
//		Pen_04 pen2 = new Pen_04("Cello Ball", 15, "Blue");
//
//		Book_04 book1 = new Book_04("Harry Potter", "J.K. Rollinks", 899);
//		Book_04 book2 = new Book_04("Rich Monk", "Robin", 430);
//		
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
//		System.out.println("Check Database");
//		
//		
//		
//		
//		mysql> select * from pen_04;
//		
//		+-----+--------------+-------+-------+
//		| pid | pName        | price | color |
//		+-----+--------------+-------+-------+
//		|   1 | Renold's Gel |    12 | Red   |
//		|   2 | Cello Ball   |    15 | Blue  |
//		+-----+--------------+-------+-------+
//		2 rows in set (0.00 sec)
//
//		
//		
//		mysql> select * from book_04;
//		
//		+-----+--------------+-------+---------------+
//		| pid | pName        | price | author        |
//		+-----+--------------+-------+---------------+
//		|   1 | Harry Potter |   899 | J.K. Rollinks |
//		|   2 | Rich Monk    |   430 | Robin         |
//		+-----+--------------+-------+---------------+
//		2 rows in set (0.00 sec)
//		
//		
//	}
//
//}
