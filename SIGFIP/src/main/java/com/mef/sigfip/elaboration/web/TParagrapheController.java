package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TParagraphe;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tparagraphes")
@Controller
@RooWebScaffold(path = "tparagraphes", formBackingObject = TParagraphe.class)
public class TParagrapheController {
}
