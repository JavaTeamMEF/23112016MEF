package com.mef.sigfip.elaboration;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class TLocService {

    /**
     */
    private String lib_loc_serv;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private List<TChapitre> liste_chapitre = new ArrayList<TChapitre>();

    /**
     */
    @ManyToOne
    private TPrefecture prefecture;
}
