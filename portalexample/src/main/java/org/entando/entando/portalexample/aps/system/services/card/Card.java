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

import java.util.Date;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author E.Santoboni - E.Mezzano
 */
@XmlRootElement(name = "card")
public class Card {
	
	public Integer getId() {
		return _id;
	}
	public void setId(Integer id) {
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
	
	private Integer _id;
	private String _holder;
	private String _descr;
	private Date _date;
	private String _note;
	
}
