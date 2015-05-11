<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${!empty summary.message}">
    <div class="errorMessage">
        <c:out value="${summary.message}" escapeXml="false" />
    </div>
</c:if>

<html:form action="/services/startWorkflow">
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<br>
    <html:submit property="submit.next" styleClass="button100" accesskey="a" tabindex="1"><bean:message key="common.button.continue" /></html:submit>
    &nbsp;
    <html:submit property="home" styleClass="button100" accesskey="a" tabindex="2"><bean:message key="common.button.home" /></html:submit>
</html:form>