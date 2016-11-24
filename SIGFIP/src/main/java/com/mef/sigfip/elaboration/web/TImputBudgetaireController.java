package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TImputBudgetaire;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/timputbudgetaires")
@Controller
@RooWebScaffold(path = "timputbudgetaires", formBackingObject = TImputBudgetaire.class)
public class TImputBudgetaireController {
}
