<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="wpsa" uri="/apsadmin-core" %>
<%@ taglib prefix="wpsf" uri="/apsadmin-form" %>
<h1 class="panel panel-default title-page">
	<span class="panel-body display-block">
		<s:text name="title.cardManagement" />
	</span>
</h1>
<div id="main" role="main">
	<s:form action="search" cssClass="form-horizontal">
		<div class="form-group">
			<div class="input-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<span class="input-group-addon">
					<span class="icon fa fa-file-text-o fa-lg" title="<s:text name="label.search.by"/>&#32;<s:text name="label.cardHolder"/>"></span>
				</span>
				<label for="holder" class="sr-only"><s:text name="label.search.by"/>&#32;<s:text name="label.cardHolder"/></label>
				<wpsf:textfield name="holder" id="holder" cssClass="form-control input-lg" placeholder="%{getText('label.cardHolder')}" title="%{getText('label.search.by')} %{getText('label.cardHolder')}" />
				<span class="input-group-btn">
					<wpsf:submit type="button" cssClass="btn btn-primary btn-lg" title="%{getText('label.search')}">
						<span class="sr-only"><s:text name="label.search" /></span>
						<span class="icon fa fa-search"></span>
					</wpsf:submit>
				</span>
			</div>
		</div>
		<a class="btn btn-default" href="<s:url action="new" />">
			<span class="icon fa fa-plus-circle"></span>&#32;
			&#32;<s:text name="label.new" />
		</a>
		<wpsa:subset source="cards" count="10" objectName="cardsGroup" advanced="true" offset="5">
			<s:set var="group" value="#cardsGroup" />
			<div class="text-center">
				<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pagerInfo.jsp" />
				<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
			</div>
			<s:if test="%{#group.size>0}">
				<table class="table table-bordered table-hover">
					<caption>Cards</caption>
					<tr>
						<th class="text-center"><abbr title="<s:text name="label.remove" />">&ndash;</abbr></th>
						<th><s:text name="label.cardHolder" /></th>
						<th><s:text name="label.cardDescr" /></th>
						<th class="text-center"><s:text name="label.cardDate" /></th>
					</tr>
					<s:iterator var="card">
						<tr>
							<td class="text-center text-nowrap">
								<div class="btn-group btn-group-xs">
									<a class="btn btn-default" title="<s:text name="label.edit" />&#32;<s:property value="#usernameVar" />" 
									   href="<s:url action="edit"><s:param name="id" value="#card.id"/></s:url>">
										<span class="sr-only"><s:text name="label.edit" />&#32;<s:property value="#card.holder" /></span>
										<span class="icon fa fa-pencil-square-o"></span>
									</a>
								</div>
								<div class="btn-group btn-group-xs">
									<a href="<s:url action="delete"><s:param name="id" value="#card.id"/></s:url>"
										title="<s:text name="label.remove" />: <s:property value="#card.holder" />"
										class="btn btn-warning" >
										<span class="icon fa fa-times-circle-o"></span>&#32;
										<span class="sr-only"><s:text name="label.alt.clear" /></span>
									</a>
								</div>
							</td>
							<td><s:property value="#card.holder" /></td>
							<td><s:property value="#card.descr" /></td>
							<td class="text-center text-nowrap">
								<abbr title="<s:date name="#card.date" format="EEEE dd MMMM yyyy" />">
									<code><s:date name="#card.date" format="dd/MM/yyyy" /></code>
								</abbr>
							</td>
						</tr>
					</s:iterator>
				</table>
			</s:if>
			<div class="text-center">
				<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
			</div>
		</wpsa:subset>
	</s:form>
</div>