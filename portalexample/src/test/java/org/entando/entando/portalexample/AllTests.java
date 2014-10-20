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
package org.entando.entando.portalexample;

import junit.framework.Test;
import junit.framework.TestSuite;
import org.entando.entando.portalexample.aps.internalservlet.card.TestFrontCardFindingAction;
import org.entando.entando.portalexample.aps.system.services.card.TestCardDAO;
import org.entando.entando.portalexample.aps.system.services.card.TestCardManager;
import org.entando.entando.portalexample.apsadmin.card.TestCardAction;
import org.entando.entando.portalexample.apsadmin.card.TestCardFinderAction;

public class AllTests {
	
    public static Test suite() {
		TestSuite suite = new TestSuite("Test for portalexample");
		System.out.println("Test for portalexample");
		
		suite.addTestSuite(TestFrontCardFindingAction.class);
		
		suite.addTestSuite(TestCardDAO.class);
		suite.addTestSuite(TestCardManager.class);
		
		suite.addTestSuite(TestCardAction.class);
		suite.addTestSuite(TestCardFinderAction.class);
		
		return suite;
	}
    
}
