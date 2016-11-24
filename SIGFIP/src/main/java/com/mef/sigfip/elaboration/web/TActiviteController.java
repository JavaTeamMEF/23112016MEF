package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TActivite;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tactivites")
@Controller
@RooWebScaffold(path = "tactivites", formBackingObject = TActivite.class)
public class TActiviteController {
}
