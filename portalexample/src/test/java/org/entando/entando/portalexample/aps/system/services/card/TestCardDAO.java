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
import java.util.List;

import javax.sql.DataSource;
import org.entando.entando.portalexample.aps.PortalexampleBaseTestCase;

/**
 * @author E.Mezzano
 */
public class TestCardDAO extends PortalexampleBaseTestCase {
	
    @Override
	protected void setUp() throws Exception {
		super.setUp();
		this.init();
	}
	
	public void testLoadCards() {
		List<Card> cards = this._cardDAO.loadCards();
		assertEquals(4, cards.size());
	}
	
	public void testSearchCards() {
		List<Card> cards = this._cardDAO.searchCards("anch");
		assertEquals(1, cards.size());
		Card card = (Card) cards.get(0);
		String titolare = card.getHolder();
		assertTrue(titolare.equals("Bianchi Marco"));
	}
	
	public void testLoadCard() {
		Card card = this._cardDAO.loadCard(1);
		assertEquals("Bianchi Marco", card.getHolder());
		card = this._cardDAO.loadCard(2);
		assertEquals("Rossi Carla", card.getHolder());
		card = this._cardDAO.loadCard(3);
		assertEquals("Verdi Nicola", card.getHolder());
	}
	
	public void testAddDeleteCard() throws Exception {
		assertNull(this._cardDAO.loadCard(20));
		Card newCard = new Card();
		newCard.setId(20);
		try {
			newCard.setHolder("Goofy Goof");
			newCard.setDescr("I'm Mickey Mouse's best friend");
			newCard.setDate(new Date());
			newCard.setNote("Annotations");
			this._cardDAO.addCard(newCard);
			Card card = this._cardDAO.loadCard(20);
			assertEquals("Goofy Goof", card.getHolder());
			assertEquals("I'm Mickey Mouse's best friend", card.getDescr());
			assertEquals("Annotations", card.getNote());
		} catch (Exception e) {
			throw e;
		} finally {
			this._cardDAO.deleteCard(20);
		}
		assertNull(this._cardDAO.loadCard(20));
	}
	
	public void testUpdateCard() {
		Card card = this._cardDAO.loadCard(2);
		String oldTitolare = card.getHolder();
		String oldDescrizione = card.getDescr();
		Date oldDataRilascio = card.getDate();
		String oldNote = card.getNote();
		card.setHolder("Marco Rossi");
		card.setDescr("Main Project Manager");
		card.setDate(new Date());
		card.setNote("with Walter Bianchi");
		
		this._cardDAO.updateCard(card);
		
		Card updatedCard = this._cardDAO.loadCard(2);
		assertEquals("Marco Rossi", updatedCard.getHolder());
		assertEquals("Main Project Manager", updatedCard.getDescr());
		assertEquals("with Walter Bianchi", updatedCard.getNote());
		
		card.setHolder(oldTitolare);
		card.setDescr(oldDescrizione);
		card.setDate(oldDataRilascio);
		card.setNote(oldNote);
		
		this._cardDAO.updateCard(card);
		
		updatedCard = this._cardDAO.loadCard(2);
		assertEquals("Rossi Carla", updatedCard.getHolder());
		assertEquals("Fair", updatedCard.getDescr());
		assertNull(updatedCard.getNote());
	}
	
	private void init() {
		DataSource dataSource = (DataSource) this.getApplicationContext().getBean("servDataSource");
		CardDAO cardDAO = new CardDAO();
		cardDAO.setDataSource(dataSource);
		this._cardDAO = cardDAO;
	}
	
	private ICardDAO _cardDAO;
	
}