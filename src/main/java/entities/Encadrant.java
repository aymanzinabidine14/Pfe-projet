package entities;
import java.util.*;

public class Encadrant extends Professeur {
   private int ppr;
   private String skill;
   private List<Groupe> grpeecd;
   private List<Sujet> sujet;
	
   public Encadrant() {
	   super();
	   // TODO Auto-generated constructor stub
   }
   
   public Encadrant(int ppr, int grade, Filliere filliere, int nombreGroupe) {
	   super(ppr, grade, filliere, nombreGroupe);
	   // TODO Auto-generated constructor stub
   }
   
   public Encadrant(int id, String nom, String prenom, String email, String motDePasse, String role) {
	   super(id, nom, prenom, email, motDePasse, role);
	   // TODO Auto-generated constructor stub
   }


	public int getPpr() {
		return ppr;
	}
	
	
	public void setPpr(int ppr) {
		this.ppr = ppr;
	}
	
	
	public String getSkill() {
		return skill;
	}
	
	
	public void setSkill(String skill) {
		this.skill = skill;
	}
	
	
	public List<Groupe> getGrpeecd() {
		return grpeecd;
	}
	
	
	public void setGrpeecd(List<Groupe> grpeecd) {
		this.grpeecd = grpeecd;
	}
	
	
	public List<Sujet> getSujet() {
		return sujet;
	}
	
	
	public void setSujet(List<Sujet> sujet) {
		this.sujet = sujet;
	}

	
	@Override
	public String toString() {
		return "Encadrant [ppr=" + ppr + ", skill=" + skill + ", grpeecd=" + grpeecd + ", sujet=" + sujet + "]";
	}

}