<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="wpsa" uri="/apsadmin-core" %>
<%@ taglib prefix="wpsf" uri="/apsadmin-form" %>
<ol class="breadcrumb page-tabs-header breadcrumb-position">
    <li><s:text name="breadcrumb.integrations"/></li>
    <li><s:text name="breadcrumb.integrations.components"/></li>
    <li><a href="<s:url action="list" />"><s:text name="title.cardManagement" /></a></li>
    <li class="page-title-container">
        <s:if test="getStrutsAction() == 1">
            <s:text name="label.add" />
        </s:if>
        <s:if test="getStrutsAction() == 2">
            <s:text name="label.new" />
        </s:if>
    </li>
</ol>
<h1 class="page-title-container">
    <s:if test="getStrutsAction() == 1">
        <s:text name="label.add" />
    </s:if>
    <s:if test="getStrutsAction() == 2">
        <s:text name="label.new" />
    </s:if>
    <span class="pull-right">
        <a tabindex="0" role="button" data-toggle="popover" data-trigger="focus" data-html="true" title="" data-content="<s:text name="card.intro.html" />" data-placement="left" data-original-title="">
            <i class="fa fa-question-circle-o" aria-hidden="true">
            </i>
        </a>
    </span>
</h1>
<div class="text-right">
    <div class="form-group-separator"></div>
</div>
<br>

<div>
    <s:form action="save" cssClass="form-horizontal">
        <s:if test="hasFieldErrors()">
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                    <span class="pficon pficon-close"></span>
                </button>
                <span class="pficon pficon-error-circle-o"></span>
                <strong><s:text name="message.title.FieldErrors" /></strong>
            </div>
        </s:if>
        <s:if test="hasActionErrors()">
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                    <span class="pficon pficon-close"></span>
                </button>
                <span class="pficon pficon-error-circle-o"></span>
                <strong><s:text name="message.title.ActionErrors" /></strong>
                <ul class="margin-base-top">
                    <s:iterator value="actionErrors">
                        <li><s:property escapeHtml="false" /></li>
                        </s:iterator>
                </ul>
            </div>
        </s:if>
        <p class="noscreen">
            <wpsf:hidden name="strutsAction" />
            <s:if test="getStrutsAction() == 2">
                <wpsf:hidden name="id" />
            </s:if>
        </p>
        <%-- holder --%>
        <s:set var="currentFieldErrorsVar" value="%{fieldErrors['holder']}" />
        <s:set var="currentFieldHasFieldErrorVar" value="#currentFieldErrorsVar != null && !#currentFieldErrorsVar.isEmpty()" />
        <s:set var="controlGroupErrorClassVar" value="%{#currentFieldHasFieldErrorVar ? ' has-error' : ''}" />
        <div class="form-group<s:property value="#controlGroupErrorClassVar" />">
            <label class="col-sm-2 control-label" class="col-sm-2 control-label"for="holder"><s:text name="label.cardHolder" /></label>
            <div class="col-xs-10">
                <s:textfield name="holder" id="holder" cssClass="form-control" />
                <s:if test="#currentFieldHasFieldErrorVar">
                    <span class="text-danger padding-small-vertical"><s:iterator value="#currentFieldErrorsVar"><s:property />&#32;</s:iterator></span>
                </s:if>
            </div>
        </div>
        <%-- description --%>
        <s:set var="currentFieldErrorsVar" value="%{fieldErrors['descr']}" />
        <s:set var="currentFieldHasFieldErrorVar" value="#currentFieldErrorsVar != null && !#currentFieldErrorsVar.isEmpty()" />
        <s:set var="controlGroupErrorClassVar" value="%{#currentFieldHasFieldErrorVar ? ' has-error' : ''}" />
        <div class="form-group<s:property value="#controlGroupErrorClassVar" />">
            <label class="col-sm-2 control-label" for="descr"><s:text name="label.cardDescr" /></label>
            <div class="col-xs-10">
                <s:textfield name="descr" id="descr" cssClass="form-control" />
                <s:if test="#currentFieldHasFieldErrorVar">
                    <span class="text-danger padding-small-vertical"><s:iterator value="#currentFieldErrorsVar"><s:property />&#32;</s:iterator></span>
                </s:if>
            </div>
        </div>
        <%-- date --%>
        <s:set var="currentFieldErrorsVar" value="%{fieldErrors['date']}" />
        <s:set var="currentFieldHasFieldErrorVar" value="#currentFieldErrorsVar != null && !#currentFieldErrorsVar.isEmpty()" />
        <s:set var="controlGroupErrorClassVar" value="%{#currentFieldHasFieldErrorVar ? ' has-error' : ''}" />
        <div class="form-group<s:property value="#controlGroupErrorClassVar" />">
            <label class="col-sm-2 control-label" for="date"><s:text name="label.cardDate" /></label>
            <div class="col-xs-10">
                <s:textfield name="date" id="date" cssClass="form-control datepicker" placeholder="dd/mm/yyyy" />
                <s:if test="#currentFieldHasFieldErrorVar">
                    <span class="text-danger padding-small-vertical"><s:iterator value="#currentFieldErrorsVar"><s:property />&#32;</s:iterator></span>
                </s:if>
            </div>
        </div>
        <%-- note --%>
        <s:set var="currentFieldErrorsVar" value="%{fieldErrors['note']}" />
        <s:set var="currentFieldHasFieldErrorVar" value="#currentFieldErrorsVar != null && !#currentFieldErrorsVar.isEmpty()" />
        <s:set var="controlGroupErrorClassVar" value="%{#currentFieldHasFieldErrorVar ? ' has-error' : ''}" />
        <div class="form-group<s:property value="#controlGroupErrorClassVar" />">
            <label class="col-sm-2 control-label" for="note"><s:text name="label.cardNote" /></label>
            <div class="col-xs-10">
                <s:textarea cols="50" rows="3" name="note" id="note" cssClass="form-control" />
                <s:if test="#currentFieldHasFieldErrorVar">
                    <span class="text-danger padding-small-vertical"><s:iterator value="#currentFieldErrorsVar"><s:property />&#32;</s:iterator></span>
                </s:if>
            </div>
        </div>
        <%-- save --%>
        <div class="form-group">
            <div class="col-xs-12">
                <s:submit type="button" cssClass="btn btn-primary pull-right">
                    <s:text name="label.save" />
                </s:submit>
            </div>
        </div>
    </s:form>
</div>
