<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:if test="${!empty summary.message}">
    <div class="errorMessage">
        <c:out value="${summary.message}" escapeXml="false" />
    </div>
</c:if>

<!-- html:form action="/services/confirmRenewLicenseFunction"-->
<html:form action="/services/confirmRenewLicenseFunction">
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="ConfirmIndividualRenewal_01.jsp" />
</c:import>
</div>

<div class="dreInstructionDyn">
    <c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
    <c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </c:if>
</div>

<c:forEach var="question" items="${renewLicenseFormBean.answers}" varStatus="status">
<!-- ========================================================================= -->
    <c:if test="${status.first}">
        <h2>Individual Questionnaire</h2>
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

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="data_row_even" />
<c:set target="${alternator}" property="string" value="data_row_odd" />

<c:forEach items="${renewLicenseFormBean.finalCourses}" var="course" varStatus="status">
    <c:if test="${status.first}">
        <h2><bean:message key="p45.title" /></h2>
        <table class="data_table" cellspacing="1" summary="list of all status">
        <tr>
            <th class="data_table_header_center" nowrap><bean:message key="p45.table.title.course" /></th>
            <th class="data_table_header_center" nowrap><bean:message key="p45.table.title.datestart" />
                <br><span class="dreExampleText"><bean:message key="common.help.date" /></span>
            </th>
            <th class="data_table_header_center" nowrap><bean:message key="p45.table.title.datecomp" />
                <br><span class="dreExampleText"><bean:message key="common.help.date" /></span>
            </th>
        </tr>
    </c:if>
    <!-- ========================================================================= -->
    <tr class="<c:out value="${alternator.nextString}" />">
        <td class="data" nowrap><c:out value="${course.courseNumber}" /></td>
        <td class="data" nowrap><c:out value="${course.dateStarted}" /></td>
        <td class="data" nowrap><c:out value="${course.dateCompleted}" /></td>
    </tr>
    <c:if test="${status.last}">
        </table>
    </c:if>
</c:forEach>

<c:forEach items="${workflow.step}" var="step">
    <c:if test="${step.stepTypeID eq 'RequestCEVerification'}">
        <br />
        <c:if test="${!empty step.stepMessage}">
            <div class="dreInstructionDyn">
                <c:out value="${step.stepMessage}" escapeXml="false" />
            </div>
        </c:if>
    
        <div class="dreInstructionConfig">
            <c:import url="/pages/dynamicContent.jsp">
                <c:param name="page" value="RequestCEVerification_01.jsp" />
            </c:import>
        </div>
    </c:if>
</c:forEach>

<c:if test="${!empty renewLicenseFormBean.corporationStatusMsg}">
    <p>
    <h2>Individual Corporation Status</h2>
    <div class="dreInstructionDyn">
        ${renewLicenseFormBean.corporationStatusMsg}
    </div>
</c:if>

<c:if test="${!empty renewLicenseFormBean.entityAnswers}">
    <h2>Entity Questionnaire</h2>
    <table class="question_table" cellspacing="1" border="0" summary="list of all status">
    <c:forEach var="question" items="${renewLicenseFormBean.entityAnswers}" varStatus="status">
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
    </table>
</c:if>

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