// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration;

import com.mef.sigfip.elaboration.TAction;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect TAction_Roo_Jpa_Entity {
    
    declare @type: TAction: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long TAction.id;
    
    @Version
    @Column(name = "version")
    private Integer TAction.version;
    
    public Long TAction.getId() {
        return this.id;
    }
    
    public void TAction.setId(Long id) {
        this.id = id;
    }
    
    public Integer TAction.getVersion() {
        return this.version;
    }
    
    public void TAction.setVersion(Integer version) {
        this.version = version;
    }
    
}
