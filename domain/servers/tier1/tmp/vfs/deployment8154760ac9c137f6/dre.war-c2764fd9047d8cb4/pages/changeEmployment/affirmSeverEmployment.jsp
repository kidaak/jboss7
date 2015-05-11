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

<html:form action="/services/affirmChangeEmploymentFunction">
    <input type="hidden" name="step" value="2" />
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

    <div class="dreInstructionConfig">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="AttestationSeverEmployment_01.jsp" />
    </c:import>
    </div>
    
    <c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
    <c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
        <div class="dreInstructionDyn">
            <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
        </div>
    </c:if>
    
    <table cellspacing="0" bgcolor="white">
	<!-- ========================================================================= -->
	<tr>
            <td class="data" nowrap><html:checkbox property="affirmation" styleId="agree" value="Y" /></td>
            <td class="data" nowrap><label for="agree">I agree that the above statements are true.</label></td>
	</tr>
    </table>
    <p>&nbsp;</p>
    
    <html:submit property="submit.next" styleClass="button100" accesskey="a" tabindex="1"><bean:message key="common.button.continue" /></html:submit>
</html:form>
