// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration.web;

import com.mef.sigfip.elaboration.TActivite;
import com.mef.sigfip.elaboration.web.TActiviteController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect TActiviteController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TActiviteController.create(@Valid TActivite TActivite_, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, TActivite_);
            return "tactivites/create";
        }
        uiModel.asMap().clear();
        TActivite_.persist();
        return "redirect:/tactivites/" + encodeUrlPathSegment(TActivite_.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TActiviteController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TActivite());
        return "tactivites/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String TActiviteController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("tactivite_", TActivite.findTActivite(id));
        uiModel.addAttribute("itemId", id);
        return "tactivites/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TActiviteController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("tactivites", TActivite.findTActiviteEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) TActivite.countTActivites() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("tactivites", TActivite.findAllTActivites(sortFieldName, sortOrder));
        }
        return "tactivites/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TActiviteController.update(@Valid TActivite TActivite_, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, TActivite_);
            return "tactivites/update";
        }
        uiModel.asMap().clear();
        TActivite_.merge();
        return "redirect:/tactivites/" + encodeUrlPathSegment(TActivite_.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String TActiviteController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, TActivite.findTActivite(id));
        return "tactivites/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String TActiviteController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TActivite TActivite_ = TActivite.findTActivite(id);
        TActivite_.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/tactivites";
    }
    
    void TActiviteController.populateEditForm(Model uiModel, TActivite TActivite_) {
        uiModel.addAttribute("TActivite_", TActivite_);
    }
    
    String TActiviteController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}