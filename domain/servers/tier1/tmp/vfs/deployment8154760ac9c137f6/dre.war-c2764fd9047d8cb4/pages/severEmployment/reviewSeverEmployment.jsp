<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html:form action="/services/reviewSeverEmploymentFunction">
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="ReviewSeverEmployment_01.jsp" />
    </c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<h2>Sever Notification</h2>
<div class="dreInstructionConfig">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="AttestationSeverEmployment_01.jsp" />
    </c:import>
</div>

<h2>Employment Information</h2>
<c:import url="/pages/employmentInfo.jsp" />

<br />&nbsp;<br />

<table>
<tr>
    <td colspan="2">
        <html:submit property="submit.next" styleClass="button100" accesskey="a" tabindex="1"><bean:message key="common.button.continue" /></html:submit>
        &nbsp;
        <html:submit property="submit.previous" styleClass="button100" accesskey="a" tabindex="2"><bean:message key="common.button.back" /></html:submit>
    </td>
</tr>
</table>

</html:form>