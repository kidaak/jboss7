<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:if test="${!empty summary.message}">
    <div class="errorMessage">
        <c:out value="${summary.message}" escapeXml="false" />
    </div>
</c:if>

<html:form action="/services/confirmEntityRenewalFunction">
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="ConfirmEntityRenewal_01.jsp" />
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

<h2><bean:message key='p22.title.payment'/></h2>
<div class="dreInstruction">
    Your confirmation number is <c:out value="${confirmationNumber}" />.
    <br>
    Processed date is <fmt:formatDate value="${transactionTime}" type="both" timeZone="America/Phoenix" />.
</div>

<c:if test="${!empty workflowOrder.products}">
    <c:import url="/pages/listCharges.jsp" />
    <img src="htdocs/images/spacer.gif" width="10" height="10" alt=""><br>
</c:if>

<html:button property="print" styleClass="button100" tabindex="1" onclick="javascript: window.print();"><bean:message key="common.button.printReceipt" /></html:button>
&nbsp; &nbsp; 
<html:submit property="home" styleClass="button100" accesskey="a" tabindex="2"><bean:message key="common.button.home" /></html:submit>
&nbsp;
<html:submit property="submit.survey" styleClass="button100" accesskey="a" tabindex="3"><bean:message key="common.button.takeSurvey" /></html:submit>

</html:form>