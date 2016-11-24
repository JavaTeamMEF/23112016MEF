package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TAction;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tactions")
@Controller
@RooWebScaffold(path = "tactions", formBackingObject = TAction.class)
public class TActionController {
}
