package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class RangerTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private PowerRanger ranger;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("PowerRangerPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		ranger = em.find(PowerRanger.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		ranger = null;
	}

	@Test
	void test() {
		assertNotNull(ranger);
		assertEquals("Mighty Morphin Power Rangers",ranger.getSeasonName());
		assertEquals(60,ranger.getEpisodes());
		assertEquals("Day of the Dumpster",ranger.getFirstEpisode());
		assertEquals("An Oyster Stew",ranger.getLastEpisode());
		assertEquals(1993,ranger.getOriginalYear());
		assertEquals("Rita Repulsa",ranger.getMainVillain());
	}
}
