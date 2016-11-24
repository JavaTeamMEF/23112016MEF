package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TRegion;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tregions")
@Controller
@RooWebScaffold(path = "tregions", formBackingObject = TRegion.class)
public class TRegionController {
}
