// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration;

import com.mef.sigfip.elaboration.TClasse;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect TClasse_Roo_Jpa_Entity {
    
    declare @type: TClasse: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long TClasse.id;
    
    @Version
    @Column(name = "version")
    private Integer TClasse.version;
    
    public Long TClasse.getId() {
        return this.id;
    }
    
    public void TClasse.setId(Long id) {
        this.id = id;
    }
    
    public Integer TClasse.getVersion() {
        return this.version;
    }
    
    public void TClasse.setVersion(Integer version) {
        this.version = version;
    }
    
}
