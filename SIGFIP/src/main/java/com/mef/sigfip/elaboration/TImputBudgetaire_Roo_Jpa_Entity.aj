// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration;

import com.mef.sigfip.elaboration.TImputBudgetaire;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect TImputBudgetaire_Roo_Jpa_Entity {
    
    declare @type: TImputBudgetaire: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long TImputBudgetaire.id;
    
    @Version
    @Column(name = "version")
    private Integer TImputBudgetaire.version;
    
    public Long TImputBudgetaire.getId() {
        return this.id;
    }
    
    public void TImputBudgetaire.setId(Long id) {
        this.id = id;
    }
    
    public Integer TImputBudgetaire.getVersion() {
        return this.version;
    }
    
    public void TImputBudgetaire.setVersion(Integer version) {
        this.version = version;
    }
    
}
