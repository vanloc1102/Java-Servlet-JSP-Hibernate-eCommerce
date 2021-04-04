package com.bookstore.entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class CategoryTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Category newCategory = new Category("Core Java");
		
		

		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("BookStoreWebApp");
		EntityManager entityManager = entityManagerFactory.createEntityManager();

		entityManager.getTransaction().begin();

		entityManager.persist(newCategory);

		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();

		System.out.println("New Category object was persisted");

	}

}
