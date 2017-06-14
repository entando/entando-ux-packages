<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="wp" uri="/aps-core" %>

<wp:ifauthorized permission="superuser">
    <li class="list-group-item" role="presentation">
        <a role="menuitem" href="<s:url action="list" namespace="/do/Card" />" >
            <span class="list-group-item-value">CARD</span>
        </a>
    </li>
</wp:ifauthorized>
