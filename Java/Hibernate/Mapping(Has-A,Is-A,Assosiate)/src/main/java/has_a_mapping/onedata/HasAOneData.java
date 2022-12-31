//package has_a_mapping.onedata;
//
//import javax.persistence.EntityManager;
//
//import util.EMUtil;
//
//public class HasAOneData {
//
//	public static void main(String[] args) {
//		
//		EntityManager em = EMUtil.providEntityManager();
//
//		Address address = new Address("Karnatka", "Banglore", "121212");
//
//		Employee_01 employee_01 = new Employee_01("Harish", 43, address);
//		
//		em.getTransaction().begin();
//		
//		em.persist(employee_01);
//		
//		em.getTransaction().commit();
//		
//		em.close();  
//		
//		System.out.println("Check database");
//		
//		
//		
//		
//
//			mysql> select * from employee_01;

//			+-------+----------+---------+----------+---------+--------+
//			| EMPID | city     | pincode | state    | empName | empage |
//			+-------+----------+---------+----------+---------+--------+
//			|     1 | Banglore | 121212  | Karnatka | Harish  |     43 |
//			+-------+----------+---------+----------+---------+--------+
//			1 row in set (0.00 sec)
//		
//		
//	}
//	
//}
