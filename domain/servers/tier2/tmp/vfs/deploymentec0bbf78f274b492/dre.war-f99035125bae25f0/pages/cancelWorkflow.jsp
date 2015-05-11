<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="61cancel_01.jsp" />
</c:import>
</div>
<br />&nbsp;<br />
<table>
<tr>
    <td>
        <html:form action="/services/cancelWorkflow">
            <html:submit property="submit.previous" styleClass="button" accesskey="a" tabindex="1">Return to Payment</html:submit>
        </html:form>
    </td>
    <td>&nbsp; </td>
    <td>
        <html:form action="/home">
            <html:submit property="home" styleClass="button" accesskey="a" tabindex="2"><bean:message key="common.button.home" /></html:submit>
        </html:form>
    </td>
</tr>
</table>
