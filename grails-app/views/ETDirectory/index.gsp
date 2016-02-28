
<%@ page import="ACE.ETDirectory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'ETDirectory.label', default: 'ETDirectory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>
	<body>
		<a href="#list-ETDirectory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-ETDirectory" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="contactName" title="${message(code: 'ETDirectory.contactName.label', default: 'Contact Name')}" />
					
						<g:sortableColumn property="position" title="${message(code: 'ETDirectory.position.label', default: 'Position')}" />
					
						<g:sortableColumn property="phoneNumber" title="${message(code: 'ETDirectory.phoneNumber.label', default: 'Phone Number')}" />
					
						<g:sortableColumn property="extension" title="${message(code: 'ETDirectory.extension.label', default: 'Extension')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'ETDirectory.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="remark" title="${message(code: 'ETDirectory.remark.label', default: 'Remark')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ETDirectoryInstanceList}" status="i" var="ETDirectoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ETDirectoryInstance.id}">${fieldValue(bean: ETDirectoryInstance, field: "contactName")}</g:link></td>
					
						<td>${fieldValue(bean: ETDirectoryInstance, field: "position")}</td>
					
						<td>${fieldValue(bean: ETDirectoryInstance, field: "phoneNumber")}</td>
					
						<td>${fieldValue(bean: ETDirectoryInstance, field: "extension")}</td>
					
						<td>${fieldValue(bean: ETDirectoryInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: ETDirectoryInstance, field: "remark")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ETDirectoryInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
