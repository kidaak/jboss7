<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<logic:messagesPresent message="true">
    <html:messages id="message" message="true">
        <div class="errorMessage">
            <li><bean:write name="message"/></li>
        </div>
    </html:messages>
    <p>
</logic:messagesPresent>

<logic:messagesPresent>
    <html:messages id="message">
        <div class="errorMessage">
            <li><bean:write name="message"/></li>
        </div>
    </html:messages>
    <p>
</logic:messagesPresent>

<c:if test="${!empty summary.message}">
<div class="dreInstructionDyn">
    <span class="errorMessage">
        <c:out value="${summary.message}" escapeXml="false" />
    </span>
</div>
</c:if>

<c:if test="${!empty userInfo.userMessage}">
<div class="dreInstructionDyn">
    <c:out value="${userInfo.userMessage}" escapeXml="false" />
</div>
</c:if>

