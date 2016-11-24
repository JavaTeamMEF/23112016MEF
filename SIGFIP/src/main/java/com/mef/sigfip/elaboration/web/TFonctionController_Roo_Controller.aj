// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration.web;

import com.mef.sigfip.elaboration.TFonction;
import com.mef.sigfip.elaboration.web.TFonctionController;
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

privileged aspect TFonctionController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TFonctionController.create(@Valid TFonction TFonction_, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, TFonction_);
            return "tfonctions/create";
        }
        uiModel.asMap().clear();
        TFonction_.persist();
        return "redirect:/tfonctions/" + encodeUrlPathSegment(TFonction_.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TFonctionController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TFonction());
        return "tfonctions/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String TFonctionController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("tfonction_", TFonction.findTFonction(id));
        uiModel.addAttribute("itemId", id);
        return "tfonctions/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TFonctionController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("tfonctions", TFonction.findTFonctionEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) TFonction.countTFonctions() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("tfonctions", TFonction.findAllTFonctions(sortFieldName, sortOrder));
        }
        return "tfonctions/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TFonctionController.update(@Valid TFonction TFonction_, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, TFonction_);
            return "tfonctions/update";
        }
        uiModel.asMap().clear();
        TFonction_.merge();
        return "redirect:/tfonctions/" + encodeUrlPathSegment(TFonction_.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String TFonctionController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, TFonction.findTFonction(id));
        return "tfonctions/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String TFonctionController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TFonction TFonction_ = TFonction.findTFonction(id);
        TFonction_.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/tfonctions";
    }
    
    void TFonctionController.populateEditForm(Model uiModel, TFonction TFonction_) {
        uiModel.addAttribute("TFonction_", TFonction_);
    }
    
    String TFonctionController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
