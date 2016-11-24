package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TAxeScape;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/taxescapes")
@Controller
@RooWebScaffold(path = "taxescapes", formBackingObject = TAxeScape.class)
public class TAxeScapeController {
}
