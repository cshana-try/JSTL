package net.collab.hibernate.dao;


import org.hibernate.Session;
import org.hibernate.Transaction;

import net.collab.hibernate.model.Simple;
import net.collab.hibernate.util.HibernateUtil;

public class SimpleDao {

	public void saveSimple (Simple simple) 
	{
		Transaction transaction = null; 
		try (Session session = HibernateUtil.getSessionFactory().openSession())
		{
			//start transaction 
			transaction = session.beginTransaction();
			
			//save simple object 
			session.save(simple);
			
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
	
	public void deleteSimple (long id) 
	{
		Transaction transaction = null; 
		Simple simple = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession())
		{
			//start transaction 
			transaction = session.beginTransaction();
			
			//get object
			simple = session.get(Simple.class, id);
			
			//delete simple object 
			session.delete(simple);
			
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
	
	public Simple getSimpleById (long id) 
	{
		Transaction transaction = null; 
		Simple simple = null;
		try (Session session = HibernateUtil.getSessionFactory().openSession())
		{
			//start transaction 
			transaction = session.beginTransaction();
			
			//get student object
			simple = session.get(Simple.class, id);
			
			//commit transaction 
			transaction.commit();
			
		} catch (Exception e) 
		{
			if (transaction !=null) 
			{
				transaction.rollback();
			}
			
			
		}
		return simple;
	}
	
	
}	
