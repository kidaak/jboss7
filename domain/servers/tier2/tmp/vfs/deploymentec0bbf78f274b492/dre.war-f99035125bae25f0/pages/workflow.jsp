<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${!empty workflow.workflowMessage}">
    <div class="errorMessage">
        <c:out value="${workflow.workflowMessage}" escapeXml="false" />
    </div>
</c:if>

<html:form action="/services/workflowPage">
<br>
    <html:submit property="submit.next" styleClass="button180" accesskey="a" tabindex="1"><bean:message key="common.button.continue" /></html:submit>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</html:form>