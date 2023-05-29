package fr.coursspring.activite1.livres;

public class LivreModel {
  private int id;
  private String titre;
  private String langue;

  //Constructeur vide pour ne pas s'ôter la possibilité d'utiliser le modèle comme un Bean Java
  public LivreModel() {
    super();
  }

  public LivreModel(int id, String titre, String langue) {
    super();
    this.id = id;
    this.titre = titre;
    this.langue = langue;
  }

  //Getters and setters
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
  public String getLangue() {
    return langue;
  }
  public void setLangue(String langue) {
    this.langue = langue;
  }

  //To string
  @Override
  public String toString() {
    return "<table><tr><td>" + id + "</td><td>" + titre + "</td><td>" + langue + "</td></tr></table>";
  }
}