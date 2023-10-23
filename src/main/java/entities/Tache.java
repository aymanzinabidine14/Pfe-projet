package entities;

import java.sql.Date;

public class Tache {
	private int id;
	private String titre;
	private String description;
	private Date dateDebut;
	private Date dateFinProvisoire;
	private Etudiant delegue;
	private Groupe groupe;
	private PlanTravail planTravail;
	private Date dateFinOfficiel;
	private boolean etat;
	
	public Tache() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Tache(int id, String titre, String description, Date dateDebut, Date dateFinProvisoire, Etudiant delegue,
			Groupe groupe, PlanTravail planTravail, Date dateFinOfficiel, boolean etat) {
		super();
		this.id = id;
		this.titre = titre;
		this.description = description;
		this.dateDebut = dateDebut;
		this.dateFinProvisoire = dateFinProvisoire;
		this.delegue = delegue;
		this.groupe = groupe;
		this.planTravail = planTravail;
		this.dateFinOfficiel = dateFinOfficiel;
		this.etat = etat;
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
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Date getDateDebut() {
		return dateDebut;
	}
	
	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}
	
	public Date getDateFinProvisoire() {
		return dateFinProvisoire;
	}
	
	public void setDateFinProvisoire(Date dateFinProvisoire) {
		this.dateFinProvisoire = dateFinProvisoire;
	}
	
	public Etudiant getDelegue() {
		return delegue;
	}
	
	public void setDelegue(Etudiant delegue) {
		this.delegue = delegue;
	}
	
	public Groupe getGroupe() {
		return groupe;
	}
	
	public void setGroupe(Groupe groupe) {
		this.groupe = groupe;
	}
	
	public PlanTravail getPlanTravail() {
		return planTravail;
	}
	
	public void setPlanTravail(PlanTravail planTravail) {
		this.planTravail = planTravail;
	}
	
	public Date getDateFinOfficiel() {
		return dateFinOfficiel;
	}
	
	public void setDateFinOfficiel(Date dateFinOfficiel) {
		this.dateFinOfficiel = dateFinOfficiel;
	}
	
	public boolean isEtat() {
		return etat;
	}
	
	public void setEtat(boolean etat) {
		this.etat = etat;
	}

	
	@Override
	public String toString() {
		return "Tache [id=" + id + ", titre=" + titre + ", description=" + description + ", dateDebut=" + dateDebut
				+ ", dateFinProvisoire=" + dateFinProvisoire + ", delegue=" + delegue + ", groupe=" + groupe
				+ ", planTravail=" + planTravail + ", dateFinOfficiel=" + dateFinOfficiel + ", etat=" + etat + "]";
	}
     
}