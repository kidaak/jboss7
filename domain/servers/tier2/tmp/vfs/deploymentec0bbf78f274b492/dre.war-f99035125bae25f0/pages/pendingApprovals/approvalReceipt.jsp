<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="data_row_even" />
<c:set target="${alternator}" property="string" value="data_row_odd" />

<c:import url="/pages/pendingApprovals/detailsPopupScript.jsp" />

<html:form action="/services/confirmApprovalsFunction">
<html:hidden property="step" value="6"/>
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
    
<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="ConfirmViewPendingActions_01.jsp" />
</c:import>
</div>
    
<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<h2>Approvals</h2>
<table class="data_table" cellspacing="1" summary="list of all status">
    <tr>
        <th class="data_table_header_center" nowrap>Name</th>
        <th class="data_table_header_center" nowrap>&nbsp; License Number &nbsp;</th>
        <th class="data_table_header_center" nowrap>&nbsp;&nbsp;Office&nbsp;&nbsp;</th>
        <th class="data_table_header_center" nowrap>&nbsp; Action Requested &nbsp;</th>
        <th class="data_table_header_center" nowrap>&nbsp; Action Taken &nbsp;</th>
    </tr>
    <c:forEach items="${pendingApprovalsFormBean.pendingActions}" var="action" varStatus="status">
        <c:if test="${action.action ne 'N'}">
            <!-- ========================================================================= -->
            <tr class="<c:out value="${alternator.nextString}"/>">
                <td class="data" nowrap>${action.pendingAction.name}</td>
                <td class="data" nowrap>${action.pendingAction.licenseNumber}</td>
                <td class="data" nowrap>${action.pendingAction.licenseNumber}</td>
                <td class="data" nowrap>${action.pendingAction.actionTypeID}</td>
                <c:choose>
                    <c:when test="${action.action eq 'A'}">
                        <td class="data" nowrap>Approved</td>
                    </c:when>
                    <c:otherwise>
                        <td class="data" nowrap>Denied</td>
                    </c:otherwise>
                </c:choose>
                
            </tr>
        </c:if>
    </c:forEach>
    <c:if test="${empty pendingApprovalsFormBean.pendingActions[0]}">
        <tr class="<c:out value="${alternator.nextString}"/>">
            <td class="data" nowrap>None</td>
            <td class="data" nowrap></td>
            <td class="data" nowrap></td>
            <td class="data" nowrap></td>
        </tr>
    </c:if>
</table>
<br>

<h2><bean:message key='p22.title.payment'/></h2>
<div class="dreInstruction">
    Your confirmation number is ${confirmationNumber}.
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
