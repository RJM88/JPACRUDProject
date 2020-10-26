package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
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

	@Override
	public PowerRanger updateSeason(int id, PowerRanger ranger) {
		PowerRanger updateRanger = em.find(PowerRanger.class, id);
		updateRanger.setSeasonName(ranger.getSeasonName());
		updateRanger.setEpisodes(ranger.getEpisodes());
		updateRanger.setFirstEpisode(ranger.getFirstEpisode());
		updateRanger.setLastEpisode(ranger.getLastEpisode());
		updateRanger.setOriginalYear(ranger.getOriginalYear());
		updateRanger.setMainVillain(ranger.getMainVillain());
		em.flush();
		em.close();
		return updateRanger;
	}

	@Override
	public boolean deleteSeason(int id) {
		PowerRanger deleteSeason = em.find(PowerRanger.class, id);
		em.remove(deleteSeason);
		boolean seasonDeleted = !em.contains(deleteSeason);
		em.flush();
		em.close();
		return seasonDeleted;
	}

	@Override
	public List<PowerRanger> seasonList() {
		String sql = "Select s from PowerRanger s";
		List<PowerRanger> list = em.createQuery(sql, PowerRanger.class).getResultList();
		for (PowerRanger season : list) {
			System.out.println(season.getSeasonName());
		}
		return list;
	}
}
