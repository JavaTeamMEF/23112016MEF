// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mef.sigfip.elaboration;

import com.mef.sigfip.elaboration.TTypeService;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TTypeService_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TTypeService.entityManager;
    
    public static final List<String> TTypeService.fieldNames4OrderClauseFilter = java.util.Arrays.asList("lib_typ_serv");
    
    public static final EntityManager TTypeService.entityManager() {
        EntityManager em = new TTypeService().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TTypeService.countTTypeServices() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TTypeService o", Long.class).getSingleResult();
    }
    
    public static List<TTypeService> TTypeService.findAllTTypeServices() {
        return entityManager().createQuery("SELECT o FROM TTypeService o", TTypeService.class).getResultList();
    }
    
    public static List<TTypeService> TTypeService.findAllTTypeServices(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TTypeService o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TTypeService.class).getResultList();
    }
    
    public static TTypeService TTypeService.findTTypeService(Long id) {
        if (id == null) return null;
        return entityManager().find(TTypeService.class, id);
    }
    
    public static List<TTypeService> TTypeService.findTTypeServiceEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TTypeService o", TTypeService.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<TTypeService> TTypeService.findTTypeServiceEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM TTypeService o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, TTypeService.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TTypeService.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TTypeService.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TTypeService attached = TTypeService.findTTypeService(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TTypeService.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TTypeService.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TTypeService TTypeService.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TTypeService merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
