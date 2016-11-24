package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TLigne;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tlignes")
@Controller
@RooWebScaffold(path = "tlignes", formBackingObject = TLigne.class)
public class TLigneController {
}
