<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="100baMain_01.jsp" />
</c:import>
</div>

<html:form action="/audit/main">
    <html:hidden property="page" value="100"/>
    <html:submit styleClass="button100" property="submit.next">Continue</html:submit>
</html:form>