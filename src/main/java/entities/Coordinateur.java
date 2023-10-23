package entities;

public class Coordinateur{
	private int ppr;
	private String nom;
	private String prenom;
	private String email;
	private String motDePasse;
	private String role;
	private Filliere filliere;
	
	public Coordinateur(int ppr, String nom, String prenom, String email, String motDePasse, String role) {
		this.ppr = ppr;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.motDePasse = motDePasse;
		this.role = role;
		this.filliere=null;
	}
	
	public Coordinateur(int ppr, String nom, String prenom, String email) {
		super();
		this.ppr = ppr;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
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

	public Filliere getFilliere() {
		return filliere;
	}

	public void setFilliere(Filliere filliere) {
		this.filliere = filliere;
	}

	@Override
	public String toString() {
		return "Coordinateur [ppr=" + ppr + ", nom=" + nom + ", prenom=" + prenom + ", email=" + email + ", motDePasse="
				+ motDePasse + ", role=" + role + ", filliere=" + filliere + "]";
	}
	
	
	
	
	
	
	
}