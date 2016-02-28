<%@ page import="OPS.DayOff" %>



<div class="fieldcontain ${hasErrors(bean: dayOffInstance, field: 'dayOff', 'error')} required">
    <label for="dayOff">
        <g:message code="dayOff.dayOff.label" default="Day Off"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="dayOff" from="${dayOffInstance.constraints.dayOff.inList}" required=""
              value="${dayOffInstance?.dayOff}" valueMessagePrefix="dayOff.dayOff"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dayOffInstance, field: 'staff', 'error')} ">
    <label for="staff">
        <g:message code="dayOff.staff.label" default="Staff"/>

    </label>
    <g:select id="staff" name="staff.id" from="${OPS.Staff.list()}" optionKey="id" value="${dayOffInstance?.staff?.id}"
              class="many-to-one" noSelection="['null': '']"/>

</div>

