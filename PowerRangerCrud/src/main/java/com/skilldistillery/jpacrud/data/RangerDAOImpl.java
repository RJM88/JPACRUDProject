package com.skilldistillery.jpacrud.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.PowerRanger;

@Transactional
@Service
public class RangerDAOImpl implements RangerDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public PowerRanger findById(int id) {
		return em.find(PowerRanger.class, id);
	}

	@Override
	public PowerRanger addSeason(PowerRanger ranger) {
		em.persist(ranger);
		em.flush();
		em.close();
		return ranger;
	}
	
//	@Override
//	public PowerRanger updateSeason(int id, PowerRanger ranger) {
//		PowerRanger updateRanger = em.find(PowerRanger.class, id);
//		// assign all the data from the sent in Actor object to the one in the database
//		updateRanger.setSeasonName(ranger.getSeasonName());
//		updateRanger.setLastName(actor.getLastName());
//
//		em.getTransaction().begin();
//
//		em.flush();
//		em.getTransaction().commit();
//		em.close();
//		return dbActor;
//	}

	@Override
	public boolean deleteSeason(int id) {
		PowerRanger deleteSeason = em.find(PowerRanger.class, id);
		em.remove(deleteSeason);
		boolean seasonDeleted = !em.contains(deleteSeason);
		em.flush();
		em.close();
		return seasonDeleted;
	}
}
