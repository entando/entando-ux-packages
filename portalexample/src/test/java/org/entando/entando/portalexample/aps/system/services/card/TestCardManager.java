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

import java.util.Date;
import java.util.List;
import org.entando.entando.portalexample.aps.PortalexampleBaseTestCase;
import org.entando.entando.portalexample.aps.system.DemoSystemConstants;

/**
 * Classe di test per il servizio gestore delle schede.
 * @author E.Mezzano
 */
public class TestCardManager extends PortalexampleBaseTestCase {
	
        @Override
	protected void setUp() throws Exception {
		super.setUp();
		this.init();
	}
	
	/**
	 * Esegue il test sul corretto funzionamento del metodo 'getCards'.
	 */
	public void testGetCards() throws Throwable {
		List<Card> cards = this._cardManager.getCards();
		assertEquals(4, cards.size());
	}
	
	/**
	 * Esegue il test sul corretto funzionamento del metodo 'searchCards'.
	 */
	public void testSearchCards() throws Throwable {
		List<Card> cards = this._cardManager.searchCards("Nicola");
		assertEquals(1, cards.size());
		Card card = (Card) cards.get(0);
		String titolare = card.getHolder();
		assertTrue(titolare.equals("Verdi Nicola"));
	}
	
	/**
	 * Esegue il test sul corretto funzionamento del metodo 'getCard'.
	 */
	public void testGetCard() throws Throwable {
		Card card = this._cardManager.getCard(1);
		assertEquals("Bianchi Marco", card.getHolder());
		card = this._cardManager.getCard(2);
		assertEquals("Rossi Carla", card.getHolder());
		card = this._cardManager.getCard(3);
		assertEquals("Verdi Nicola", card.getHolder());
	}
	
	/**
	 * Esegue il test sul corretto funzionamento dei metodi 'addCard' e 'deleteCard' per l'aggiunta e la cancellazione di una scheda.
	 */
	public void testAddDeleteCard() throws Throwable {
		assertNull(this._cardManager.getCard(70));
		Card newCard = new Card();
		newCard.setId(70);
		newCard.setHolder("Goofy Goof");
		newCard.setDescr("I'm Mickey Mouse's best friend");
		newCard.setDate(new Date());
		newCard.setNote("Annotations");
		try {
			this._cardManager.addCard(newCard);
			List<Card> cards = this._cardManager.searchCards("Goofy");
			assertEquals(1, cards.size());
			Card card = cards.get(0);
			assertEquals("Goofy Goof", card.getHolder());
			assertEquals("I'm Mickey Mouse's best friend", card.getDescr());
			assertEquals("Annotations", card.getNote());
		} catch (Throwable t) {
			throw t;
		} finally {
			List<Card> cards = this._cardManager.searchCards("Goofy");
			if (cards.size()==1) {
				Card card = cards.get(0);
				this._cardManager.deleteCard(card.getId());
				assertNull(this._cardManager.getCard(card.getId()));
			}
		}
	}
	
	/**
	 * Esegue il test sul corretto funzionamento del metodo 'updateCard'.
	 */
	public void testUpdateCard() throws Throwable {
		Card card = this._cardManager.getCard(3);
		String oldTitolare = card.getHolder();
		String oldDescrizione = card.getDescr();
		Date oldDataRilascio = card.getDate();
		String oldNote= card.getNote();
		card.setHolder("Verdi Nicola Luca");
		card.setDescr("Main Project Manager");
		card.setDate(new Date());
		card.setNote("with Verdi Nicola");
		
		this._cardManager.updateCard(card);
		
		Card updatedCard = this._cardManager.getCard(3);
		assertEquals("Verdi Nicola Luca", updatedCard.getHolder());
		assertEquals("Main Project Manager", updatedCard.getDescr());
		assertEquals("with Verdi Nicola", updatedCard.getNote());
		
		card.setHolder(oldTitolare);
		card.setDescr(oldDescrizione);
		card.setDate(oldDataRilascio);
		card.setNote(oldNote);
		
		this._cardManager.updateCard(card);
		
		updatedCard = this._cardManager.getCard(3);
		assertEquals("Verdi Nicola", updatedCard.getHolder());
		assertEquals("Fair", updatedCard.getDescr());
		assertEquals("Lorem ipsum.", updatedCard.getNote());
	}
	
	/**
	 * Esegue le operazioni di inizializzazione della classe di test.
	 */
	private void init() {
		this._cardManager = (ICardManager) this.getService(DemoSystemConstants.CARD_MANAGER);
	}
	
	private ICardManager _cardManager;
	
}