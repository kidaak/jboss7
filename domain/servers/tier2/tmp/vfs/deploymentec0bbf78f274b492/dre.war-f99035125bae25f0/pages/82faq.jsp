<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="82faq_01.jsp" />
</c:import>
</div>

<br>
<html:form action="/home">
    <html:submit styleClass="button" accesskey="a" tabindex="1">Return to Home</html:submit>
</html:form>
