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

import java.util.List;

import com.agiletec.aps.system.exception.ApsSystemException;

/**
 * Interfaccia base per i servizi gestori delle schede.
 * @author E.Mezzano
 */
public interface ICardManager {
    
    /**
     * Restituisce la List delle Card.
     * @return Una List di Card.
     * @throws ApsSystemException In caso di errori in accesso al db.
     */
    public List<Card> getCards() throws ApsSystemException;
    
    /**
     * Restituisce la lista delle Card filtrate in base al titolare.
     * @param holder Il titolare.
     * @return La lista di Card.
     * @throws ApsSystemException In caso di errore.
     */
    public List<Card> searchCards(String holder) throws ApsSystemException;
    
    /**
     * Restituisce la Card di id dato.
     * @param id L'identificativo della Card.
     * @return La Card richiesta.
     * @throws ApsSystemException In caso di errore.
     */
    public Card getCard(Integer id) throws ApsSystemException;
    
    /**
     * Aggiunge una Card.
     * @param card La card da agiungere.
     * @throws ApsSystemException In caso di errore.
     */
    public void addCard(Card card) throws ApsSystemException;
    
    /**
     * Aggiorna una Card.
     * @param card La Card da aggiornare.
     * @throws ApsSystemException In caso di errore.
     */
    public void updateCard(Card card) throws ApsSystemException;
    
    /**
     * Cancella una Card.
     * @param id L'identificativo della Card da cancellare.
     * @throws ApsSystemException In caso di errore.
     */
    public void deleteCard(Integer id) throws ApsSystemException;
    
}