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

import java.util.Date;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.apsadmin.system.ApsAdminSystemConstants;
import com.agiletec.apsadmin.system.BaseAction;

/**
 * Action per le operazioni sulle Card. Implementa le operazioni CRUD sulle schede.
 * @author E.Mezzano - E.Santoboni
 */
public class CardAction extends BaseAction {
	
	public String newCard() {
		try {
			this.setStrutsAction(ApsAdminSystemConstants.ADD);
		} catch (Throwable t) {
			ApsSystemUtils.logThrowable(t, this, "newCard");
			return FAILURE;
		}
		return SUCCESS;
	}
	
	public String edit() {
		try {
			this.setStrutsAction(ApsAdminSystemConstants.EDIT);
			this.valueForm();
		} catch (Throwable t) {
			ApsSystemUtils.logThrowable(t, this, "edit");
			return FAILURE;
		}
		return SUCCESS;
	}
	
	public String view() {
		try {
			this.valueForm();
		} catch (Throwable t) {
			ApsSystemUtils.logThrowable(t, this, "view");
			return FAILURE;
		}
		return SUCCESS;
	}
	
	private void valueForm() throws Throwable {
		Card card = this.getCardManager().getCard(this.getId());
		this.setId(card.getId());
		this.setHolder(card.getHolder());
		this.setDescr(card.getDescr());
		this.setDate(card.getDate());
		this.setNote(card.getNote());
	}
	
	public String delete() {
		try {
			this.getCardManager().deleteCard(this.getId());
		} catch (Throwable t) {
			ApsSystemUtils.logThrowable(t, this, "delete");
			return FAILURE;
		}
		return SUCCESS;
	}
	
	public String save() {
		try {
			Card card = this.createCard();
			int strutsAction = this.getStrutsAction();
			if (ApsAdminSystemConstants.ADD == strutsAction) {
				this.getCardManager().addCard(card);
			} else if (ApsAdminSystemConstants.EDIT == strutsAction) {
				this.getCardManager().updateCard(card);
			}
		} catch (Throwable t) {
			ApsSystemUtils.logThrowable(t, this, "save");
			return FAILURE;
		}
		return SUCCESS;
	}
	
	private Card createCard() {
		Card card = new Card();
		card.setId(this.getId());
		card.setHolder(this.getHolder());
		card.setDescr(this.getDescr());
		card.setDate(this.getDate());
		card.setNote(this.getNote());
		return card;
	}
	
	/**
	 * Identifica l'operazione corrente. Può valere {@link ApsAdminSystemConstants#ADD} nel caso di nuova scheda 
	 * o {@link ApsAdminSystemConstants.EDIT} nel caso di modifica di una scheda pre-esistente.
	 * @return L'operazione corrente.
	 */
	public int getStrutsAction() {
		return _strutsAction;
	}
	
	/**
	 * Imposta l'operazione corrente.
	 * @param strutsAction L'operazione corrente.
	 */
	public void setStrutsAction(int strutsAction) {
		this._strutsAction = strutsAction;
	}
	
	/**
	 * Restituisce l'identificativo della scheda.
	 * @return L'identificativo della scheda.
	 */
	public int getId() {
		return _id;
	}
	
	/**
	 * Imposta l'identificativo della scheda.
	 * @param id L'identificativo della scheda.
	 */
	public void setId(int id) {
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
	
	protected ICardManager getCardManager() {
		return _cardManager;
	}
	public void setCardManager(ICardManager cardManager) {
		this._cardManager = cardManager;
	}
	
	private int _strutsAction;
	private int _id;
	private String _holder;
	private String _descr;
	private Date _date;
	private String _note;
	
	private ICardManager _cardManager;
	
}