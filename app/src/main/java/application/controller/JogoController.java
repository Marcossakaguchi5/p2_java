package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Jogo;
import application.model.JogoRepository;

@Controller
@RequestMapping("/jogo")
public class JogoController {
    
    
    @Autowired
    private JogoRepository JogoRepo;


    @RequestMapping("/jogo")
    public String list(Model model) {
        model.addAttribute("livros", JogoRepo.findAll());
        return "/jogo/list";
    }

    @RequestMapping("/insert")
    public String insert() {
        return "/jogo/insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("titulo") String titulo , @RequestParam("anoDeLancamento") int anoDeLancamento) {
        Jogo jogo = new Jogo();
        jogo.setTitulo(titulo);
        jogo.setAnoDeLancamento(anoDeLancamento);

        JogoRepo.save(jogo);

        return "redirect:/jogo";
    }


}
