package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TArticle;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tarticles")
@Controller
@RooWebScaffold(path = "tarticles", formBackingObject = TArticle.class)
public class TArticleController {
}
