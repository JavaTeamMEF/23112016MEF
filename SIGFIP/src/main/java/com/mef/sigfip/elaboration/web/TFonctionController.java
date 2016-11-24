package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TFonction;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tfonctions")
@Controller
@RooWebScaffold(path = "tfonctions", formBackingObject = TFonction.class)
public class TFonctionController {
}
