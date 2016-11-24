package com.mef.sigfip.elaboration;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class TChapitre {

    /**
     */
    private String ib_chap_lib;

    /**
     */
    @ManyToOne
    private TSection sect;

    /**
     */
    @ManyToOne
    private TTypeBudget budget;

    /**
     */
    @ManyToOne
    private TLocService localisation_service;

    /**
     */
    @ManyToOne
    private TCategorieService categorie_service;

    /**
     */
    @ManyToOne
    private TNumOrdreServ numero_ordre_service;
}
