package entities;

import java.util.Arrays;
import java.util.List;

import dao.ProfesseurDao;

public class Groupe {
	private int id;
	private int nombreMembre;
	private String[] skill;
	private int encadrant;
	private Professeur jure;
	private List<Etudiant> etudiant;
	private boolean etat;
	private PlanTravail planTravail;
	private List<Rapport>  rapport;
	private Sujet sujet;
	
	public Groupe() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Groupe(int id, int nombreMembre, int encadrant_id, int jure_id, boolean etat,
			int responsable_id , int planTravail_id, int sujet_id) {
		this.id = id;
		this.nombreMembre = nombreMembre;
		this.skill = null;
		this.encadrant=encadrant_id;
		if(jure_id==0)
			this.jure = null;
		else
			this.jure = ProfesseurDao.findUserById(jure_id) ;
		this.etudiant = null;
		this.etat = etat;
		if(planTravail_id==0)
			this.planTravail = null;
		else
			this.planTravail = PlanTravailDao.findPlanById(planTravail_id) ;
		this.rapport = null;
		if(sujet_id==0)
			this.sujet = null;
		else
			this.sujet = SujetDao.findSujetById(sujet_id) ;
		
	}

	public Groupe(int id, int nombreMembre, String[] skill, Professeur encadrant, Professeur jure, List<Etudiant> etudiant,
			boolean etat, PlanTravail planTravail, List<Rapport> rapport, Sujet sujet) {
		super();
		this.id = id;
		this.nombreMembre = nombreMembre;
		this.skill = skill;
		this.encadrant = encadrant;
		this.jure = jure;
		this.etudiant = etudiant;
		this.etat = etat;
		this.planTravail = planTravail;
		this.rapport = rapport;
		this.sujet = sujet;
	}
	
	public Groupe(int id, int nombreMembre) {
		super();
		this.id = id;
		this.nombreMembre = nombreMembre;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getNombreMembre() {
		return nombreMembre;
	}
	
	public void setNombreMembre(int nombreMembre) {
		this.nombreMembre = nombreMembre;
	}
	
	public String[] getSkill() {
		return skill;
	}
	
	public void setSkill(String[] skill) {
		this.skill = skill;
	}
	
	public int getEncadrant() {
		return encadrant;
	}
	
	public void setEncadrant(int encadrant) {
		this.encadrant = encadrant;
	}
	
	public Professeur getJure() {
		return jure;
	}
	
	public void setJure(Professeur jure) {
		this.jure = jure;
	}
	
	public List<Etudiant> getEtudiant() {
		return etudiant;
	}
	
	public void setEtudiant(List<Etudiant> etudiant) {
		this.etudiant = etudiant;
	}
	
	public boolean getEtat() {
		return etat;
	}
	
	public void setEtat(boolean etat) {
		this.etat = etat;
	}
	
	public PlanTravail getPlanTravail() {
		return planTravail;
	}
	
	public void setPlanTravail(PlanTravail planTravail) {
		this.planTravail = planTravail;
	}
	
	public List<Rapport> getRapport() {
		return rapport;
	}
	
	public void setRapport(List<Rapport> rapport) {
		this.rapport = rapport;
	}
	
	public Sujet getSujet() {
		return sujet;
	}
	
	public void setSujet(Sujet sujet) {
		this.sujet = sujet;
	}
	
	@Override
	public String toString() {
		return "Groupe [id=" + id + ", nombreMembre=" + nombreMembre + ", skill=" + Arrays.toString(skill)
				+ ", encadrant=" + encadrant + ", jure=" + jure + ", etudiant=" + etudiant + ", etat=" + etat
				+ ", planTravail=" + planTravail + ", rapport=" + rapport + ", sujet=" + sujet + "]";
	}
	
}