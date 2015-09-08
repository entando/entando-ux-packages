/*
 * Copyright 2013-Present Entando Corporation (http://www.entando.com) All rights reserved.
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
package org.entando.entando.aps.system.common.entity.model.attribute;

import com.agiletec.aps.system.common.entity.model.attribute.DefaultJAXBAttributeType;
import com.agiletec.aps.system.common.entity.model.attribute.JAXBEnumeratorAttributeType;
import com.agiletec.aps.system.common.entity.model.attribute.MonoTextAttribute;
import java.util.List;

import org.jdom.CDATA;
import org.jdom.Element;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.agiletec.aps.system.common.entity.model.attribute.util.EnumeratorAttributeItemsExtractor;
import com.agiletec.aps.system.exception.ApsSystemException;
import com.agiletec.aps.util.SelectItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.beanutils.BeanComparator;
import org.apache.commons.lang.StringUtils;
import org.entando.entando.aps.system.common.entity.model.attribute.util.EnumeratorMapAttributeItemsExtractor;

/**
 * This class describes an "EnumeratorMap" Attribute.
 * @author E.Santoboni
 */
public class EnumeratorMapAttribute extends MonoTextAttribute {

	private static final Logger _logger =  LoggerFactory.getLogger(EnumeratorMapAttribute.class);
	
	@Override
    public Object getAttributePrototype() {
        EnumeratorMapAttribute prototype = (EnumeratorMapAttribute) super.getAttributePrototype();
        prototype.setItems(this.getItems());
        prototype.setStaticItems(this.getStaticItems());
        prototype.setExtractorBeanName(this.getExtractorBeanName());
        prototype.setCustomSeparator(this.getCustomSeparator());
		prototype.setMap(this.getMap()); //extra for enumeratorMap
        return prototype;
    }
    
	//Equals than enumerator
    @Override
    public void setAttributeConfig(Element attributeElement) throws ApsSystemException {
        super.setAttributeConfig(attributeElement);
        String separator = this.extractXmlAttribute(attributeElement, "separator", false);
        if (null == separator || separator.trim().length() == 0) {
            separator = DEFAULT_ITEM_SEPARATOR;
        }
        this.setCustomSeparator(separator);
        String text = attributeElement.getText();
        if (null != text) {
            this.setStaticItems(text.trim());
        }
        String extractorBeanName = this.extractXmlAttribute(attributeElement, "extractorBean", false);
        this.setExtractorBeanName(extractorBeanName);
        this.initItems();
    }
	
    protected void initItems() {
        if (null != this.getStaticItems() && this.getStaticItems().trim().length() > 0) {
			this.setItems(this.extractStaticItems());
        }
        if (null != this.getExtractorBeanName()) {
            try {
                EnumeratorMapAttributeItemsExtractor extractor = (EnumeratorMapAttributeItemsExtractor) this.getBeanFactory().getBean(this.getExtractorBeanName(), EnumeratorAttributeItemsExtractor.class);
                if (null != extractor) {
                    List<SelectItem> items = extractor.getItems();
                    if (items != null && items.size() > 0) {
                        this.addExtractedItems(items);
                    }
                }
            } catch (Throwable t) {
            	_logger.error("Error while extract items from bean extractor '{}'", this.getExtractorBeanName(), t);
            }
        }
        if (null != this.getItems()) {
            SelectItem[] items = new SelectItem[this.getItems().length];
            for (int i = 0; i < this.getItems().length; i++) {
                if (null != this.getItems()[i]) {
                    items[i] = this.getItems()[i];
                }
            }
            this.setItems(items);
        }
		if (null != this.getItems()) {
			for (int i = 0; i < this.getItems().length; i++) {
				if (null != this.getItems()[i]) {
                    SelectItem item = this.getItems()[i];
					this.getMap().put(item.getKey(), item.getValue());
                }
            }
		}
    }
    
	//Equals than enumerator
    @Override
    public Element getJDOMConfigElement() {
        Element configElement = super.getJDOMConfigElement();
        this.setConfig(configElement);
        return configElement;
    }
    
	//Equals than enumerator
    private void setConfig(Element configElement) {
        if (null != this.getStaticItems()) {
            CDATA cdata = new CDATA(this.getStaticItems());
            configElement.addContent(cdata);
        }
        if (null != this.getExtractorBeanName()) {
            configElement.setAttribute("extractorBean", this.getExtractorBeanName());
        }
        if (null != this.getCustomSeparator()) {
            configElement.setAttribute("separator", this.getCustomSeparator());
        }
    }
    
    private void addExtractedItems(List<SelectItem> items) {
        SelectItem[] values = null;
        if (null == this.getItems() || this.getItems().length == 0) {
            values = new SelectItem[items.size()];
            for (int i = 0; i < items.size(); i++) {
                SelectItem item = items.get(i);
                values[i] = item;
            }
        } else {
            values = new SelectItem[this.getItems().length + items.size()];
            for (int i = 0; i < this.getItems().length; i++) {
                SelectItem item = this.getItems()[i];
                values[i] = item;
            }
            for (int i = 0; i < items.size(); i++) {
                SelectItem item = items.get(i);
                values[i + this.getItems().length] = item;
            }
        }
        this.setItems(values);
    }
	
	private SelectItem[] extractStaticItems() {
		List<SelectItem> items = new ArrayList<SelectItem>();
		if (!StringUtils.isEmpty(this.getStaticItems())) {
			String[] entries = this.getStaticItems().split(this.getCustomSeparator());
			for (String entry : entries) {
				if (!StringUtils.isEmpty(entry) && entry.contains(DEFAULT_KEY_VALUE_SEPARATOR)) {
					String[] keyValue = entry.split(DEFAULT_KEY_VALUE_SEPARATOR);
					items.add(new SelectItem(keyValue[0], keyValue[1]));
				}
			}
		}
		BeanComparator c = new BeanComparator("value");
		Collections.sort(items, c);
		SelectItem[] array = new SelectItem[items.size()];
		for (int i = 0; i < items.size(); i++) {
			array[i] = items.get(i);
		}
		return array;
	}
    
	//Equals than enumerator
    @Override
    public JAXBEnumeratorAttributeType getJAXBAttributeType() {
        JAXBEnumeratorAttributeType jaxbAttribute = (JAXBEnumeratorAttributeType) super.getJAXBAttributeType();
        jaxbAttribute.setCustomSeparator(this.getCustomSeparator());
        jaxbAttribute.setExtractorBeanName(this.getExtractorBeanName());
        jaxbAttribute.setStaticItems(this.getStaticItems());
        return jaxbAttribute;
    }
	
	public String getMapKey() {
		return super.getText();
	}
	public String getMapValue() {
		String key = this.getMapKey();
		if (StringUtils.isEmpty(key)) {
			return key;
		}
		String value = this.getMap().get(key);
		if (StringUtils.isEmpty(value)) {
			return "";
		}
		return value;
	}
    
	//Equals than enumerator
    @Override
    protected DefaultJAXBAttributeType getJAXBAttributeTypeInstance() {
        return new JAXBEnumeratorAttributeType();
    }
	
    public SelectItem[] getItems() {
        return _items;
    }
    public void setItems(SelectItem[] items) {
        this._items = items;
    }

	protected Map<String, String> getMap() {
		return _map;
	}
	protected void setMap(Map<String, String> map) {
		this._map = map;
	}
    
	//Equals than enumerator - start
    public String getStaticItems() {
        return _staticItems;
    }
    public void setStaticItems(String staticItems) {
        this._staticItems = staticItems;
    }
    
    public String getExtractorBeanName() {
        return _extractorBeanName;
    }
    public void setExtractorBeanName(String extractorBeanName) {
        this._extractorBeanName = extractorBeanName;
    }
    
    public String getCustomSeparator() {
        if (null == this._customSeparator) {
            return DEFAULT_ITEM_SEPARATOR;
        }
        return _customSeparator;
    }
    public void setCustomSeparator(String customSeparator) {
        this._customSeparator = customSeparator;
    }
	//Equals than enumerator - end
    
    private SelectItem[] _items;
    private Map<String, String> _map = new HashMap<String, String>();
    private String _staticItems;
    private String _extractorBeanName;
    private String _customSeparator;
    private final String DEFAULT_ITEM_SEPARATOR = ",";
    private final String DEFAULT_KEY_VALUE_SEPARATOR = "=";
	
}