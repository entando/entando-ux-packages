<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>

<h2><wp:i18n key="VIEW_CARD" /></h2>

<div class="well">
<dl class="dl-horizontal">
    <dt><wp:i18n key="CARD_HOLDER" /></dt>
    <dd><s:property value="holder" /></dd>

    <dt><wp:i18n key="CARD_DESCRIPTION" /></dt>
    <dd><s:property value="descr" /></dd>

    <dt><wp:i18n key="CARD_NOTE" /></dt>
    <dd><s:property value="note" /></dd>

    <dt><wp:i18n key="CARD_CREATION_DATE" /></dt>
    <dd><s:property value="date" /></dd>
</dl>
</div>

<a href="<wp:action path="/ExtStr2/do/FrontEnd/Card/list.action" />" class="btn"><wp:i18n key="BACK_TO_CARDS_LIST" /></a>
