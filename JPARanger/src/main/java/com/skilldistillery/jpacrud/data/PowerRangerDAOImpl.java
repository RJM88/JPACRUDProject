//package com.skilldistillery.jpacrud.data;
//
//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;
//
//import com.skilldistillery.jpacrud.entities.PowerRanger;
//
//
//
//public class PowerRangerDAOImpl implements PowerRangerDAO {
//	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("PowerRangerDB");
//
//	@Override
//	public PowerRanger findSeason(int id) {
//		EntityManager em = emf.createEntityManager();
//		return em.find(PowerRanger.class, id);
//	}
//
//	@Override
//	public PowerRanger update(int id, PowerRanger ranger) {
//		EntityManager em = emf.createEntityManager();
//		// find the actor to be updated
//		ranger = em.find(PowerRanger.class, id);
//		// assign all the data from the sent in Actor object to the one in the database
//		ranger.setSeasonName(ranger.getSeasonName());
//		ranger.setEpisodes(ranger.getEpisodes());
//		ranger.setFirstEpisode(ranger.getFirstEpisode());
//		ranger.setLastEpisode(ranger.getLastEpisode());
//		ranger.setOriginalAirDate(ranger.getOriginalAirDate());
//		ranger.setFinalAirDate(ranger.getFinalAirDate());
//
//		em.getTransaction().begin();
//
//		em.flush();
//		em.getTransaction().commit();
//		em.close();
//		return ranger;
//	}
//
//	@Override
//	public boolean destroy(int id) {
//		EntityManager em = emf.createEntityManager();
//		PowerRanger deleteRanger = em.find(PowerRanger.class, id);
//
//		em.getTransaction().begin();
//		em.remove(deleteRanger);
//		boolean rangerDeleted = !em.contains(deleteRanger);
//		em.flush();
//		em.getTransaction().commit();
//		em.close();
//		return rangerDeleted;
//	}
//
//	@Override
//	public PowerRanger create(PowerRanger ranger) {
//		EntityManager em = emf.createEntityManager();
//		em.getTransaction().begin();
//		em.persist(ranger);
//		System.out.println(ranger);
//
//		em.flush();
//
//		em.getTransaction().commit();
//		em.close();
//		emf.close();
//		return ranger;
//	}
//}