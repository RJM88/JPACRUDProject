package com.skilldistillery.jpacrud.data;

import com.skilldistillery.jpacrud.entities.PowerRanger;

public interface RangerDAO {
	PowerRanger findById(int id);

	PowerRanger addSeason(PowerRanger ranger);

	boolean deleteSeason(int id);

//	PowerRanger updateSeason(int id, PowerRanger ranger);

}
