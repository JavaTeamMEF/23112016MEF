package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TLocBenef;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tlocbenefs")
@Controller
@RooWebScaffold(path = "tlocbenefs", formBackingObject = TLocBenef.class)
public class TLocBenefController {
}
