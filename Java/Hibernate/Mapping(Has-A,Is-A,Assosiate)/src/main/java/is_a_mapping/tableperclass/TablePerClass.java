//package is_a_mapping.tableperclass;
//
//import javax.persistence.EntityManager;
//
//import util.EMUtil;
//
//public class TablePerClass {
//
//	public static void main(String[] args) {
//
//		EntityManager em = EMUtil.providEntityManager();
//
//		Pen_03 pen1 = new Pen_03(11,"Renold's Gel", 12, "Red");
//		Pen_03 pen2 = new Pen_03(12,"Cello Ball", 15, "Blue");
//
//		Book_03 book1 = new Book_03(13,"Harry Potter", "J.K. Rollinks", 899);
//		Book_03 book2 = new Book_03(14,"Rich Monk", "Robin", 430);
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
//
//		mysql> select * from pen_03;
//		
//		+-----+--------------+-------+-------+
//		| pid | pName        | price | color |
//		+-----+--------------+-------+-------+
//		|  11 | Renold's Gel |    12 | Red   |
//		|  12 | Cello Ball   |    15 | Blue  |
//		+-----+--------------+-------+-------+
//		2 rows in set (0.00 sec)
//		
//		
//		
//		mysql> select * from book_03;
//		
//		+-----+--------------+-------+---------------+
//		| pid | pName        | price | author        |
//		+-----+--------------+-------+---------------+
//		|  13 | Harry Potter |   899 | J.K. Rollinks |
//		|  14 | Rich Monk    |   430 | Robin         |
//		+-----+--------------+-------+---------------+
//		2 rows in set (0.00 sec)
//
//	}
//
//}
