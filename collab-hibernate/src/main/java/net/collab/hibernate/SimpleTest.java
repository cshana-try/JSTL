package net.collab.hibernate;

import java.util.Scanner;

import net.collab.hibernate.dao.StudentDao;
import net.collab.hibernate.model.Student;

public class SimpleTest {

	public static void main(String[] args) {
		
//		SimpleDao simpleDao = new SimpleDao();
//		Simple simple = new Simple("Java");
//		simpleDao.saveSimple(simple);
//		simpleDao.deleteSimple(8);
		
//		Simple id = simpleDao.getSimpleById(9);
//		System.out.print(id.getName());
		
		StudentDao studentDao = new StudentDao();
		Student student = new Student (0, "Pure", "Bread", "cat@gmail.com");
		studentDao.saveStudent(student);
		
//		 Scanner sc = new Scanner(System.in); 
//		 System.out.println("First name: ");
//		 System.out.println("Enter last name: ");
//		 System.out.println("Email: ");
//		 System.out.println("ID: ");
//		 
//		 StudentDao studentDao = new StudentDao();
//		 Student getMaria = studentDao.getStudentById(1);
//		 System.out.println(getMaria.getFirstname());
//		 System.out.println(getMaria.getLastname());
//		 System.out.println(getMaria.getEmail());
//		 System.out.println(getMaria.getId());
		
		
//		Case 1: 
//			
//		Scanner sc = new Scanner(System.in); 
//		System.out.print("Enter First Name: ");
//		String firstname = sc.next();
//		System.out.print("Enter Last Name: ");
//		String lastname = sc.next();
//		System.out.print("Enter Email: ");
//		String email = sc.next();
//		
//		Student student  = new Student(firstname, lastname, email);
//		studentDao.saveStudent(student);
//		
//		
//		Case 2: System.out.print("Select ID: "); 
//		long id = sc.nextInt();
		
		 
		}
		
}
