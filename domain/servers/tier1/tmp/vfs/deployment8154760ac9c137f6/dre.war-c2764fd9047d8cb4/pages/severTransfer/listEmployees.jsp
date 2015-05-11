<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="data_row_even" />
<c:set target="${alternator}" property="string" value="data_row_odd" />

<c:import url="/pages/severTransfer/detailsPopupScript.jsp" />

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
    <p>&nbsp;</p>
</logic:present>

<html:form action="/services/listSeverTransferEmployeesFunction">
    <html:hidden property="step" value="3"/>
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
    
    <div class="dreInstructionConfig">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="EmployeesBasketManageEmployees_01.jsp" />
    </c:import>
    </div>
    
    <c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
    <c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
        <div class="dreInstructionDyn">
            <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
        </div>
    </c:if>
    
    <div class="fb1">
        <html:submit property="submit.deselect" styleClass="button">Cancel Action</html:submit>
        &nbsp;
        <html:submit property="submit.search" styleClass="button">Search for More Employees</html:submit>
    </div>
    
    <h2>Employee Actions</h2>
    <table class="data_table" cellspacing="1">
        <tr>
            <th class="data_table_header_center" nowrap><input type="checkbox" name="selectall" onchange="javascript:selectAll(this);"></th>
            <th class="data_table_header_center" nowrap>Name</th>
            <th class="data_table_header_center" nowrap>&nbsp;License Number</th>
            <th class="data_table_header_center" nowrap>Comments</th>
        </tr>
        <logic:iterate id="employeeBasket" name="severTransferEmployeesBean" property="employeeBasket" indexId="index">
            <tr class="${alternator.nextString}">
                <logic:equal name="employeeBasket" property="employee.isSelectable" value="true">
                    <td class="data" nowrap><html:checkbox name="employeeBasket" property="selected" indexed="true" value="Y" /></td>
                </logic:equal>
                <logic:notEqual name="employeeBasket" property="employee.isSelectable" value="true">
                    <td class="data" nowrap></td>
                </logic:notEqual>
                <td class="data" nowrap><a href="javascript:viewDetails('<bean:write name="index" />','employeeBasket');"><bean:write name="employeeBasket" property="employee.name" /></a></td>
                <td class="data" nowrap><bean:write name="employeeBasket" property="employee.licenseNumber" /></td>
                <td class="data" nowrap><bean:write name="employeeBasket" property="employee.comments" /></td>
            </tr>
        </logic:iterate>
        <c:if test="${empty severTransferEmployeesBean.employeeBasket}">
            <tr class="${alternator.nextString}">
                <td class="data" nowrap>None</td>
                <td class="data" nowrap></td>
                <td class="data" nowrap></td>
                <td class="data" nowrap></td>
            </tr>
        </c:if>
    </table>

    <div class="fb1">        
        <html:submit property="submit.next" styleClass="button100" accesskey="a"><bean:message key="common.button.continue" /></html:submit>
        &nbsp;
        <html:submit property="submit.previous" styleClass="button100" accesskey="a"><bean:message key="common.button.back" /></html:submit>
    </div>
    
</html:form>
