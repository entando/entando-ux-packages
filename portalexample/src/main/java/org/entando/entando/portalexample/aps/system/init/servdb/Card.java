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
package org.entando.entando.portalexample.aps.system.init.servdb;

import com.j256.ormlite.field.DataType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.util.Date;

/**
 * @author E.Santoboni
 */
@DatabaseTable(tableName = Card.TABLE_NAME)
public class Card {
	
	public Card() {}
	
	@DatabaseField(columnName = "id", 
			dataType = DataType.INTEGER, 
			canBeNull = false, id = true)
	private int _id;
	
	@DatabaseField(columnName = "holder", 
			dataType = DataType.STRING, 
			width = 40, 
			canBeNull = false)
    private String _holder;
	
	@DatabaseField(columnName = "description", 
			dataType = DataType.STRING, 
			width = 100, 
			canBeNull = false)
    private String _descr;
	
	@DatabaseField(columnName = "date", 
			dataType = DataType.DATE, 
			canBeNull = true)
    private Date _date;
	
	@DatabaseField(columnName = "note", 
			dataType = DataType.LONG_STRING, 
			canBeNull = true)
    private String _note;
	
	public static final String TABLE_NAME = "portalexample_cards";
	
}