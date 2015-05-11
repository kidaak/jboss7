<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="data_row_even" />
<c:set target="${alternator}" property="string" value="data_row_odd" />

<c:import url="/pages/pendingApprovals/detailsPopupScript.jsp" />

<logic:messagesPresent>
<div class="errorMessage"><bean:message key="errors.validation"/>
    <ul>
        <html:messages id="msg">
            <li><bean:write name="msg"/><br></li>
        </html:messages>
    </ul>
</div>
</logic:messagesPresent>

<logic:present name="summary">
    <div class="errorMessage">
        <c:out value="${summary.message}" escapeXml="false" />
    </div>
</logic:present>

<html:form action="/services/submitPendingApprovalsFunction">
<html:hidden property="step" value="1"/>
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="SubmitApprovalsViewPendingActions_01.jsp" />
</c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<h2>Approvals</h2>
<table class="data_table" cellspacing="1" summary="list of all transactions waiting for your action">
    <tr>
        <th class="data_table_header_center" nowrap>Name</th>
        <th class="data_table_header_center" nowrap>&nbsp;&nbsp;License Number&nbsp;&nbsp;</th>
        <th class="data_table_header_center" nowrap>&nbsp;&nbsp;Office&nbsp;&nbsp;</th>
        <th class="data_table_header_center" nowrap>Approval Type</th>
        <th class="data_table_header_center" nowrap>Date Due<span class="dreRequired">*</span></th>
        <th class="data_table_header_center" nowrap>&nbsp;&nbsp;Approve&nbsp;&nbsp;</th>
        <th class="data_table_header_center" nowrap>&nbsp;&nbsp;Deny&nbsp;&nbsp;</th>
        <th class="data_table_header_center" nowrap>&nbsp;&nbsp;None&nbsp;&nbsp;</th>
    </tr>
<c:choose>
<c:when test="${!empty pendingApprovalsFormBean.pendingActions[0]}">
    <logic:iterate id="pendingActions" name="pendingApprovalsFormBean" property="pendingActions" indexId="index">
    <!-- ========================================================================= -->
    <tr class="<c:out value="${alternator.nextString}"/>">
        <td class="data" nowrap><a href="javascript:viewDetails('<bean:write name="index" />');"><bean:write name="pendingActions" property="pendingAction.name" /></a></td>
        <td class="data" nowrap><bean:write name="pendingActions" property="pendingAction.licenseNumber" /></td>
        <td class="data" nowrap><bean:write name="pendingActions" property="pendingAction.office" /></td>
        <td class="data" nowrap><bean:write name="pendingActions" property="pendingAction.actionTypeID" /></td>
        <td class="data" nowrap><bean:write name="pendingActions" property="pendingAction.dateDue" /></td>
        <td class="data" nowrap align="center"><html:radio name="pendingActions" property="action" indexed="true" value="A" /></td>
        <td class="data" nowrap align="center"><html:radio name="pendingActions" property="action" indexed="true" value="D" /></td>
        <td class="data" nowrap align="center"><html:radio name="pendingActions" property="action" indexed="true" value="N" /></td>
    </tr>
    </logic:iterate>
</c:when>
<c:otherwise>
    <!-- ========================================================================= -->
    <tr class="<c:out value="${alternator.nextString}"/>">
        <td class="data" nowrap>None</td>
        <td class="data" nowrap></td>
        <td class="data" nowrap></td>
        <td class="data" nowrap></td>
        <td class="data" nowrap></td>
        <td class="data" nowrap></td>
        <td class="data" nowrap></td>
        <td class="data" nowrap></td>
    </tr>
</c:otherwise>
</c:choose>
</table>

<br>
<c:if test="${!empty pendingApprovalsFormBean.pendingActions[0]}">
    <html:submit property="submit.next" styleClass="button100" accesskey="a" tabindex="1"><bean:message key="common.button.continue" /></html:submit>
</c:if>
</html:form>

<c:if test="${empty pendingApprovalsFormBean.pendingActions[0]}">
    <html:form action="/services/DRENavigation">
        <html:submit property="home" styleClass="button" accesskey="a" tabindex="1"><bean:message key="common.button.home" /></html:submit>
    </html:form>
</c:if>
