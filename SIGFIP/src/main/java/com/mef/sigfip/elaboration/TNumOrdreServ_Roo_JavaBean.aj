// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration;

import com.mef.sigfip.elaboration.TChapitre;
import com.mef.sigfip.elaboration.TNumOrdreServ;
import java.util.List;

privileged aspect TNumOrdreServ_Roo_JavaBean {
    
    public List<TChapitre> TNumOrdreServ.getListe_chapitre() {
        return this.liste_chapitre;
    }
    
    public void TNumOrdreServ.setListe_chapitre(List<TChapitre> liste_chapitre) {
        this.liste_chapitre = liste_chapitre;
    }
    
}
