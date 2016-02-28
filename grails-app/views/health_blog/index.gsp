
<%@ page import="ACE.Health_blog" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'health_blog.label', default: 'Health_blog')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-health" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		< id="list-health_blog" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'health_blog.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="author" title="${message(code: 'health_blog.author.label', default: 'Author')}" />
						<g:sortableColumn property="message" title="${message(code: 'health_blog.message.label', default: 'Message')}" />

					
						<g:sortableColumn property="category" title="${message(code: 'health_blog.category.label', default: 'Category')}" />

						<g:sortableColumn property="comment" title="${message(code: 'health_blog.comment.label', default: 'Comment')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'health_blog.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${healthInstanceList}" status="i" var="healthInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${healthInstance.id}">${fieldValue(bean: healthInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: healthInstance, field: "author")}</td>
					
						<td>${fieldValue(bean: healthInstance, field: "message")}</td>
					
						<td>${fieldValue(bean: healthInstance, field: "category")}</td>
					
						<td>${fieldValue(bean: healthInstance, field: "comment")}</td>
					
						<td><g:formatDate date="${healthInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${healthInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
