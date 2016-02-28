<%@ page import="OPS.Staff" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'staff.label', default: 'Staff')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-staff" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-staff" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="idNumber"
                              title="${message(code: 'staff.idNumber.label', default: 'Id Number')}"/>

            <g:sortableColumn property="firstName"
                              title="${message(code: 'staff.firstName.label', default: 'First Name')}"/>

            <g:sortableColumn property="midleName"
                              title="${message(code: 'staff.midleName.label', default: 'Midle Name')}"/>

            <g:sortableColumn property="lastName"
                              title="${message(code: 'staff.lastName.label', default: 'Last Name')}"/>

            <g:sortableColumn property="role" title="${message(code: 'staff.role.label', default: 'Role')}"/>

            <g:sortableColumn property="title" title="${message(code: 'staff.title.label', default: 'Title')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${staffInstanceList}" status="i" var="staffInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${staffInstance.id}">${fieldValue(bean: staffInstance, field: "idNumber")}</g:link></td>

                <td>${fieldValue(bean: staffInstance, field: "firstName")}</td>

                <td>${fieldValue(bean: staffInstance, field: "midleName")}</td>

                <td>${fieldValue(bean: staffInstance, field: "lastName")}</td>

                <td>${fieldValue(bean: staffInstance, field: "role")}</td>

                <td>${fieldValue(bean: staffInstance, field: "title")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${staffInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
