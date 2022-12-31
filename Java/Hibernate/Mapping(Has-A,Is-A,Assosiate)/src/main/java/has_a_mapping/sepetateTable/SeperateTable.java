//package has_a_mapping.sepetateTable;
//
//import javax.persistence.EntityManager;
//
//import util.EMUtil;
//
//public class SeperateTable {
//
//	public static void main(String[] args) {
//		
//		EntityManager em = EMUtil.providEntityManager();
//
////		Address address1 = new Address("Karnatka", "Banglore", "121212");
////		Address address2 = new Address("M.P.", "Indore", "343434");
////		Address address3 = new Address("Gujrat", "Surat", "454545");
//		
//		
//		Employee_03 employee_03 = new Employee_03();
//		
//		employee_03.setEmpName("Rajesh Dammani");
//		employee_03.setEmpage(38);
//		
//		employee_03.getAddresses().add(new Address("Karnatka", "Banglore", "121212"));
//		employee_03.getAddresses().add(new Address("M.P.", "Indore", "343434"));
//		employee_03.getAddresses().add(new Address("Gujrat", "Surat", "454545"));
//		
//		
//		em.getTransaction().begin();
//		
//		em.persist(employee_03);
//		
//		em.getTransaction().commit();
//		
//		em.close();  
//		
//		System.out.println("Check database");

//			
//			mysql> select * from employee_03;
//			+-------+----------------+--------+
//			| EMPID | empName        | empage |
//			+-------+----------------+--------+
//			|     1 | Rajesh Dammani |     38 |
//			+-------+----------------+--------+
//			1 row in set (0.00 sec)
//			
//
//			mysql> select * from employee_address;
//			+-------+----------+---------+----------+
//			| EMPID | city     | pincode | state    |
//			+-------+----------+---------+----------+
//			|     1 | Indore   | 343434  | M.P.     |
//			|     1 | Surat    | 454545  | Gujrat   |
//			|     1 | Banglore | 121212  | Karnatka |
//			+-------+----------+---------+----------+
//			3 rows in set (0.00 sec)


//		
//	}
//	
//}
