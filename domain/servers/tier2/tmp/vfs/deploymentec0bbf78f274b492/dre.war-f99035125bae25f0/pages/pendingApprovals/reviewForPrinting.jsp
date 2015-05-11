<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="data_row_even" />
<c:set target="${alternator}" property="string" value="data_row_odd" />

<c:import url="/pages/pendingApprovals/detailsPopupScript.jsp" />
    
<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="ReviewLicensesForPrintingViewPendingActions_01.jsp" />
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
        <c:if test="${action.action eq 'A'}">
            <!-- ========================================================================= -->
            <tr class="<c:out value="${alternator.nextString}"/>">
                <td class="data" nowrap>
                    <a href="javascript:viewDetails('${status.index}');">${action.pendingAction.name}</a>
                </td>
                <td class="data" nowrap>${action.pendingAction.licenseNumber}</td>
                <td class="data" nowrap>${action.pendingAction.office}</td>
                <td class="data" nowrap>${action.pendingAction.actionTypeID}</td>
                <td class="data" nowrap>Approved</td>
            </tr>
        </c:if>
    </c:forEach>
</table>
<br>

<table>
    <tr>
        <td>
            <html:form action="/services/prepareForPrintingApprovalFunction">                
                <input type="hidden" name="stepIndex" value="${workflow.currentStepIndex}" />
                <html:submit property="submit.next" styleClass="button" accesskey="a" tabindex="1">Prepare Licenses for Printing</html:submit>
            </html:form>
        </td>
        <td>&nbsp;</td>
        <td>
            <html:form action="/services/confirmAllMailedApprovalFunction">
                <input type="hidden" name="stepIndex" value="${workflow.currentStepIndex}" />
                <html:submit property="submit.allMailed" styleClass="button" accesskey="a" tabindex="2">Exit Without Printing Licenses</html:submit>
            </html:form>
        </td>
    </tr>
</table>

