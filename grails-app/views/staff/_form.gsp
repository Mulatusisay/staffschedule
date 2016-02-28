<%@ page import="OPS.Staff" %>



<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'idNumber', 'error')} required">
    <label for="idNumber">
        <g:message code="staff.idNumber.label" default="Id Number"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="idNumber" required="" value="${staffInstance?.idNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'firstName', 'error')} required">
    <label for="firstName">
        <g:message code="staff.firstName.label" default="First Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="firstName" required="" value="${staffInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'midleName', 'error')} required">
    <label for="midleName">
        <g:message code="staff.midleName.label" default="Midle Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="midleName" required="" value="${staffInstance?.midleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="staff.lastName.label" default="Last Name"/>

    </label>
    <g:textField name="lastName" value="${staffInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'role', 'error')} required">
    <label for="role">
        <g:message code="staff.role.label" default="Role"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="role" from="${staffInstance.constraints.role.inList}" required="" value="${staffInstance?.role}"
              valueMessagePrefix="staff.role"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'title', 'error')} required">
    <label for="title">
        <g:message code="staff.title.label" default="Title"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="title" from="${staffInstance.constraints.title.inList}" required="" value="${staffInstance?.title}"
              valueMessagePrefix="staff.title"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'status', 'error')} required">
    <label for="status">
        <g:message code="staff.status.label" default="Status"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="status" from="${staffInstance.constraints.status.inList}" required=""
              value="${staffInstance?.status}" valueMessagePrefix="staff.status"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'gender', 'error')} required">
    <label for="gender">
        <g:message code="staff.gender.label" default="Gender"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="gender" from="${staffInstance.constraints.gender.inList}" required=""
              value="${staffInstance?.gender}" valueMessagePrefix="staff.gender"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'birthDate', 'error')} required">
    <label for="birthDate">
        <g:message code="staff.birthDate.label" default="Birth Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="birthDate" precision="day" value="${staffInstance?.birthDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'email', 'error')} ">
    <label for="email">
        <g:message code="staff.email.label" default="Email"/>

    </label>
    <g:field type="email" name="email" value="${staffInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'city', 'error')} required">
    <label for="city">
        <g:message code="staff.city.label" default="City"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="city" required="" value="${staffInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'address', 'error')} required">
    <label for="address">
        <g:message code="staff.address.label" default="Address"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="address" required="" value="${staffInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'phoneNumber', 'error')} ">
    <label for="phoneNumber">
        <g:message code="staff.phoneNumber.label" default="Phone Number"/>

    </label>
    <g:textField name="phoneNumber" value="${staffInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'seniorityDate', 'error')} required">
    <label for="seniorityDate">
        <g:message code="staff.seniorityDate.label" default="Seniority Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="seniorityDate" precision="day" value="${staffInstance?.seniorityDate}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'workDetails', 'error')} ">
    <label for="workDetails">
        <g:message code="staff.workDetails.label" default="Work Details"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${staffInstance?.workDetails ?}" var="w">
            <li><g:link controller="workDetails" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="workDetails" action="create"
                    params="['staff.id': staffInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'workDetails.label', default: 'WorkDetails')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: staffInstance, field: 'training', 'error')} ">
    <label for="training">
        <g:message code="staff.training.label" default="Training"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${staffInstance?.training ?}" var="t">
            <li><g:link controller="training" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="training" action="create"
                    params="['staff.id': staffInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'training.label', default: 'Training')])}</g:link>
        </li>
    </ul>

</div>

