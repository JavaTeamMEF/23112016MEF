// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration;

import com.mef.sigfip.elaboration.TGestion;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TGestion_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TGestion.entityManager;
    
    public static final List<String> TGestion.fieldNames4OrderClauseFilter = java.util.Arrays.asList("type_gestion");
    
    public static final EntityManager TGestion.entityManager() {
        EntityManager em = new TGestion().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TGestion.countTGestions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TGestion o", Long.class).getSingleResult();
    }
    
    public static List<TGestion> TGestion.findAllTGestions() {
        return entityManager().createQuery("SELECT o FROM TGestion o", TGestion.class).getResultList();
    }
    
    public static List<TGestion> TGestion.findAllTGestions(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TGestion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TGestion.class).getResultList();
    }
    
    public static TGestion TGestion.findTGestion(Long id) {
        if (id == null) return null;
        return entityManager().find(TGestion.class, id);
    }
    
    public static List<TGestion> TGestion.findTGestionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TGestion o", TGestion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TGestion> TGestion.findTGestionEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TGestion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TGestion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TGestion.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TGestion.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TGestion attached = TGestion.findTGestion(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TGestion.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TGestion.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TGestion TGestion.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TGestion merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
