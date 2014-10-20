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
package org.entando.entando.portalexample.apsadmin.card;

import org.entando.entando.portalexample.aps.system.services.card.Card;
import org.entando.entando.portalexample.aps.system.services.card.ICardManager;

import java.util.List;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.apsadmin.system.BaseAction;

/**
 * Classe Action per la gestione della ricerca e visualizzazione lista card.
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
