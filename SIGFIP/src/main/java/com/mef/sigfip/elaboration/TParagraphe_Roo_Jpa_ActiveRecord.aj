// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration;

import com.mef.sigfip.elaboration.TParagraphe;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TParagraphe_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TParagraphe.entityManager;
    
    public static final List<String> TParagraphe.fieldNames4OrderClauseFilter = java.util.Arrays.asList("lib_paragraphe");
    
    public static final EntityManager TParagraphe.entityManager() {
        EntityManager em = new TParagraphe().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TParagraphe.countTParagraphes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TParagraphe o", Long.class).getSingleResult();
    }
    
    public static List<TParagraphe> TParagraphe.findAllTParagraphes() {
        return entityManager().createQuery("SELECT o FROM TParagraphe o", TParagraphe.class).getResultList();
    }
    
    public static List<TParagraphe> TParagraphe.findAllTParagraphes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TParagraphe o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TParagraphe.class).getResultList();
    }
    
    public static TParagraphe TParagraphe.findTParagraphe(Long id) {
        if (id == null) return null;
        return entityManager().find(TParagraphe.class, id);
    }
    
    public static List<TParagraphe> TParagraphe.findTParagrapheEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TParagraphe o", TParagraphe.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TParagraphe> TParagraphe.findTParagrapheEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TParagraphe o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TParagraphe.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TParagraphe.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TParagraphe.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TParagraphe attached = TParagraphe.findTParagraphe(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TParagraphe.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TParagraphe.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TParagraphe TParagraphe.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TParagraphe merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
