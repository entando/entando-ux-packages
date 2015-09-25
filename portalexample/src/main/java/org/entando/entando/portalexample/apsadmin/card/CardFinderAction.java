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
package org.entando.entando.portalexample.apsadmin.card;

import org.entando.entando.portalexample.aps.system.services.card.Card;
import org.entando.entando.portalexample.aps.system.services.card.ICardManager;

import java.util.List;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.apsadmin.system.BaseAction;

/**
 * @author E.Mezzano - E.Santoboni
 */
public class CardFinderAction extends BaseAction {
	
	public List<Card> getCards() {
		List<Card> cards = null;
		try {
			String holder = this.getHolder();
			cards = this.getCardManager().searchCards(holder);
		} catch (Throwable t) {
			ApsSystemUtils.logThrowable(t, this, "getCards");
			throw new RuntimeException("Errore in ricerca cards", t);
		}
		return cards;
	}
	
	public String getHolder() {
		return _holder;
	}
	public void setHolder(String holder) {
		this._holder = holder;
	}
	
	protected ICardManager getCardManager() {
		return _cardManager;
	}
	public void setCardManager(ICardManager cardManager) {
		this._cardManager = cardManager;
	}
	
	private String _holder;
	private ICardManager _cardManager;
	
}
