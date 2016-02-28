<%@ page import="OPS.Staff" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'staff.label', default: 'Staff')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-staff" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-staff" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list staff">

        <g:if test="${staffInstance?.idNumber}">
            <li class="fieldcontain">
                <span id="idNumber-label" class="property-label"><g:message code="staff.idNumber.label"
                                                                            default="Id Number"/></span>

                <span class="property-value" aria-labelledby="idNumber-label"><g:fieldValue bean="${staffInstance}"
                                                                                            field="idNumber"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.firstName}">
            <li class="fieldcontain">
                <span id="firstName-label" class="property-label"><g:message code="staff.firstName.label"
                                                                             default="First Name"/></span>

                <span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${staffInstance}"
                                                                                             field="firstName"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.midleName}">
            <li class="fieldcontain">
                <span id="midleName-label" class="property-label"><g:message code="staff.midleName.label"
                                                                             default="Midle Name"/></span>

                <span class="property-value" aria-labelledby="midleName-label"><g:fieldValue bean="${staffInstance}"
                                                                                             field="midleName"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.lastName}">
            <li class="fieldcontain">
                <span id="lastName-label" class="property-label"><g:message code="staff.lastName.label"
                                                                            default="Last Name"/></span>

                <span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${staffInstance}"
                                                                                            field="lastName"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.role}">
            <li class="fieldcontain">
                <span id="role-label" class="property-label"><g:message code="staff.role.label" default="Role"/></span>

                <span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${staffInstance}"
                                                                                        field="role"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.title}">
            <li class="fieldcontain">
                <span id="title-label" class="property-label"><g:message code="staff.title.label"
                                                                         default="Title"/></span>

                <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${staffInstance}"
                                                                                         field="title"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.status}">
            <li class="fieldcontain">
                <span id="status-label" class="property-label"><g:message code="staff.status.label"
                                                                          default="Status"/></span>

                <span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${staffInstance}"
                                                                                          field="status"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.gender}">
            <li class="fieldcontain">
                <span id="gender-label" class="property-label"><g:message code="staff.gender.label"
                                                                          default="Gender"/></span>

                <span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${staffInstance}"
                                                                                          field="gender"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.birthDate}">
            <li class="fieldcontain">
                <span id="birthDate-label" class="property-label"><g:message code="staff.birthDate.label"
                                                                             default="Birth Date"/></span>

                <span class="property-value" aria-labelledby="birthDate-label"><g:formatDate
                        date="${staffInstance?.birthDate}"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.email}">
            <li class="fieldcontain">
                <span id="email-label" class="property-label"><g:message code="staff.email.label"
                                                                         default="Email"/></span>

                <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${staffInstance}"
                                                                                         field="email"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.city}">
            <li class="fieldcontain">
                <span id="city-label" class="property-label"><g:message code="staff.city.label" default="City"/></span>

                <span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${staffInstance}"
                                                                                        field="city"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.address}">
            <li class="fieldcontain">
                <span id="address-label" class="property-label"><g:message code="staff.address.label"
                                                                           default="Address"/></span>

                <span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${staffInstance}"
                                                                                           field="address"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.phoneNumber}">
            <li class="fieldcontain">
                <span id="phoneNumber-label" class="property-label"><g:message code="staff.phoneNumber.label"
                                                                               default="Phone Number"/></span>

                <span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${staffInstance}"
                                                                                               field="phoneNumber"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.seniorityDate}">
            <li class="fieldcontain">
                <span id="seniorityDate-label" class="property-label"><g:message code="staff.seniorityDate.label"
                                                                                 default="Seniority Date"/></span>

                <span class="property-value" aria-labelledby="seniorityDate-label"><g:formatDate
                        date="${staffInstance?.seniorityDate}"/></span>

            </li>
        </g:if>

        <g:if test="${staffInstance?.workDetails}">
            <li class="fieldcontain">
                <span id="workDetails-label" class="property-label"><g:message code="staff.workDetails.label"
                                                                               default="Work Details"/></span>

                <g:each in="${staffInstance.workDetails}" var="w">
                    <span class="property-value" aria-labelledby="workDetails-label"><g:link controller="workDetails"
                                                                                             action="show"
                                                                                             id="${w.id}">${w?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${staffInstance?.training}">
            <li class="fieldcontain">
                <span id="training-label" class="property-label"><g:message code="staff.training.label"
                                                                            default="Training"/></span>

                <g:each in="${staffInstance.training}" var="t">
                    <span class="property-value" aria-labelledby="training-label"><g:link controller="training"
                                                                                          action="show"
                                                                                          id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: staffInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${staffInstance}"><g:message code="default.button.edit.label"
                                                                                      default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
