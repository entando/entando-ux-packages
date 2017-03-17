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
package org.entando.entando.portalexample.apsadmin;

import com.agiletec.ConfigTestUtils;
import com.agiletec.apsadmin.ApsAdminBaseTestCase;
import java.util.Properties;
import org.entando.entando.portalexample.PortalexampleConfigUtils;

/**
 * @author E.Santoboni
 */
public class PortalexampleApsBaseTestCase extends ApsAdminBaseTestCase {
    
    @Override
    protected ConfigTestUtils getConfigUtils() {
        return new PortalexampleConfigUtils();
    }
    
    @Override
    protected void setInitParameters(Properties params) {
        params.setProperty("config", 
            "struts-default.xml," +
            "struts-plugin.xml," +
            "struts.xml," +
			"entando-struts-plugin.xml," +
            "japs-struts-plugin.xml," +
            "portalexample-struts-plugin.xml");
    }
    
}
