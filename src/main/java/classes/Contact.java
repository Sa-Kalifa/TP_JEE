package classes;

public class Contact {
    private int id;
    private String nom;
    private String tel;
    private String email;
    private String competence;

    public Contact(int id, String nom, String tel, String email, String competence) {
        this.id = id;
        this.nom = nom;
        this.tel = tel;
        this.email = email;
        this.competence = competence;
    }

    public int getId(){
        return id;
    }
    public String getNom() {
        return nom;
    }
    public void setNom(String nom){
        this.nom = nom;
    }

    public String getTel() {
        return tel;
    }
    public void setTel(String tel){
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public void setCompetence(String competence){
        this.competence = competence;
    }

    public String getCompetence() {
        return competence;
    }
}
