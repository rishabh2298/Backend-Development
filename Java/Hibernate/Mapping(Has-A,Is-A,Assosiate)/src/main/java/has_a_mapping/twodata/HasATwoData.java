//package has_a_mapping.twodata;
//
//import javax.persistence.EntityManager;
//
//import util.EMUtil;
//
//public class HasATwoData {
//
//	public static void main(String[] args) {
//		
//		EntityManager em_2 = EMUtil.providEntityManager();
//		
//		Address homeAddress = new Address("Madhya Pradesh", "Indore", "121212");
//		Address officeAddress = new Address("Katnatka", "Banglore", "545454");
//
//		Employee_02 employee_02 = new Employee_02(12, "Rajendra Prasad", 36, homeAddress, officeAddress);
//		
//		em_2.getTransaction().begin();
//		
//		em_2.merge(employee_02);  // can't use persit because it get detached as Iam using 1+ main class
//		
//		em_2.getTransaction().commit();
//		
//		em_2.close();
//		
//		System.out.println("Check database");
//		
//		
//		
//		
//
//		mysql> select * from employee_02;
//		+-------+-----------------+--------+-----------+--------------+----------------+-------------+----------------+--------------+
//		| EMPID | empName         | empage | Home_City | Home_Pincode | Home_State     | Office_City | Office_Pincode | Office_State |
//		+-------+-----------------+--------+-----------+--------------+----------------+-------------+----------------+--------------+
//		|     1 | Rajendra Prasad |     36 | Indore    | 121212       | Madhya Pradesh | Banglore    | 545454         | Katnatka     |
//		+-------+-----------------+--------+-----------+--------------+----------------+-------------+----------------+--------------+
//		1 row in set (0.00 sec)
//
//		
//		
//	}
//	
//}
