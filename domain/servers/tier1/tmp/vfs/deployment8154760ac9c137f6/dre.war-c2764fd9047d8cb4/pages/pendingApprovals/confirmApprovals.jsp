<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="data_row_even" />
<c:set target="${alternator}" property="string" value="data_row_odd" />

<c:import url="/pages/pendingApprovals/detailsPopupScript.jsp" />

<html:form action="/services/confirmPendingApprovalsFunction">
<html:hidden property="step" value="2"/>
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="ConfirmApprovalsViewPendingActions_01.jsp" />
</c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<p>
<h2>Approvals</h2>
<table class="data_table" cellspacing="1" summary="list of all status">
    <tr>
        <th class="data_table_header_center" nowrap>Name</th>
        <th class="data_table_header_center" nowrap>&nbsp;&nbsp;License Number&nbsp;&nbsp;</th>
        <th class="data_table_header_center" nowrap>&nbsp;&nbsp;Office&nbsp;&nbsp;</th>
        <th class="data_table_header_center" nowrap>Action</th>
        <th class="data_table_header_center" nowrap>&nbsp;&nbsp;License Action&nbsp;&nbsp;</th>
    </tr>
    <c:forEach items="${pendingApprovalsFormBean.pendingActions}" var="action" varStatus="status">
    <!-- ========================================================================= -->
        <c:if test="${action.action ne 'N'}">
            <tr class="<c:out value="${alternator.nextString}"/>">
                <td class="data" nowrap>
                    <a href="javascript:viewDetails('${status.index}');">${action.pendingAction.name}</a>
                </td>
                <td class="data" nowrap>${action.pendingAction.licenseNumber}</td>
                <td class="data" nowrap>${action.pendingAction.office}</td>
                <td class="data" nowrap>${action.pendingAction.actionTypeID}</td>
                <c:choose>
                    <c:when test="${action.action eq 'A'}">
                        <td class="data" nowrap>Approved</td>
                    </c:when>
                    <c:when test="${action.action eq 'D'}">
                        <td class="data" nowrap>Denied</td>
                    </c:when>
                </c:choose>
            </tr>
        </c:if>
    </c:forEach>
</table>

<br>
    <html:submit property="submit.next" styleClass="button100" accesskey="a" tabindex="1"><bean:message key="common.button.continue" /></html:submit>
    &nbsp;
    <html:submit property="submit.previous" styleClass="button100" accesskey="a" tabindex="2"><bean:message key="common.button.back" /></html:submit>
</html:form>
