package entities;

public class Etudiant{
	private int appogee;
	private String nom;
	private String prenom;
	private String email;
	private String motDePasse;
	private String role;
	private String skill;
	private Groupe groupe;
	private boolean responsable;
	
	public Etudiant(int appogee, String nom, String prenom, String email, String motDePasse, String role, String skill,
			int groupe_id, boolean responsable) {
		super();
		this.appogee = appogee;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.motDePasse = motDePasse;
		this.role = role;
		this.skill = skill;
		if(groupe_id==0)
			this.groupe = null;
		else
			this.groupe = groupe;
		this.responsable = responsable;
	}
	
	public Etudiant(int appogee, String nom, String prenom, String email) {
		this.appogee = appogee;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
	}

	public int getAppogee() {
		return appogee;
	}

	public void setAppogee(int appogee) {
		this.appogee = appogee;
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

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public Groupe getGroupe() {
		return groupe;
	}

	public void setGroupe(Groupe groupe) {
		this.groupe = groupe;
	}

	public boolean isResponsable() {
		return responsable;
	}

	public void setResponsable(boolean responsable) {
		this.responsable = responsable;
	}

	@Override
	public String toString() {
		return "Etudiant [appogee=" + appogee + ", nom=" + nom + ", prenom=" + prenom + ", email=" + email
				+ ", motDePasse=" + motDePasse + ", role=" + role + ", skill=" + skill + ", groupe=" + groupe
				+ ", responsable=" + responsable + "]";
	}
}