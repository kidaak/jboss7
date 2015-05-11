<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${!empty summary.message}">
    <div class="errorMessage">
        <c:out value="${summary.message}" escapeXml="false" />
    </div>
</c:if>

<html:form action="/services/reviewEntityRenewalFunction">
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="ReviewEntityRenewal_01.jsp" />
</c:import>
</div>

<div class="dreInstructionDyn">
    <c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
    <c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </c:if>
</div>

<c:forEach var="question" items="${entityRenewalFormBean.entityAnswers}" varStatus="status">
<!-- ========================================================================= -->
    <c:if test="${status.first}">
        <h2>Entity Questionnaire</h2>
        <table class="question_table" cellspacing="1" border="0" summary="list of all status">
    </c:if>

    <tr class="question_row">
        <td class="question_row" nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="dreResponse"><c:out value="${question.answer}" /></span>&nbsp;&nbsp;</td>
        <td class="question_row" nowrap>&nbsp;&nbsp;</td>
        <td class="question_row" valign="bottom" width="100%"><div class="dreInstructionDyn"><c:out value="${question.questionText}" /></div></td>
    </tr>

    <c:if test="${status.last}">
        <tr class="question_row">
            <td colspan="3" class="question_row" nowrap>&nbsp;&nbsp;</td>
        </tr>
        </table>
    </c:if>
</c:forEach>

<br>
    <html:submit property="submit.next" styleClass="button100" accesskey="a" tabindex="1"><bean:message key="common.button.continue" /></html:submit>
    &nbsp;
    <html:submit property="submit.previous" styleClass="button100" accesskey="a" tabindex="2"><bean:message key="common.button.back" /></html:submit>
</html:form>