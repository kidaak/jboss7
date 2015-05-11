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

<html:form action="/services/submitQuestionnaireRenewLicenseFunction">
<html:hidden property="step" value="1"/>
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="SubmitQuestionnaire_01.jsp" />
</c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<h2>
Section A: Relating To Professional Licenses, Business Practices &amp; Civil Records
</h2>

<table class="question_table" cellspacing="1" border="0" summary="list of all status">
<!-- ========================================================================= -->
<tr class="question_row">
    <td colspan="2" class="question_row" nowrap height="28px">&nbsp;&nbsp;</td>
    <td class="question_row"  valign="bottom"><span class="dreQuestionH1">Since the issuance of your current or most recent license:</span></td>
</tr>

<logic:iterate name="renewLicenseFormBean" property="questions" id="questions" indexId="index">
<!-- ========================================================================= -->
<tr class="question_row">
    <td class="question_row" nowrap>
            <html:radio name="questions" property="answer" indexed="true" value="Yes" styleId="<%= \"Yes\" + index %>" />&nbsp;<label for="Yes<%= index %>">Yes</label>&nbsp;
            <html:radio name="questions" property="answer" indexed="true" value="No" styleId="<%= \"No\" + index %>" />&nbsp;<label for="No<%= index %>">No</label>
    </td>
    <td class="question_row" nowrap>&nbsp;&nbsp;</td>
    <td class="question_row"  valign="bottom" width="100%"><div class="dreInstructionDyn"><bean:write name="questions" property="questionText" /></div></td>
</tr>
<!-- ========================================================================= -->
</logic:iterate>

</table>
<br>
	<html:submit property="submit.next" styleClass="button100" accesskey="a"><bean:message key="common.button.continue" /></html:submit>
</html:form>
