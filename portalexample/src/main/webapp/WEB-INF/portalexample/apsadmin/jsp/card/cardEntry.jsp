<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="wpsa" uri="/apsadmin-core" %>
<%@ taglib prefix="wpsf" uri="/apsadmin-form" %>
<h1 class="panel panel-default title-page">
	<span class="panel-body display-block">
		<a href="<s:url action="list" />"><s:text name="title.cardManagement" /></a>
		&#32;/&#32;
		<s:if test="getStrutsAction() == 1">
			<s:text name="title.newCard" />
		</s:if>
		<s:if test="getStrutsAction() == 2">
			<s:text name="title.editCard" />
		</s:if>
	</span>
</h1>
<div id="main" role="main">
	<s:form action="save" cssClass="form-horizontal">
		<s:if test="hasFieldErrors()">
			<div class="alert alert-danger alert-dismissable fade in">
				<button class="close" data-dismiss="alert"><span class="icon icon-remove"></span></button>
				<h2 class="h4 margin-none"><s:text name="message.title.FieldErrors" /></h2>
				<%--
				<ul class="margin-base-top">
					<s:iterator value="fieldErrors">
						<s:iterator value="value">
							<li><s:property escape="false" /></li>
						</s:iterator>
					</s:iterator>
				</ul>
				--%>
			</div>
		</s:if>
		<s:if test="hasActionErrors()">
			<div class="alert alert-danger alert-dismissable fade in">
				<button class="close" data-dismiss="alert"><span class="icon icon-remove"></span></button>
				<h2 class="h4 margin-none"><s:text name="message.title.ActionErrors" /></h2>
				<ul class="margin-base-top">
					<s:iterator value="actionErrors">
						<li><s:property escape="false" /></li>
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
					<div class="col-xs-12">
						<label for="holder"><s:text name="label.cardHolder" /></label>
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
					<div class="col-xs-12">
						<label for="descr"><s:text name="label.cardDescr" /></label>
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
					<div class="col-xs-12">
						<label for="date"><s:text name="label.cardDate" /></label>
						<s:textfield name="date" id="date" cssClass="form-control datepicker" />
						<span class="help help-block">dd/mm/yyyy</span>
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
					<div class="col-xs-12">
						<label for="note"><s:text name="label.cardNote" /></label>
						<s:textarea cols="50" rows="3" name="note" id="note" cssClass="form-control" />
						<s:if test="#currentFieldHasFieldErrorVar">
							<span class="text-danger padding-small-vertical"><s:iterator value="#currentFieldErrorsVar"><s:property />&#32;</s:iterator></span>
						</s:if>
					</div>
				</div>
		<%-- save --%>
			<div class="form-group">
				<div class="col-xs-12 col-sm-4 col-md-3 margin-small-vertical">
					<s:submit type="button" cssClass="btn btn-primary btn-block">
						<span class="icon icon-save"></span>&#32;
						<s:text name="label.save" />
					</s:submit>
				</div>
			</div>
	</s:form>
</div>