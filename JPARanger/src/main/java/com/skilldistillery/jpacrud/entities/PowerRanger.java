package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "powerranger")
public class PowerRanger {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "season_name")
	private String seasonName;
	private int episodes;
	@Column(name = "first_episode")
	private String firstEpisode;
	@Column(name = "last_episode")
	private String lastEpisode;
	@Column(name = "original_year")
	private Integer originalYear;
	@Column(name = "main_villain")
	private String mainVillain;

	public PowerRanger() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSeasonName() {
		return seasonName;
	}

	public void setSeasonName(String seasonName) {
		this.seasonName = seasonName;
	}

	public int getEpisodes() {
		return episodes;
	}

	public void setEpisodes(int episodes) {
		this.episodes = episodes;
	}

	public String getFirstEpisode() {
		return firstEpisode;
	}

	public void setFirstEpisode(String firstEpisode) {
		this.firstEpisode = firstEpisode;
	}

	public String getLastEpisode() {
		return lastEpisode;
	}

	public void setLastEpisode(String lastEpisode) {
		this.lastEpisode = lastEpisode;
	}

	public int getOriginalYear() {
		return originalYear;
	}

	public void setOriginalYear(Integer originalYear) {
		this.originalYear = originalYear;
	}

	public String getMainVillain() {
		return mainVillain;
	}

	public void setMainVillain(String mainVillain) {
		this.mainVillain = mainVillain;
	}

	@Override
	public String toString() {
		return "PowerRanger [id=" + id + ", seasonName=" + seasonName + ", episodes=" + episodes + ", firstEpisode="
				+ firstEpisode + ", lastEpisode=" + lastEpisode + ", originalYear=" + originalYear + ", mainVillain="
				+ mainVillain + "]";
	}
}