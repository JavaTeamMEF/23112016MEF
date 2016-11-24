package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TChapitre;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tchapitres")
@Controller
@RooWebScaffold(path = "tchapitres", formBackingObject = TChapitre.class)
public class TChapitreController {
}
