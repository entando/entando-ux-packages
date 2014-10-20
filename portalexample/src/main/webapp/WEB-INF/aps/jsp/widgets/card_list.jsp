<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="vmr" uri="/portalexample-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- Loader Tag <vmr:cards /> --%>
<vmr:cards listName="cardList" />

<%--
optional CSS
<wp:headInfo type="CSS" info="widgets/card_list.css" />
--%>

<!-- search block //start -->
<section class="card_list">

<h1><wp:i18n key="SEARCH_CARDS" /></h1>
<form id="searchForm" method="get" action="<wp:url />" class="form-search">
	<input type="text" id="holder" name="holder" value="<c:out value="${holder}" />" placeholder="<wp:i18n key="CARD_HOLDER" />" class="input-medium search-query" />
	<input type="submit" class="btn btn-primary" value="<wp:i18n key="SEARCH" />" />
</form>

<!-- search block //end -->

<c:if test="${cardList != null}">

	<!-- pager -->
	<wp:pager listName="cardList" objectName="groupCard" pagerIdFromFrame="true" max="10" advanced="true" offset="5" >
	<c:set var="group" value="${groupCard}" scope="request" />

	<c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />

	<h2>
		<wp:i18n key="CARDS_NUMBER" /> : <c:out value="${groupCard.size}" />
	</h2>

	<!-- output data //start -->
	<table class="table table-bordered table-condensed" summary="<wp:i18n key="CARDS_LIST_SUMMARY" />">
	<tr>
		<th><wp:i18n key="CARD_HOLDER" /></th>
		<th><wp:i18n key="CARD_DESCRIPTION" /></th>
		<th><wp:i18n key="CARD_CREATION_DATE" /></th>
	</tr>
	<c:forEach var="card" items="${cardList}" begin="${groupCard.begin}" end="${groupCard.end}">
		<tr>
			<td><c:out value="${card.holder}" /></td>
			<td><c:out value="${card.descr}" /></td>
			<td><fmt:formatDate pattern="dd/MM/yyyy" value="${card.date}" /></td>
		</tr>
	</c:forEach>
	</table>
	<!-- output data //end -->

	<!-- pager -->
	<c:import url="/WEB-INF/plugins/jacms/aps/jsp/widgets/inc/pagerBlock.jsp" />

	</wp:pager>

</c:if>

</section>