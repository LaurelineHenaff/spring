package fr.coursspring.activite1.livres;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RestController
public class LivreController {
	
	@RequestMapping({"/", "index"})
	public ModelAndView home() {
		ModelAndView mnv = new ModelAndView();
		mnv.setViewName("index");
		return mnv;
	}

  @PostMapping("/livres")
  ModelAndView create( @RequestParam(value = "titre", defaultValue = "titre manquant") String titre,
             @RequestParam(value = "langue", defaultValue = "langue manquante") String langue) {
    //Créer le livre
    LivreRepository.create(titre, langue);
    //Créer les données et la vue à retourner
    ModelAndView mav = new ModelAndView();
    mav.setViewName("livres-created");
    return mav;
  }

  @GetMapping("/livres")
  public ModelAndView all() {
    ModelAndView mav = new ModelAndView();
    mav.addObject("livres", LivreRepository.findAll());
    mav.setViewName("livres-all");
    return mav;
  }

  @GetMapping("/livres/{id}")
  public ModelAndView get(@PathVariable int id) {
    ModelAndView mav = new ModelAndView();
    mav.addObject("livre", LivreRepository.findById(id));
    mav.setViewName("livres-get");
    return mav;
  }

  @RequestMapping("/livres-put/{id}")
  public ModelAndView update(@PathVariable int id,
                 @RequestParam(value = "titre", defaultValue = "titre manquant") String titre,
                 @RequestParam(value = "langue", defaultValue = "langue manquante") String langue) {
    //Modifier le livre
	LivreRepository.update(id, titre, langue);
    //Données + vue
    ModelAndView mav = new ModelAndView();
    mav.addObject("livre", LivreRepository.findById(id));
    mav.setViewName("livres-updated");
    return mav;
  }

  @RequestMapping("/livres-delete/{id}")
  public ModelAndView delete(@PathVariable int id) {
    //Effacer le livre
	LivreModel l = LivreRepository.deleteById(id);
    //Données + vue
    ModelAndView mav = new ModelAndView();
    mav.addObject("livre", l);
    mav.setViewName("livres-deleted");
    return mav;
  }

  @RequestMapping("/livres-form")
  public ModelAndView form(@RequestParam(value = "id", defaultValue = "") String id,
         @RequestParam(value = "titre", defaultValue = "") String titre,
         @RequestParam(value = "langue", defaultValue = "") String langue) {
    ModelAndView mav = new ModelAndView();
    mav.addObject("id", id);
    mav.addObject("titre", titre);
    mav.addObject("langue", langue);
    mav.setViewName("livres-form");
    return (mav);
  }
}