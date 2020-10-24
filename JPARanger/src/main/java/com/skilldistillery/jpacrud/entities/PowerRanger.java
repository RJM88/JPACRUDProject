package com.skilldistillery.jpacrud.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PowerRanger {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String powerranger;

	public PowerRanger() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPowerranger() {
		return powerranger;
	}

	public void setPowerranger(String powerranger) {
		this.powerranger = powerranger;
	}

	@Override
	public String toString() {
		return "PowerRanger [id=" + id + ", powerranger=" + powerranger + "]";
	}

}
