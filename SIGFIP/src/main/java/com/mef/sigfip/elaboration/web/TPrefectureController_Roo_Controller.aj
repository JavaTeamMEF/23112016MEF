// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration.web;

import com.mef.sigfip.elaboration.TPrefecture;
import com.mef.sigfip.elaboration.web.TPrefectureController;
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

privileged aspect TPrefectureController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TPrefectureController.create(@Valid TPrefecture TPrefecture_, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, TPrefecture_);
            return "tprefectures/create";
        }
        uiModel.asMap().clear();
        TPrefecture_.persist();
        return "redirect:/tprefectures/" + encodeUrlPathSegment(TPrefecture_.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TPrefectureController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TPrefecture());
        return "tprefectures/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String TPrefectureController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("tprefecture_", TPrefecture.findTPrefecture(id));
        uiModel.addAttribute("itemId", id);
        return "tprefectures/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TPrefectureController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("tprefectures", TPrefecture.findTPrefectureEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) TPrefecture.countTPrefectures() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("tprefectures", TPrefecture.findAllTPrefectures(sortFieldName, sortOrder));
        }
        return "tprefectures/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TPrefectureController.update(@Valid TPrefecture TPrefecture_, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, TPrefecture_);
            return "tprefectures/update";
        }
        uiModel.asMap().clear();
        TPrefecture_.merge();
        return "redirect:/tprefectures/" + encodeUrlPathSegment(TPrefecture_.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String TPrefectureController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, TPrefecture.findTPrefecture(id));
        return "tprefectures/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String TPrefectureController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TPrefecture TPrefecture_ = TPrefecture.findTPrefecture(id);
        TPrefecture_.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/tprefectures";
    }
    
    void TPrefectureController.populateEditForm(Model uiModel, TPrefecture TPrefecture_) {
        uiModel.addAttribute("TPrefecture_", TPrefecture_);
    }
    
    String TPrefectureController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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