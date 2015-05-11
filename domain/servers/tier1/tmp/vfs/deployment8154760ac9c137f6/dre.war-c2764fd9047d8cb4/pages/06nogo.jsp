<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="06nogo_1.jsp" />
</c:import>
</div>

<c:if test="${!empty summary}">
<div class="dreInstructionDyn">
    <c:out value="${summary}" escapeXml="false" />
</div>
</c:if>

<html:form action="/home">
    <html:submit styleClass="button"><bean:message key="common.button.login" /></html:submit>
</html:form>