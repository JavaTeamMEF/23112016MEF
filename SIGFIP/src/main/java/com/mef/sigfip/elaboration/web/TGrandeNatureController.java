package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TGrandeNature;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tgrandenatures")
@Controller
@RooWebScaffold(path = "tgrandenatures", formBackingObject = TGrandeNature.class)
public class TGrandeNatureController {
}
