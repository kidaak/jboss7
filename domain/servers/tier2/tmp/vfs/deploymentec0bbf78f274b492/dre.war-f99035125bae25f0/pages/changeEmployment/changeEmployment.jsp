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

<logic:present name="summary">
    <div class="errorMessage">
        <c:out value="${summary.message}" escapeXml="false" />
    </div>
</logic:present>


<html:form action="/services/submitChangeEmploymentFunction">
<input type="hidden" name="step" value="1" />
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="ChangeEmployer_01.jsp" />
</c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>
    
<table cellspacing="0">
<!-- ========================================================================= -->
<tr>
    <td class="data" nowrap><label for="licenseNum"><bean:message key="p10.label.change"/></label></td>
</tr>
<!-- ========================================================================= -->
<tr>
    <td class="data" nowrap>
        <html:text property="licenseNumber" size="13" styleId="licenseNum" />
        &nbsp;&nbsp;
        <span class="dreExampleText"><bean:message key="p10.help.licnum" /></span>
    </td>
</tr>
</table>
<br>
    <html:submit property="submit.next" styleClass="button100" accesskey="a" tabindex="1"><bean:message key="common.button.continue" /></html:submit>
</html:form>