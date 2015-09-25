/*
 * Copyright 2015-Present Entando Inc. (http://www.entando.com) All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
package org.entando.entando.portalexample.aps.system.services.card;

import java.util.List;

/**
 * @author E.Mezzano
 */
public interface ICardDAO {
    
    public List<Card> loadCards();
	
    public List<Card> searchCards(String holder);
	
    public Card loadCard(Integer id);
	
    public void addCard(Card card);
	
    public void updateCard(Card card);
	
    public void deleteCard(Integer id);
    
}