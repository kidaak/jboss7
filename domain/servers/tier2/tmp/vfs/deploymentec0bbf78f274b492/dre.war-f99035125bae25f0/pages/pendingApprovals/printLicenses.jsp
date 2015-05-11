<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="houston-util" prefix="util" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="data_row_even" />
<c:set target="${alternator}" property="string" value="data_row_odd" />

<c:import url="/pages/pendingApprovals/detailsPopupScript.jsp" />

<html:form action="/services/printAllApprovalsFunction">
<input type="hidden" name="stepIndex" value="${workflow.currentStepIndex}" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="PrintLicensesViewPendingActions_01.jsp" />
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
        <th class="data_table_header_center" nowrap>&nbsp; Action &nbsp;</th>
    </tr>
    <c:forEach items="${pendingApprovalsFormBean.pendingActions}" var="action" varStatus="status">
        <c:if test="${action.action eq 'A'}">
            <!-- ========================================================================= -->
            <tr class="<c:out value="${alternator.nextString}"/>">
                <td class="data" nowrap>
                    <a href="javascript:viewDetails('${status.index}');">${action.pendingAction.name}</a>
                </td>
                <td class="data" nowrap>${action.pendingAction.licenseNumber}</td>
                <td class="data" nowrap>${action.pendingAction.office}</td>
                <td class="data" nowrap>${action.pendingAction.actionTypeID}</td>
            </tr>
        </c:if>
    </c:forEach>
</table>
<br />
<input class="button" style="margin-left:10px;" type="submit" value="Print all Licenses" 
             onClick="window.open('<util:propertyMgr key="StaticPath"/>pdf/${userInfo.userDetail.sessionDetail.sessionID}-${workflow.workflowID}.pdf', '${userInfo.userDetail.sessionDetail.sessionID}${workflow.workflowID}', 'scrollbars, toolbar=false, menubar=false' );">
</html:form>