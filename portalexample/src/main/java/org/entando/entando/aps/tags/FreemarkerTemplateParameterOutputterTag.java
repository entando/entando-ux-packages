/*
 * Copyright 2019-Present Entando Inc. (http://www.entando.com) All rights reserved.
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
package org.entando.entando.aps.tags;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import com.agiletec.aps.system.RequestContext;
import com.agiletec.aps.system.SystemConstants;

import freemarker.ext.servlet.AllHttpScopesHashModel;
import freemarker.template.TemplateModel;

import org.entando.entando.aps.system.services.controller.executor.ExecutorBeanContainer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author E.Santoboni
 */
public class FreemarkerTemplateParameterOutputterTag extends TagSupport {

    private static final Logger _logger = LoggerFactory.getLogger(FreemarkerTemplateParameterOutputterTag.class);

    private String var;

    @Override
    public int doStartTag() throws JspException {
        ServletRequest request = this.pageContext.getRequest();
        RequestContext reqCtx = (RequestContext) request.getAttribute(RequestContext.REQCTX);
        try {
            ExecutorBeanContainer ebc = (ExecutorBeanContainer) reqCtx.getExtraParam(SystemConstants.EXTRAPAR_EXECUTOR_BEAN_CONTAINER);
            TemplateModel templateModel = ebc.getTemplateModel();
            if (!(templateModel instanceof AllHttpScopesHashModel)) {
                return EVAL_BODY_INCLUDE;
            }
            Object object = ((AllHttpScopesHashModel) templateModel).get(this.getFrameParamName(reqCtx));
            if (null != object) {
                this.pageContext.setAttribute(this.getVar(), object);
            }
        } catch (Throwable t) {
            _logger.error("error in doStartTag", t);
            throw new JspException("Error during tag initialization", t);
        }
        return EVAL_BODY_INCLUDE;
    }

    private String getFrameParamName(RequestContext reqCtx) {
        Integer currentFrame = (Integer) reqCtx.getExtraParam(SystemConstants.EXTRAPAR_CURRENT_FRAME);
        return "frame_" + currentFrame.toString() + "_" + this.getVar();
    }

    @Override
    public void release() {
        this.setVar(null);
    }

    public String getVar() {
        return var;
    }

    public void setVar(String var) {
        this.var = var;
    }

}
