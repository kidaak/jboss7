<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<logic:messagesPresent>
<div class="errorMessage"><bean:message key="errors.validation"/>
    <ul>
        <html:messages id="msg">
        <li><bean:write name="msg"/><br></li>
        </html:messages>
    </ul>
</div>
</logic:messagesPresent>

<html:form action="/submitRequiredInfoTerms">
<input type="hidden" name="step" value="1" />
<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="05terms_1.jsp" />
</c:import>
</div>

<table cellspacing="0" bgcolor="white" summary="list of all status">
	<!-- ========================================================================= -->
	<tr>
		<td class="data" nowrap><input type="checkbox" name="terms" id="agree"></td>
		<td class="data" nowrap><label for="agree">I agree to these terms and conditions.</label></td>
	</tr>
</table>

<br>
    <html:submit property="home" accesskey="a"><bean:message key="common.button.continue" /></html:submit>
</html:form>