package com.mef.sigfip.elaboration.web;
import com.mef.sigfip.elaboration.TPrefecture;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tprefectures")
@Controller
@RooWebScaffold(path = "tprefectures", formBackingObject = TPrefecture.class)
public class TPrefectureController {
}
