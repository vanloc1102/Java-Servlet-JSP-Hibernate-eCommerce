package com.bookstore.dao;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.bookstore.entity.Users;

public class UserDAOTest {
	private static EntityManagerFactory entityManagerFactory;
	private static EntityManager entityManager;
	private static UserDAO userDAO;

	@BeforeClass
	public static void setUpClass() {
		entityManagerFactory = Persistence.createEntityManagerFactory("BookStoreWebApp");
		entityManager = entityManagerFactory.createEntityManager();

		userDAO = new UserDAO(entityManager);
	}

	@Test
	public void testCreateUsers() {
		Users user1 = new Users();
		user1.setEmail("nguyenvanlocmmo2@gmail.com");
		user1.setFullName("nguyenvanloc2");
		user1.setPassword("123456");

		user1 = userDAO.create(user1);

		assertTrue(user1.getUserId() > 0);
	}

	@Test(expected = PersistenceException.class)
	public void testCreateUsersFieldsNotSet() {
		Users user1 = new Users();
		user1 = userDAO.create(user1);

//		assertTrue(user1.getUserId() > 0);

	}
	
	@Test
	public void testUpdateUsers() {
		Users user = new Users();
		user.setUserId(23);
		user.setEmail("abdc@gmail.com");
		user.setFullName("Abcd");
		user.setPassword("654321");
		
		user = userDAO.update(user);
		
		String expected = "654321";
		String actualString = user.getPassword();
		
		assertEquals(expected, actualString);
		
	}
	
	@Test
	public void testGetUsersFound() {
		Integer userId = 20;
		Users user = userDAO.get(userId);
		if(user != null) {
			System.out.println(user.getEmail());
		}
		
		assertNotNull(user);
	}
	
	@Test
	public void testGetUsersNotFound() {
		Integer userId = 99;
		Users user = userDAO.get(userId);
		
		assertNull(user);
	}
	
	@Test
	public void testDeleteUsers() {
		Integer userId = 23;
		userDAO.delete(userId);
		
		Users users = userDAO.get(userId);
		
		assertNull(users);
	}
	
	@Test(expected = Exception.class)
	public void testDeleteNonExistUsers() {
		Integer userId = 55;
		userDAO.delete(userId);
	}
	
	@Test
	public void testListAll() {
		List<Users> listUsers = userDAO.listAll();
		
		assertTrue(listUsers.size() > 0);
	}
	
	@Test
	public void testCount() {
		long totalUsers = userDAO.count();
		
		assertEquals(5, totalUsers);
	}

	@AfterClass
	public static void tearDownClass() {
		entityManager.close();
		entityManagerFactory.close();
	}

}
