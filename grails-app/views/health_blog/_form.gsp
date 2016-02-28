<%@ page import="ACE.Health_blog" %>



<div class="fieldcontain ${hasErrors(bean: healthInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="health.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${healthInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: healthInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="health.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${healthInstance?.author}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: healthInstance, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="health.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="message" cols="40" rows="5" required="" value="${healthInstance?.message}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: healthInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="health.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="category" from="${healthInstance.constraints.category.inList}" required="" value="${healthInstance?.category}" valueMessagePrefix="health.category"/>

</div>

<div class="fieldcontain ${hasErrors(bean: healthInstance, field: 'comment', 'error')} required">
	<label for="comment">
		<g:message code="health.comment.label" default="Comment" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="comment" required="" value="${healthInstance?.comment}"/>

</div>

