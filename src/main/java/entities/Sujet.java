package entities;

import java.util.Arrays;

public class Sujet {
	private int id;
	private String titre;
	private String description;	
	private String[] skill;
	private Encadrant encadrant;
	private Groupe groupe;
	
	public Sujet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Sujet(int id, String titre, String[] skill, Encadrant encadrant, Groupe groupe) {
		super();
		this.id = id;
		this.titre = titre;
		this.skill = skill;
		this.encadrant = encadrant;
		this.groupe = groupe;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public String[] getSkill() {
		return skill;
	}

	public void setSkill(String[] skill) {
		this.skill = skill;
	}

	public Encadrant getEncadrant() {
		return encadrant;
	}

	public void setEncadrant(Encadrant encadrant) {
		this.encadrant = encadrant;
	}

	public Groupe getGroupe() {
		return groupe;
	}

	public void setGroupe(Groupe groupe) {
		this.groupe = groupe;
	}

	@Override
	public String toString() {
		return "Sujet [id=" + id + ", titre=" + titre + ", skill=" + Arrays.toString(skill) + ", encadrant=" + encadrant
				+ ", groupe=" + groupe + "]";
	}
   
}