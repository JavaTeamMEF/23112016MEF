// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration;

import com.mef.sigfip.elaboration.TTypeBudget;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect TTypeBudget_Roo_Jpa_Entity {
    
    declare @type: TTypeBudget: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long TTypeBudget.id;
    
    @Version
    @Column(name = "version")
    private Integer TTypeBudget.version;
    
    public Long TTypeBudget.getId() {
        return this.id;
    }
    
    public void TTypeBudget.setId(Long id) {
        this.id = id;
    }
    
    public Integer TTypeBudget.getVersion() {
        return this.version;
    }
    
    public void TTypeBudget.setVersion(Integer version) {
        this.version = version;
    }
    
}
