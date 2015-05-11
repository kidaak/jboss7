<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${!empty errorMsg}">
<div class="dreInstructionDyn"><span class="errorMessage">
    <c:set var="message" value="${errorMsg}" />
    <%
        String message = (java.lang.String)pageContext.getAttribute("message");
        out.println(org.htmlparser.util.Translate.decode(message));
    %>
</span></div>
</c:if>

<c:if test="${!empty summaryMsg}">
<div class="dreInstructionDyn">
    <c:set var="message" value="${summaryMsg}" />
    <%
        String message = (java.lang.String)pageContext.getAttribute("message");
        out.println(org.htmlparser.util.Translate.decode(message));
    %>
</div>
</c:if>

<logic:messagesPresent>
<div class="errorMessage"><bean:message key="errors.validation"/>
  <ul>
  <html:messages id="msg">
    <li><bean:write name="msg"/><br></li>
  </html:messages>
  </ul>
</div>
</logic:messagesPresent>