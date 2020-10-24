//package com.skilldistillery.jpacrud.client;
//
//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;
//
//import com.skilldistillery.jpacrud.entities.PowerRanger;
//
//public class RangerClient {
//
//	public static void main(String[] args) {
//		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VideoStore");
//		EntityManager em = emf.createEntityManager();
//		PowerRanger ranger = em.find(PowerRanger.class, 2);
//		System.out.println(ranger);
//		em.close();
//		emf.close();
//
//	}
//
//}
