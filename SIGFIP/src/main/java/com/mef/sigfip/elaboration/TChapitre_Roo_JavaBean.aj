// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration;

import com.mef.sigfip.elaboration.TChapitre;
import com.mef.sigfip.elaboration.TSection;

privileged aspect TChapitre_Roo_JavaBean {
    
    public String TChapitre.getIb_chap_lib() {
        return this.ib_chap_lib;
    }
    
    public void TChapitre.setIb_chap_lib(String ib_chap_lib) {
        this.ib_chap_lib = ib_chap_lib;
    }
    
    public TSection TChapitre.getSect() {
        return this.sect;
    }
    
    public void TChapitre.setSect(TSection sect) {
        this.sect = sect;
    }
    
}
