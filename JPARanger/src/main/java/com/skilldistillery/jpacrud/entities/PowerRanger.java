package com.skilldistillery.jpacrud.entities;

import java.time.LocalDateTime;
import java.util.Date;

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
	@Column(name = "original_air_date")
	private Date originalAirDate;
	@Column(name = "final_air_date")
	private Date finalAirDate;

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

	public void setSeasonName(String powerranger) {
		this.seasonName = powerranger;
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

	public LocalDateTime getOriginalAirDate() {
		return originalAirDate;
	}

	public void setOriginalAirDate(LocalDateTime originalAirDate) {
		this.originalAirDate = originalAirDate;
	}

	public LocalDateTime getFinalAirDate() {
		return finalAirDate;
	}

	public void setFinalAirDate(LocalDateTime finalAirDate) {
		this.finalAirDate = finalAirDate;
	}

	@Override
	public String toString() {
		return "PowerRanger [id=" + id + ", seasonName=" + seasonName + ", episodes=" + episodes + ", firstEpisode="
				+ firstEpisode + ", lastEpisode=" + lastEpisode + ", originalAirDate=" + originalAirDate
				+ ", finalAirDate=" + finalAirDate + "]";
	}
}
