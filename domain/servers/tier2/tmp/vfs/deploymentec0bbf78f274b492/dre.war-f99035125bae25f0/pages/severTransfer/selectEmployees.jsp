<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="data_row_even" />
<c:set target="${alternator}" property="string" value="data_row_odd" />

<c:import url="/pages/severTransfer/detailsPopupScript.jsp" />

<c:import url="/pages/severTransfer/tablesScript.jsp" />

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

<html:form action="/services/selectSeverTransferEmployeesFunction" onsubmit="return checkSubmit()">
    <html:hidden property="step" value="2"/>
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
    
    <div class="dreInstructionConfig">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="SelectEmployeesManageEmployees_01.jsp" />
    </c:import>
    </div>
    
    <c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
    <c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
        <div class="dreInstructionDyn">
            <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
        </div>
    </c:if>
    
    <div class="fb1">
        <html:submit property="submit.sever" styleId="severButton" styleClass="button140" onclick="javascript:prepareTables(this)">Sever</html:submit>
        <c:if test="${!empty severTransferEmployeesBean.officeTransferList}">
            &nbsp;
            <html:submit property="submit.transfer" styleId="transferButton" styleClass="button140" onclick="javascript:prepareTables(this)">Transfer</html:submit>
        </c:if>
            &nbsp;
            <span style="visibility: hidden">
                <input type="button" id="cancelButton" class="button100" onclick="javascript:prepareTables(this)" value="Cancel" style="visibility.hidden" />
            </span>
    </div>
    
    <h2>Selectable Employees</h2>
    <table class="data_table" cellspacing="1" id="employeeTable">
        <tr>
            <th><input type="checkbox" name="selectall" onchange="javascript:selectAll(this);"></th>
            <th class="data_table_header_center" nowrap>Name</th>
            <th class="data_table_header_center" nowrap>&nbsp;License Number</th>
            <th class="data_table_header_center" nowrap>Comments</th>
        </tr>
        <logic:iterate id="employeeSelectionList" name="severTransferEmployeesBean" property="employeeSelectionList" indexId="index">
            <tr class="${alternator.nextString}">
                <logic:equal name="employeeSelectionList" property="employee.isSelectable" value="true">
                    <td class="data" nowrap><html:checkbox name="employeeSelectionList" property="selected" indexed="true" value="Y" /></td>
                </logic:equal>
                <logic:notEqual name="employeeSelectionList" property="employee.isSelectable" value="true">
                    <td class="data" nowrap></td>
                </logic:notEqual>
                <td class="data" nowrap><a href="javascript:viewDetails('<bean:write name="index" />','selectEmployee');"><bean:write name="employeeSelectionList" property="employee.name" /></a></td>
                <td class="data" nowrap><bean:write name="employeeSelectionList" property="employee.licenseNumber" /></td>
                <td class="data" nowrap>
                    <logic:notEmpty name="employeeSelectionList" property="employee.errorDescription">
                        <span class="errorMessage"><bean:write name="employeeSelectionList" property="employee.errorDescription" /></span>
                    </logic:notEmpty>
                    <logic:notEmpty name="employeeSelectionList" property="employee.comments">
                        <bean:write name="employeeSelectionList" property="employee.comments" />
                    </logic:notEmpty>
                </td>
            </tr>
        </logic:iterate>
    </table>
    <p>

    <c:if test="${!empty severTransferEmployeesBean.officeTransferList}">
        <h2>Selectable Offices</h2>
        <table class="data_table" cellspacing="1" id="employerTable">
            <tr>
                <th class="data_table_header_center" nowrap></th>
                <th class="data_table_header_center" nowrap>&nbsp;License Number</th>
                <th class="data_table_header_center" nowrap>&nbsp; Office Number &nbsp;</th>
                <th class="data_table_header_center" nowrap>&nbsp;Address</th>
                <th class="data_table_header_center" nowrap>&nbsp;City</th>
                <th class="data_table_header_center" nowrap>Comments</th>
            </tr>
            <logic:iterate id="officeTransferList" name="severTransferEmployeesBean" property="officeTransferList" indexId="index">
                <tr class="${alternator.nextString}">
                    <logic:equal name="officeTransferList" property="office.isSelectable" value="true">
                        <td class="data" nowrap><input type="radio" name="selectedOffice" value="<bean:write name="index" />" /></td>
                    </logic:equal>
                    <logic:notEqual name="officeTransferList" property="office.isSelectable" value="true">
                        <td class="data" nowrap></td>
                    </logic:notEqual>
                    <td class="data" nowrap><bean:write name="officeTransferList" property="office.licenseNumber" /></td>
                    <td class="data" nowrap align="center"><bean:write name="officeTransferList" property="office.officeNumber" /></td>
                    <td class="data" nowrap><bean:write name="officeTransferList" property="office.address" /></td>
                    <td class="data" nowrap><bean:write name="officeTransferList" property="office.city" /></td>
                    <td class="data" nowrap><bean:write name="officeTransferList" property="office.comments" /></td>
                </tr>
            </logic:iterate>
        </table>
    </c:if>

    <div class="fb1">
        <html:submit property="submit.next" styleClass="button100" accesskey="a" onclick="javascript:prepareTables(this)"><bean:message key="common.button.continue" /></html:submit>
        &nbsp;
        <html:submit property="submit.previous" styleClass="button100" accesskey="a" onclick="javascript:prepareTables(this)"><bean:message key="common.button.back" /></html:submit>
    </div>
    
</html:form>
