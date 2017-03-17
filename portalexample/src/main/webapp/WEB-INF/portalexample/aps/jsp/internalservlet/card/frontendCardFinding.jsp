<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%--
optional CSS
<wp:headInfo type="CSS" info="widgets/card_list.css" />
--%>

<section class="card_list">

<h1><wp:i18n key="SEARCH_CARDS" /></h1>

<form action="<wp:action path="/ExtStr2/do/FrontEnd/Card/search.action" />" method="post" class="form-search" role="search">
	<wpsf:textfield name="holder" id="holder" cssClass="input-medium search-query" />
	<s:set var="searchLabel"><wp:i18n key="SEARCH" /></s:set>
	<wpsf:submit value="%{#searchLabel}" cssClass="btn btn-primary" />
</fieldset>

<wpsa:subset source="cards" count="10" objectName="groupCard" advanced="true" offset="5">
<s:set var="group" value="#groupCard" />

<div class="margin-medium-vertical">
	<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pagerInfo.jsp" />
	<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
</div>

<table class="table table-bordered table-condensed table-hover" summary="<wp:i18n key="CARDS_LIST_SUMMARY" />">
<thead>
<tr>
	<th><wp:i18n key="CARD_HOLDER" /></th>
	<th><wp:i18n key="CARD_DESCRIPTION" /></th>
	<th><wp:i18n key="CARD_CREATION_DATE" /></th>
</tr>
</thead>
<tbody>
<s:iterator var="card">
<tr>
	<td><a href="<wp:action path="/ExtStr2/do/FrontEnd/Card/view.action"><wp:parameter name="id"><s:property value="#card.id" /></wp:parameter></wp:action>" title="<wp:i18n key="EDIT" />: <s:property value="#card.id" />" class="label label-info"><s:property value="#card.holder" /></a></td>
	<td><s:property value="#card.descr" /></td>
	<td><s:date name="#card.date" format="dd/MM/yyyy" /></td>
</tr>
</s:iterator>
</tbody>
</table>

<div class="centerText">
	<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
</div>

</wpsa:subset>

</form>
</section>