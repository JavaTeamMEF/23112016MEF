package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TGroupe;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tgroupes")
@Controller
@RooWebScaffold(path = "tgroupes", formBackingObject = TGroupe.class)
public class TGroupeController {
}
