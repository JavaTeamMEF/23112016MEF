package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TSourceFin;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tsourcefins")
@Controller
@RooWebScaffold(path = "tsourcefins", formBackingObject = TSourceFin.class)
public class TSourceFinController {
}
