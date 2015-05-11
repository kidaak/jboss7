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

<html:form action="/services/confirmQuestionnaireEntityRenewalFunction">
<html:hidden property="step" value="3"/>
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="VerifyQuestionnaireEntityRenewal_01.jsp" />
</c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<table class="question_table" cellspacing="1" border="0" summary="list of all status">
<!-- ========================================================================= -->
<tr class="question_row">
    <td colspan="2" class="question_row" nowrap height="28px">&nbsp;&nbsp;</td>
    <td class="question_row" valign="bottom"><span class="dreQuestionH1">Since the issuance of your current or most recent license:</span></td>
</tr>

<c:forEach var="question" items="${entityRenewalFormBean.entityQuestions}" varStatus="status">
<!-- ========================================================================= -->
<tr class="question_row">
    <td class="question_row" nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="dreResponse"><c:out value="${question.answer}" /></span>&nbsp;&nbsp;</td>
    <td class="question_row" nowrap>&nbsp;&nbsp;</td>
    <td class="question_row" valign="bottom" width="100%"><div class="dreInstructionDyn"><c:out value="${question.questionText}" /></div></td>
</tr>
</c:forEach>

<tr class="question_row">
    <td colspan="3" class="question_row" nowrap>&nbsp;&nbsp;</td>
</tr>
<!-- ========================================================================= -->
<tr class="question_row" valign="top">
    <td class="question_row" align="right" nowrap><html:checkbox property="entityCertify" value="Y" styleId="cb" /></td>
    <td class="question_row" nowrap>&nbsp;&nbsp;</td>
    <td class="question_row"  valign="bottom" >
        <div class="dreInstructionConfig">
            <label for="cb">
            <c:import url="/pages/dynamicContent.jsp">
                <c:param name="page" value="VerifyQuestionnaireEntityRenewal_02.jsp" />
            </c:import>
            </label>
        </div>
    </td>
</tr>
</table>

<br>
<html:submit property="submit.next" styleClass="button100" accesskey="a" tabindex="1"><bean:message key="common.button.continue" /></html:submit>
&nbsp;
<html:submit property="submit.previous" styleClass="button100" accesskey="a" tabindex="2"><bean:message key="common.button.back" /></html:submit>
</html:form>
