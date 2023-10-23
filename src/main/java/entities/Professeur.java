package entities;

import java.util.List;

public class Professeur{
	private int ppr;
	private String nom;
	private String prenom;
	private String email;
	private String motDePasse;
	private String role;
	private int grade;
	private List<Groupe> groupesencadre;
	private List<Groupe> groupesjure;   
	private String skills;
   
	public Professeur(int ppr, String nom, String prenom, String email, String motDePasse, String role, int grade,
			String skills) {
		super();
		this.ppr = ppr;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.motDePasse = motDePasse;
		this.role = role;
		this.grade = grade;
		this.skills = skills;
	}
	
	public Professeur(int ppr, String nom, String prenom, String email, String role, int grade) {
		this.ppr = ppr;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.role = role;
		this.grade = grade;
	}
	
	public Professeur(int ppr) {
		this.ppr = ppr;
		
	}

	public Professeur(int ppr, String nom, String prenom, String email, String motDePasse, String role, int grade,
			List<Groupe> groupesencadre, List<Groupe> groupesjure, String skills) {
		super();
		this.ppr = ppr;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.motDePasse = motDePasse;
		this.role = role;
		this.grade = grade;
		this.groupesencadre = groupesencadre;
		this.groupesjure = groupesjure;
		this.skills = skills;
	}

	public int getPpr() {
		return ppr;
	}

	public void setPpr(int ppr) {
		this.ppr = ppr;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMotDePasse() {
		return motDePasse;
	}

	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public List<Groupe> getGroupesencadre() {
		return groupesencadre;
	}

	public void setGroupesencadre(List<Groupe> groupesencadre) {
		this.groupesencadre = groupesencadre;
	}

	public List<Groupe> getGroupesjure() {
		return groupesjure;
	}

	public void setGroupesjure(List<Groupe> groupesjure) {
		this.groupesjure = groupesjure;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	@Override
	public String toString() {
		return "Professeur [ppr=" + ppr + ", nom=" + nom + ", prenom=" + prenom + ", email=" + email + ", motDePasse="
				+ motDePasse + ", role=" + role + ", grade=" + grade + ", groupesencadre=" + groupesencadre
				+ ", groupesjure=" + groupesjure + ", skills=" + skills + "]";
	}	
}