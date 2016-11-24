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
public class TPrefecture {

    /**
     */
    private String lib_prefecture;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private List<TLocService> liste_loc_service = new ArrayList<TLocService>();

    /**
     */
    @ManyToOne
    private TRegion region;
}
