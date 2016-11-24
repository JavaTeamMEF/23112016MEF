package com.mef.sigfip.elaboration;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class TTypeService {

    /**
     */
    private String lib_typ_serv;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private List<TCategorieService> liste_cat_service = new ArrayList<TCategorieService>();
}
