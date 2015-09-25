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
package org.entando.entando.portalexample.aps.tags;

import org.entando.entando.portalexample.aps.system.DemoSystemConstants;
import org.entando.entando.portalexample.aps.system.services.card.Card;
import org.entando.entando.portalexample.aps.system.services.card.ICardManager;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.aps.util.ApsWebApplicationUtils;

/**
 * @author E.Santoboni
 */
public class CardListTag extends TagSupport {
	
	@Override
	public int doStartTag() throws JspException {
		ServletRequest request =  this.pageContext.getRequest();
		try {
			String holder = request.getParameter("holder");
			ICardManager cardManager = (ICardManager) ApsWebApplicationUtils.getBean(DemoSystemConstants.CARD_MANAGER, this.pageContext);
			List<Card> cards = cardManager.searchCards(holder);
			this.pageContext.setAttribute(this.getListName(), cards);
			if (null != holder) {
				this.pageContext.setAttribute("holder", holder);
			}
		} catch (Throwable e) {
			ApsSystemUtils.logThrowable(e, this, "doStartTag");
			throw new JspException("Errore in doStartTag", e);
		}
		return super.doStartTag();
	}
	
	@Override
	public void release() {
		this._listName = null;
	}
	
	public String getListName() {
		return _listName;
	}
	public void setListName(String listName) {
		this._listName = listName;
	}
	
	private String _listName;
	
}
