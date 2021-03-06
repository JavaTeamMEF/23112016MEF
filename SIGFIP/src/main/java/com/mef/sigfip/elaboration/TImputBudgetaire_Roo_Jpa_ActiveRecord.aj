// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration;

import com.mef.sigfip.elaboration.TImputBudgetaire;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TImputBudgetaire_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TImputBudgetaire.entityManager;
    
    public static final List<String> TImputBudgetaire.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager TImputBudgetaire.entityManager() {
        EntityManager em = new TImputBudgetaire().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TImputBudgetaire.countTImputBudgetaires() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TImputBudgetaire o", Long.class).getSingleResult();
    }
    
    public static List<TImputBudgetaire> TImputBudgetaire.findAllTImputBudgetaires() {
        return entityManager().createQuery("SELECT o FROM TImputBudgetaire o", TImputBudgetaire.class).getResultList();
    }
    
    public static List<TImputBudgetaire> TImputBudgetaire.findAllTImputBudgetaires(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TImputBudgetaire o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TImputBudgetaire.class).getResultList();
    }
    
    public static TImputBudgetaire TImputBudgetaire.findTImputBudgetaire(Long id) {
        if (id == null) return null;
        return entityManager().find(TImputBudgetaire.class, id);
    }
    
    public static List<TImputBudgetaire> TImputBudgetaire.findTImputBudgetaireEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TImputBudgetaire o", TImputBudgetaire.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TImputBudgetaire> TImputBudgetaire.findTImputBudgetaireEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TImputBudgetaire o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TImputBudgetaire.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TImputBudgetaire.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TImputBudgetaire.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TImputBudgetaire attached = TImputBudgetaire.findTImputBudgetaire(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TImputBudgetaire.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TImputBudgetaire.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TImputBudgetaire TImputBudgetaire.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TImputBudgetaire merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
