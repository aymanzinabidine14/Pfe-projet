package entities;

import java.util.List;

import dao.GroupeDao;

public class PlanTravail {
   private int id;
   private List<Tache> tache;
   private Groupe grp;

   public PlanTravail() {
	   super();
	   // TODO Auto-generated constructor stub
   }

	public PlanTravail(int id, List<Tache> tache, Groupe grp) {
		super();
		this.id = id;
		this.tache = tache;
		this.grp = grp;
	}
	
	public PlanTravail(int id, int groupe_id) {
		this.id = id;
		this.tache = null;
		this.grp = GroupeDao.findGroupById(groupe_id);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Tache> getTache() {
		return tache;
	}

	public void setTache(List<Tache> tache) {
		this.tache = tache;
	}

	public Groupe getGrp() {
		return grp;
	}

	public void setGrp(Groupe grp) {
		this.grp = grp;
	}

	
	@Override
	public String toString() {
		return "PlanTravail [id=" + id + ", tache=" + tache + ", grp=" + grp + "]";
	}
	   
}