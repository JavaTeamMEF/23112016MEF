package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TBailleur;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tbailleurs")
@Controller
@RooWebScaffold(path = "tbailleurs", formBackingObject = TBailleur.class)
public class TBailleurController {
}
