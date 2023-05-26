package fr.coursspring.activite1.livres;

import java.util.Collection;
import java.util.HashMap;
import fr.coursspring.activite1.livres.LivreModel;

public class LivreRepository {

private static HashMap<Integer, LivreModel> data =  new HashMap<>();

static {
    data.put(1, new LivreModel(1, "Les chevaliers d'Emeraude", "Français"));
    data.put(2, new LivreModel(2, "Harry Potter", "Anglais"));
    data.put(3, new LivreModel(3, "Blade Runner", "Anglais"));
    data.put(4, new LivreModel(4, "Dracula", "Anglais"));
    data.put(5, new LivreModel(5, "Terrienne", "Français"));
  }

  public LivreRepository() {

  }

  //------ CRUD operations ----------------

  //Create
  public static void create(String titre, String langue) {
    int maxId = data.keySet().stream().max(Integer::compare).get(); //Trouve l'index maximum utilisé dans data
    data.put(maxId + 1, new LivreModel(maxId + 1, titre, langue)); //on ajoute à l'index maxId +1 ...
  }

  //Read
  public static Collection findAll()
  {
    return data.values();
  }

  public static LivreModel findById(int id) {
    return data.get(id);
  }

  //Update
  public static void update(int id, String titre, String langue) {
    data.get(id).setTitre(titre);
    data.get(id).setLangue(langue);
  }

  //Delete
    public static void deleteAll() {
    data.clear();
  }

  public static LivreModel deleteById(int id) {
    return data.remove(id);
  }
}