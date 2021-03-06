<%@ page import="OPS.DayOff" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'dayOff.label', default: 'DayOff')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-dayOff" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-dayOff" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list dayOff">

        <g:if test="${dayOffInstance?.dayOff}">
            <li class="fieldcontain">
                <span id="dayOff-label" class="property-label"><g:message code="dayOff.dayOff.label"
                                                                          default="Day Off"/></span>

                <span class="property-value" aria-labelledby="dayOff-label"><g:fieldValue bean="${dayOffInstance}"
                                                                                          field="dayOff"/></span>

            </li>
        </g:if>

        <g:if test="${dayOffInstance?.staff}">
            <li class="fieldcontain">
                <span id="staff-label" class="property-label"><g:message code="dayOff.staff.label"
                                                                         default="Staff"/></span>

                <span class="property-value" aria-labelledby="staff-label"><g:link controller="staff" action="show"
                                                                                   id="${dayOffInstance?.staff?.id}">${dayOffInstance?.staff?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: dayOffInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${dayOffInstance}"><g:message code="default.button.edit.label"
                                                                                       default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
