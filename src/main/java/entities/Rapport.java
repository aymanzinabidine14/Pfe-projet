package entities;

import java.io.File;

public class Rapport {
	private int id;
	private String titre;
	private String description;
	private double size;
	private Groupe groupe;
	private File fichier;
	
	public Rapport() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Rapport(int id, String titre, String description, double size, Groupe groupe, File fichier) {
		super();
		this.id = id;
		this.titre = titre;
		this.description = description;
		this.size = size;
		this.groupe = groupe;
		this.fichier = fichier;
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
	
	public double getSize() {
		return size;
	}
	
	public void setSize(double size) {
		this.size = size;
	}
	
	public Groupe getGroupe() {
		return groupe;
	}
	
	public void setGroupe(Groupe groupe) {
		this.groupe = groupe;
	}
	
	public File getFichier() {
		return fichier;
	}
	
	public void setFichier(File fichier) {
		this.fichier = fichier;
	}
	
	@Override
	public String toString() {
		return "Rapport [id=" + id + ", titre=" + titre + ", description=" + description + ", size=" + size
				+ ", groupe=" + groupe + ", fichier=" + fichier + "]";
	}
   
}