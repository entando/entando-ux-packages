/*
*
* Copyright 2013 Entando S.r.l. (http://www.entando.com) All rights reserved.
*
* This file is part of Entando software.
* Entando is a free software; 
* you can redistribute it and/or modify it
* under the terms of the GNU General Public License (GPL) as published by the Free Software Foundation; version 2.
* 
* See the file License for the specific language governing permissions   
* and limitations under the License
* 
* 
* 
* Copyright 2013 Entando S.r.l. (http://www.entando.com) All rights reserved.
*
*/
package org.entando.entando.portalexample.aps.system.services.card;

import java.util.Date;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Rappresentazione di una scheda.
 * @author E.Santoboni - E.Mezzano
 */
@XmlRootElement(name = "card")
public class Card {
    
    /**
     * Restituisce l'identificativo della scheda.
     * @return L'identificativo della scheda.
     */
    public Integer getId() {
        return _id;
    }
    
    /**
     * Imposta l'identificativo della scheda.
     * @param id L'identificativo della scheda.
     */
    public void setId(Integer id) {
        this._id = id;
    }
    
    /**
     * Restituisce il titolare della scheda.
     * @return Il titolare della scheda.
     */
    public String getHolder() {
        return _holder;
    }
    
    /**
     * Imposta il titolare della scheda.
     * @param holder Il titolare della scheda.
     */
    public void setHolder(String holder) {
        this._holder = holder;
    }
    
    /**
     * Restituisce la descrizione della scheda.
     * @return La descrizione della scheda.
     */
    public String getDescr() {
        return _descr;
    }
    
    /**
     * Imposta la descrizione della scheda.
     * @param descr La descrizione della scheda.
     */
    public void setDescr(String descr) {
        this._descr = descr;
    }
    
    /**
     * Restituisce la data di rilascio della scheda.
     * @return La data di rilascio della scheda.
     */
    public Date getDate() {
        return _date;
    }
    
    /**
     * Imposta la data di rilascio della scheda.
     * @param date La data di rilascio della scheda.
     */
    public void setDate(Date date) {
        this._date = date;
    }
    
    /**
     * Restituisce le note della scheda.
     * @return Le note della scheda.
     */
    public String getNote() {
        return _note;
    }
    
    /**
     * Imposta le note della scheda.
     * @param note Le note della scheda.
     */
    public void setNote(String note) {
        this._note = note;
    }
    
    private Integer _id;
    private String _holder;
    private String _descr;
    private Date _date;
    private String _note;
    
}