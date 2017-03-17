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
package org.entando.entando.portalexample;

import com.agiletec.ConfigTestUtils;

/**
 * @author E.Santoboni
 */
public class PortalexampleConfigUtils extends ConfigTestUtils {
    
    @Override
    protected String[] getSpringConfigFilePaths() {
    	String[] filePaths = new String[8];
        filePaths[0] = "classpath:spring/propertyPlaceholder.xml";
		filePaths[1] = "classpath:spring/baseSystemConfig.xml";
		filePaths[2] = "classpath*:spring/aps/**/**.xml";
		filePaths[3] = "classpath*:spring/apsadmin/**/**.xml";
		filePaths[4] = "classpath*:spring/plugins/**/aps/**/**.xml";
		filePaths[5] = "classpath*:spring/plugins/**/apsadmin/**/**.xml";
        filePaths[6] = "classpath*:spring/portalexample/aps/**/**.xml";
		filePaths[7] = "classpath*:spring/portalexample/apsadmin/**/**.xml";
        return filePaths;
    }
    
}
