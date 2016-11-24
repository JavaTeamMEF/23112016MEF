package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TNumOrdreServ;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tnumordreservs")
@Controller
@RooWebScaffold(path = "tnumordreservs", formBackingObject = TNumOrdreServ.class)
public class TNumOrdreServController {
}
