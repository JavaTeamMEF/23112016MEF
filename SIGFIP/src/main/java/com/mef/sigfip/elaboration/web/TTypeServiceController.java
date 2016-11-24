package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TTypeService;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ttypeservices")
@Controller
@RooWebScaffold(path = "ttypeservices", formBackingObject = TTypeService.class)
public class TTypeServiceController {
}
