<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="data_row_even" />
<c:set target="${alternator}" property="string" value="data_row_odd" />


<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="ConfirmPrintLicensesViewPendingActions_01.jsp" />
</c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<table>
    <tr>
        <td>
            <html:form action="/services/confirmPrintedApprovalFunction">                
                <input type="hidden" name="stepIndex" value="${workflow.currentStepIndex}" />
                <html:submit property="submit.next" styleClass="button" accesskey="a" tabindex="1">All Licenses Printed</html:submit>
            </html:form>
        </td>
        <td>&nbsp;</td>
        <td>
            <html:form action="/services/confirmPrintedApprovalFunction">                
                <input type="hidden" name="stepIndex" value="${workflow.currentStepIndex}" />
                <html:submit property="submit.previous" styleClass="button" accesskey="a" tabindex="2">Retry Printing Licenses</html:submit>
            </html:form>
        </td>
        <td>&nbsp;</td>
        <td>
            <html:form action="/services/confirmAllMailedApprovalFunction">
                <input type="hidden" name="stepIndex" value="${workflow.currentStepIndex}" />
                <html:submit property="submit.allMailed" styleClass="button" accesskey="a" tabindex="3">Exit and Mail All Licenses</html:submit>
            </html:form>
        </td>
    </tr>
</table>
