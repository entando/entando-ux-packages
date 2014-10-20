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
import java.util.Properties;

import javax.ws.rs.core.Response;

import org.entando.entando.aps.system.services.api.IApiErrorCodes;
import org.entando.entando.aps.system.services.api.model.ApiException;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.aps.system.common.AbstractService;
import com.agiletec.aps.system.exception.ApsSystemException;
import com.agiletec.aps.system.services.keygenerator.IKeyGeneratorManager;

/**
 * Servizio gestore delle schede.
 * @author E.Mezzano - E.Santoboni
 */
public class CardManager extends AbstractService implements ICardManager {

	@Override
    public void init() throws Exception {
        ApsSystemUtils.getLogger().debug(this.getClass().getName() + ": initialized ");
    }

    public List<Card> getCardsForApi(Properties properties) throws Throwable {
        String holder = properties.getProperty("holder");
        return this.searchCards(holder);
    }

    public Card getCardForApi(Properties properties) throws Throwable {
        String idString = properties.getProperty("id");
        int id = 0;
        try {
            id = Integer.parseInt(idString);
        } catch (NumberFormatException e) {
            throw new ApiException(IApiErrorCodes.API_PARAMETER_VALIDATION_ERROR, "Invalid number format for 'id' parameter - '" + idString + "'", Response.Status.CONFLICT);
        }
        Card card = this.getCard(id);
        if (null == card) {
            throw new ApiException(IApiErrorCodes.API_VALIDATION_ERROR, "Card with id '" + idString + "' does not exist", Response.Status.CONFLICT);
        }
        return card;
    }

	@Override
    public List<Card> getCards() throws ApsSystemException {
        List<Card> cards = null;
        try {
            cards = this.getCardDAO().loadCards();
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "getCards");
            throw new ApsSystemException("Error loading cards", t);
        }
        return cards;
    }

	@Override
    public List<Card> searchCards(String holder) throws ApsSystemException {
        List<Card> cards = null;
        try {
            cards = this.getCardDAO().searchCards(holder);
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "searchCards");
            throw new ApsSystemException("Error searching cards", t);
        }
        return cards;
    }

	@Override
    public Card getCard(Integer id) throws ApsSystemException {
        Card card = null;
        try {
            card = this.getCardDAO().loadCard(id);
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "getCard");
            throw new ApsSystemException("Error searching card by id " + id, t);
        }
        return card;
    }

    public void addCardForApi(Card card) throws ApiException, ApsSystemException {
        if (null != this.getCard(card.getId())) {
            throw new ApiException(IApiErrorCodes.API_VALIDATION_ERROR, "Card with id " + card.getId() + " already exists", Response.Status.CONFLICT);
        }
        this.addCard(card);
    }

	@Override
    public void addCard(Card card) throws ApsSystemException {
        try {
        	int key = this.getKeyGeneratorManager().getUniqueKeyCurrentValue();
        	card.setId(key);
            this.getCardDAO().addCard(card);
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "addCard");
            throw new ApsSystemException("Error adding card", t);
        }
    }

    public void updateCardForApi(Card card) throws ApiException, ApsSystemException {
        if (null == this.getCard(card.getId())) {
            throw new ApiException(IApiErrorCodes.API_VALIDATION_ERROR, "Card with id " + card.getId() + " does not exist", Response.Status.CONFLICT);
        }
        this.updateCard(card);
    }

	@Override
    public void updateCard(Card card) throws ApsSystemException {
        try {
            this.getCardDAO().updateCard(card);
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "updateCard");
            throw new ApsSystemException("Error updating card", t);
        }
    }

    public void deleteCardForApi(Properties properties) throws Throwable {
        String id = properties.getProperty("id");
        int idInteger = 0;
        try {
            idInteger = Integer.parseInt(id);
        } catch (NumberFormatException e) {
            throw new ApiException(IApiErrorCodes.API_PARAMETER_VALIDATION_ERROR, "Invalid number format for 'id' parameter - '" + id + "'", Response.Status.CONFLICT);
        }
        this.deleteCard(idInteger);
    }

	@Override
    public void deleteCard(Integer id) throws ApsSystemException {
        try {
            this.getCardDAO().deleteCard(id);
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "deleteCard");
            throw new ApsSystemException("Error deleting card by id " + id, t);
        }
    }

    /**
     * Restituisce il dao delle schede.
     * @return Il dao delle schede.
     */
    protected ICardDAO getCardDAO() {
        return _cardDAO;
    }

    /**
     * Imposta il dao delle schede.
     * @param cardDAO Il dao delle schede.
     */
    public void setCardDAO(ICardDAO cardDAO) {
        this._cardDAO = cardDAO;
    }

    protected IKeyGeneratorManager getKeyGeneratorManager() {
		return _keyGeneratorManager;
	}
	public void setKeyGeneratorManager(IKeyGeneratorManager keyGeneratorManager) {
		this._keyGeneratorManager = keyGeneratorManager;
	}

	private ICardDAO _cardDAO;
    private IKeyGeneratorManager _keyGeneratorManager;

}