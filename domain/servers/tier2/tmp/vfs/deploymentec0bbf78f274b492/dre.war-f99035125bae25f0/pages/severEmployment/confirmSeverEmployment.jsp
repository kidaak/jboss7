<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html:form action="/services/confirmSeverEmploymentFunction">
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="ConfirmSeverEmployment_01.jsp" />
    </c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<h2>Sever Notification</h2>
<div class="dreInstructionConfig">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="AttestationSeverEmployment_01.jsp" />
    </c:import>
</div>

<h2>Current Employment Information</h2>
<table class="dataReview">
<tr>
    <td class="dataReviewLabel"></td>
    <td class="dataReviewData">No Employing Broker</td>
</tr>
</table>

<h2>Previous Employment Information</h2>
<c:import url="/pages/employmentInfo.jsp" />

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
&nbsp; 
<html:submit property="home" styleClass="button100" accesskey="a" tabindex="2"><bean:message key="common.button.home" /></html:submit>
&nbsp;
<html:submit property="submit.survey" styleClass="button100" accesskey="a" tabindex="3"><bean:message key="common.button.takeSurvey" /></html:submit>

</html:form>