package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TClasse;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tclasses")
@Controller
@RooWebScaffold(path = "tclasses", formBackingObject = TClasse.class)
public class TClasseController {
}
