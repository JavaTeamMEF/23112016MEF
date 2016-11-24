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
public class TSection {

    /**
     */
    private String sec_lib_court;

    /**
     */
    private String sec_lib_long;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private List<TChapitre> list_chap = new ArrayList<TChapitre>();
}
