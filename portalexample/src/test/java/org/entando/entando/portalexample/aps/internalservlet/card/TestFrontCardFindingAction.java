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
package org.entando.entando.portalexample.aps.internalservlet.card;

import com.opensymphony.xwork2.Action;
import org.entando.entando.portalexample.aps.system.services.card.Card;
import org.entando.entando.portalexample.apsadmin.PortalexampleApsBaseTestCase;
import org.entando.entando.portalexample.apsadmin.card.CardFinderAction;

/**
 * @author E.Santoboni
 */
public class TestFrontCardFindingAction extends PortalexampleApsBaseTestCase {
	
	public void testListCard() throws Throwable {
		this.initAction("/do/FrontEnd/Card", "list");
		String result = this.executeAction();
		assertEquals(Action.SUCCESS, result);
		CardFinderAction action = (CardFinderAction) this.getAction();
		assertEquals(4, action.getCards().size());
	}
	
	public void testSearchCard_1() throws Throwable {
		this.initAction("/do/FrontEnd/Card", "search");
		this.addParameter("holder", "Marco");
		String result = this.executeAction();
		assertEquals(Action.SUCCESS, result);
		CardFinderAction action = (CardFinderAction) this.getAction();
		assertEquals(1, action.getCards().size());
	}
	
	public void testSearchCard_2() throws Throwable {
		this.initAction("/do/FrontEnd/Card", "search");
		this.addParameter("holder", "anc");
		String result = this.executeAction();
		assertEquals(Action.SUCCESS, result);
		CardFinderAction action = (CardFinderAction) this.getAction();
		assertEquals(1, action.getCards().size());
		Card card = action.getCards().get(0);
		assertEquals("Bianchi Marco", card.getHolder());
	}
	
}