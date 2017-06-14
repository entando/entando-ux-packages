<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="wpsa" uri="/apsadmin-core" %>
<%@ taglib prefix="wpsf" uri="/apsadmin-form" %>
<ol class="breadcrumb page-tabs-header breadcrumb-position">
    <li><s:text name="breadcrumb.integrations"/></li>
    <li><s:text name="breadcrumb.integrations.components"/></li>
    <li class="page-title-container"><s:text name="title.cardManagement" /></li>
</ol>
<h1 class="page-title-container">
    <s:text name="title.cardManagement" />
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
    <s:form action="search" cssClass="form-horizontal">
        <div class="searchPanel form-group">
            <div class="well col-md-offset-3 col-md-6  ">
                <p class="search-label">
                    <s:text name="label.search.by"/>
                </p>
                <div class="form-group">
                    <label class="col-sm-2 control-label"><s:text name="label.cardHolder"/></label>
                    <div class="col-sm-9">
                        <wpsf:textfield name="holder" id="holder" cssClass="form-control input-lg" placeholder="%{getText('label.cardHolder')}" title="%{getText('label.search.by')} %{getText('label.cardHolder')}" />
                    </div>
                </div>
                <wpsf:submit type="button" cssClass="btn btn-primary pull-right" title="%{getText('label.search')}">
                    <span class="sr-only"><s:text name="label.search" /></span>
                    <s:text name="label.search" />
                </wpsf:submit>
            </div>
        </div>
        <a class="btn btn-primary pull-right" href="<s:url action="new" />">
            <s:text name="label.add" />
        </a>
        <br>
        <br>
        <wpsa:subset source="cards" count="10" objectName="cardsGroup" advanced="true" offset="5">
            <s:set var="group" value="#cardsGroup" />

            <s:if test="%{#group.size>0}">

                <div class="col-xs-12 no-padding">
                    <table class="table table-striped table-bordered table-hover no-mb">

                        <tr>
                            <th><s:text name="label.cardHolder" /></th>
                            <th><s:text name="label.cardDescr" /></th>
                            <th class="text-center"><s:text name="label.cardDate" /></th>
                            <th class="text-center table-w-5"><s:text name="label.actions" /></th>
                        </tr>
                        <s:iterator var="card">
                            <tr>
                                <td><s:property value="#card.holder" /></td>
                                <td><s:property value="#card.descr" /></td>
                                <td class="text-center text-nowrap">
                                    <span title="<s:date name="#card.date" format="EEEE dd MMMM yyyy" />">
                                        <span><s:date name="#card.date" format="dd/MM/yyyy" /></span>
                                    </span>
                                </td>
                                <td class="text-center table-view-pf-actions">
                                    <div class="dropdown dropdown-kebab-pf">
                                        <button class="btn btn-menu-right dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <span class="fa fa-ellipsis-v"></span>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-right">
                                            <li>
                                                <a title="<s:text name="label.edit" />&#32;<s:property value="#usernameVar" />" 
                                                   href="<s:url action="edit"><s:param name="id" value="#card.id"/></s:url>">
                                                    <span class="sr-only"><s:text name="label.edit" />&#32;<s:property value="#card.holder" /></span>
                                                    <s:text name="label.edit" />
                                                </a>
                                            </li>
                                            <li>
                                                <a href="<s:url action="delete"><s:param name="id" value="#card.id"/></s:url>" title="<s:text name="label.remove" />: <s:property value="#card.holder" />">
                                                    <span class="sr-only"><s:text name="label.alt.clear" /></span>
                                                    <s:text name="label.delete" />
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        </s:iterator>
                    </table>
                </div>
            </s:if>
            <div class="content-view-pf-pagination clearfix">
                <div class="form-group">
                    <s:include value="/WEB-INF/apsadmin/jsp/common/inc/pagerInfo.jsp" />
                    <s:include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
                </div>
            </div>
        </wpsa:subset>
    </s:form>
</div>
