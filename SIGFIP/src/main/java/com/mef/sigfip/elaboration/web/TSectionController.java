package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TSection;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tsections")
@Controller
@RooWebScaffold(path = "tsections", formBackingObject = TSection.class)
public class TSectionController {
}
