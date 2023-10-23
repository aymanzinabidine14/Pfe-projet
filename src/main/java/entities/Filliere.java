package entities;

public class Filliere {
	private int id;
	private String nom;
	private Coordinateur coordinateur;
	private Departement departement;
	
	public Filliere() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Filliere(int id, String nom, Coordinateur coordinateur, Departement departement) {
		super();
		this.id = id;
		this.nom = nom;
		this.coordinateur = coordinateur;
		this.departement = departement;
	}
	
	public Filliere(int id, String nom) {
		super();
		this.id = id;
		this.nom = nom;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public Coordinateur getCoordinateur() {
		return coordinateur;
	}

	public void setCoordinateur(Coordinateur coordinateur) {
		this.coordinateur = coordinateur;
	}

	public Departement getDepartement() {
		return departement;
	}

	public void setDepartement(Departement departement) {
		this.departement = departement;
	}

	
	@Override
	public String toString() {
		return "Filliere [id=" + id + ", nom=" + nom + ", coordinateur=" + coordinateur + ", departement=" + departement
				+  "]";
	}

}