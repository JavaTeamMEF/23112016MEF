package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TAxeDet;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/taxedets")
@Controller
@RooWebScaffold(path = "taxedets", formBackingObject = TAxeDet.class)
public class TAxeDetController {
}
