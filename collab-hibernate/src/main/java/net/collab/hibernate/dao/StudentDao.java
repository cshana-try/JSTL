package net.collab.hibernate.dao;

import java.util.Scanner;

import org.hibernate.Session;
import org.hibernate.Transaction;

import net.collab.hibernate.model.Student;
import net.collab.hibernate.util.HibernateUtil;

public class StudentDao {

	public void saveStudent (Student student) 
	{
		Transaction transaction = null; 
		try (Session session = HibernateUtil.getSessionFactory().openSession())
		{
			//start transaction 
			transaction = session.beginTransaction();
			
			//save simple object 
			session.save(student);
			
			//commit transaction 
			transaction.commit();
			
		} catch (Exception e) 
		{
			if (transaction !=null) 
			{
				transaction.rollback();
			}
		}
	}
	
	public void deleteStudent (long id) 
	{
		Transaction transaction = null; 
		Student student = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession())
		{
			//start transaction 
			transaction = session.beginTransaction();
			
			//get object
			student = session.get(Student.class, id);
			
			//delete simple object 
			session.delete(student);
			
			//commit transaction 
			transaction.commit();
			
		} catch (Exception e) 
		{
			if (transaction !=null) 
			{
				transaction.rollback();
			}
		}
	}
	
	public Student getStudentById (long id) 
	{
		Transaction transaction = null; 
		Student student = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession())
		{
			//start transaction 
			transaction = session.beginTransaction();
			
			//get student object
			student = session.get(Student.class, id);
			
			//commit transaction 
			transaction.commit();
			
		} catch (Exception e) 
		{
			if (transaction !=null) 
			{
				transaction.rollback();
			}
			
			
		}
		return student;
	}
	
	
}	
