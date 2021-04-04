package com.bookstore.entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class UserTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Users user1 = new Users();
		user1.setEmail("nguyenvanlocmmo1@gmail.com");
		user1.setFullName("nguyenvanloc1");
		user1.setPassword("123456");

		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("BookStoreWebApp");
		EntityManager entityManager = entityManagerFactory.createEntityManager();

		entityManager.getTransaction().begin();

		entityManager.persist(user1);

		entityManager.getTransaction().commit();
		entityManager.close();
		entityManagerFactory.close();

		System.out.println("A Users object was persisted");

	}

}
