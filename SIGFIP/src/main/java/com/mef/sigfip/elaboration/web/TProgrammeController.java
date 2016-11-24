package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TProgramme;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tprogrammes")
@Controller
@RooWebScaffold(path = "tprogrammes", formBackingObject = TProgramme.class)
public class TProgrammeController {
}
