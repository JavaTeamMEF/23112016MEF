package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TCategorieService;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tcategorieservices")
@Controller
@RooWebScaffold(path = "tcategorieservices", formBackingObject = TCategorieService.class)
public class TCategorieServiceController {
}
