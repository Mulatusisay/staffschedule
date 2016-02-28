<%@ page import="ACE.ETDirectory" %>



<div class="fieldcontain ${hasErrors(bean: ETDirectoryInstance, field: 'contactName', 'error')} required">
	<label for="contactName">
		<g:message code="ETDirectory.contactName.label" default="Contact Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactName" required="" value="${ETDirectoryInstance?.contactName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ETDirectoryInstance, field: 'position', 'error')} ">
	<label for="position">
		<g:message code="ETDirectory.position.label" default="Position" />
		
	</label>
	<g:textField name="position" value="${ETDirectoryInstance?.position}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ETDirectoryInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="ETDirectory.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" required="" value="${ETDirectoryInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ETDirectoryInstance, field: 'extension', 'error')} ">
	<label for="extension">
		<g:message code="ETDirectory.extension.label" default="Extension" />
		
	</label>
	<g:textField name="extension" value="${ETDirectoryInstance?.extension}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ETDirectoryInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="ETDirectory.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${ETDirectoryInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ETDirectoryInstance, field: 'remark', 'error')} ">
	<label for="remark">
		<g:message code="ETDirectory.remark.label" default="Remark" />
		
	</label>
	<g:textField name="remark" value="${ETDirectoryInstance?.remark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ETDirectoryInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="ETDirectory.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${ETDirectoryInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ETDirectoryInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="ETDirectory.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${ETDirectoryInstance.constraints.status.inList}" required="" value="${ETDirectoryInstance?.status}" valueMessagePrefix="ETDirectory.status"/>

</div>

