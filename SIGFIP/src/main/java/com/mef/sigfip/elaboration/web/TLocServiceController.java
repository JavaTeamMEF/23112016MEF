package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TLocService;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tlocservices")
@Controller
@RooWebScaffold(path = "tlocservices", formBackingObject = TLocService.class)
public class TLocServiceController {
}
