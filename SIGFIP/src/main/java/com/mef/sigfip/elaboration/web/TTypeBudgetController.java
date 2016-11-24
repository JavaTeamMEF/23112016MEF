package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TTypeBudget;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ttypebudgets")
@Controller
@RooWebScaffold(path = "ttypebudgets", formBackingObject = TTypeBudget.class)
public class TTypeBudgetController {
}
