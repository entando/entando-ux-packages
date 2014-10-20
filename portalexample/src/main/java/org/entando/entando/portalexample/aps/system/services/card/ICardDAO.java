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

/**
 * Interfaccia base per i Data Access Object degli oggetti Card.
 * @author E.Mezzano
 */
public interface ICardDAO {
    
    /**
     * Carica la List delle Card.
     * @return Una List di Card.
     */
    public List<Card> loadCards();

    /**
     * Carica la List delle Card filtrate in base al titolare.
     * @param holder Il testo su cui filtrare il campo titolare delle card.
     * @return Una List di Card.
     */
    public List<Card> searchCards(String holder);

    /**
     * Carica la Card di id dato.
     * @param id L'identificativo della Card.
     * @return La Card richiesta.
     */
    public Card loadCard(Integer id);

    /**
     * Aggiunge una Card.
     * @param card La card da agiungere.
     */
    public void addCard(Card card);

    /**
     * Aggiorna una Card.
     * @param card La Card da aggiornare.
     */
    public void updateCard(Card card);

    /**
     * Cancella una Card.
     * @param id L'identificativo della Card da cancellare.
     */
    public void deleteCard(Integer id);
    
}