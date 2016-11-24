// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration;

import com.mef.sigfip.elaboration.TNumOrdreServ;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TNumOrdreServ_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TNumOrdreServ.entityManager;
    
    public static final List<String> TNumOrdreServ.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager TNumOrdreServ.entityManager() {
        EntityManager em = new TNumOrdreServ().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TNumOrdreServ.countTNumOrdreServs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TNumOrdreServ o", Long.class).getSingleResult();
    }
    
    public static List<TNumOrdreServ> TNumOrdreServ.findAllTNumOrdreServs() {
        return entityManager().createQuery("SELECT o FROM TNumOrdreServ o", TNumOrdreServ.class).getResultList();
    }
    
    public static List<TNumOrdreServ> TNumOrdreServ.findAllTNumOrdreServs(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TNumOrdreServ o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TNumOrdreServ.class).getResultList();
    }
    
    public static TNumOrdreServ TNumOrdreServ.findTNumOrdreServ(Long id) {
        if (id == null) return null;
        return entityManager().find(TNumOrdreServ.class, id);
    }
    
    public static List<TNumOrdreServ> TNumOrdreServ.findTNumOrdreServEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TNumOrdreServ o", TNumOrdreServ.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TNumOrdreServ> TNumOrdreServ.findTNumOrdreServEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TNumOrdreServ o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TNumOrdreServ.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TNumOrdreServ.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TNumOrdreServ.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TNumOrdreServ attached = TNumOrdreServ.findTNumOrdreServ(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TNumOrdreServ.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TNumOrdreServ.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TNumOrdreServ TNumOrdreServ.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TNumOrdreServ merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}