// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration;

import com.mef.sigfip.elaboration.TClasse;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TClasse_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TClasse.entityManager;
    
    public static final List<String> TClasse.fieldNames4OrderClauseFilter = java.util.Arrays.asList("lib_classe");
    
    public static final EntityManager TClasse.entityManager() {
        EntityManager em = new TClasse().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TClasse.countTClasses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TClasse o", Long.class).getSingleResult();
    }
    
    public static List<TClasse> TClasse.findAllTClasses() {
        return entityManager().createQuery("SELECT o FROM TClasse o", TClasse.class).getResultList();
    }
    
    public static List<TClasse> TClasse.findAllTClasses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TClasse o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TClasse.class).getResultList();
    }
    
    public static TClasse TClasse.findTClasse(Long id) {
        if (id == null) return null;
        return entityManager().find(TClasse.class, id);
    }
    
    public static List<TClasse> TClasse.findTClasseEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TClasse o", TClasse.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TClasse> TClasse.findTClasseEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TClasse o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TClasse.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TClasse.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TClasse.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TClasse attached = TClasse.findTClasse(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TClasse.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TClasse.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TClasse TClasse.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TClasse merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}