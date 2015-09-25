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

import java.util.Date;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.apsadmin.system.ApsAdminSystemConstants;
import com.agiletec.apsadmin.system.BaseAction;

/**
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
	
	public int getStrutsAction() {
		return _strutsAction;
	}
	public void setStrutsAction(int strutsAction) {
		this._strutsAction = strutsAction;
	}
	
	public int getId() {
		return _id;
	}
	public void setId(int id) {
		this._id = id;
	}
	
	public String getHolder() {
		return _holder;
	}
	public void setHolder(String holder) {
		this._holder = holder;
	}
	
	public String getDescr() {
		return _descr;
	}
	public void setDescr(String descr) {
		this._descr = descr;
	}
	
	public Date getDate() {
		return _date;
	}
	public void setDate(Date date) {
		this._date = date;
	}
	
	public String getNote() {
		return _note;
	}
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