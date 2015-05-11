<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="data_row_even" />
<c:set target="${alternator}" property="string" value="data_row_odd" />

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

<html:form action="/services/reviewSeverTransferEmployeesFunction">
    <html:hidden property="step" value="5"/>
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
    
    <div class="dreInstructionConfig">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="ReviewManageEmployees_01.jsp" />
    </c:import>
    </div>
    
    <c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
    <c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
        <div class="dreInstructionDyn">
            <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
        </div>
    </c:if>
    
    <h2>Employee Actions</h2>
    <table class="data_table" cellspacing="1">
        <tr>
            <th class="data_table_header_center" nowrap>Name</th>
            <th class="data_table_header_center" nowrap>&nbsp;License Number</th>
            <th class="data_table_header_center" nowrap>Comments</th>
        </tr>
        <logic:iterate id="employeeBasket" name="severTransferEmployeesBean" property="employeeBasket">
            <tr class="${alternator.nextString}">
                <td class="data" nowrap><bean:write name="employeeBasket" property="employee.name" /></td>
                <td class="data" nowrap><bean:write name="employeeBasket" property="employee.licenseNumber" /></td>
                <td class="data" nowrap><bean:write name="employeeBasket" property="employee.comments" /></td>
            </tr>
        </logic:iterate>
    </table>
    
    <c:if test="${!empty severTransferEmployeesBean.closedOffices}">
        <h2>Closing Offices</h2>
        <table class="data_table" cellspacing="1">
            <tr>
                <th class="data_table_header_center" nowrap>&nbsp;License Number</th>
                <th class="data_table_header_center" nowrap>&nbsp; Office Number &nbsp;</th>
                <th class="data_table_header_center" nowrap>&nbsp;Address</th>
                <th class="data_table_header_center" nowrap>&nbsp;City</th>
            </tr>
            <c:forEach items="${severTransferEmployeesBean.closedOffices}" var="office">
                <tr class="${alternator.nextString}">
                    <td class="data" nowrap>${office.licenseNumber}</td>
                    <td class="data" nowrap align="center">${office.officeNumber}</td>
                    <td class="data" nowrap>${office.address}</td>
                    <td class="data" nowrap>${office.city}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <div class="fb1">
        <html:submit property="submit.next" styleClass="button100" accesskey="a"><bean:message key="common.button.continue" /></html:submit>
        &nbsp;
        <html:submit property="submit.previous" styleClass="button100" accesskey="a"><bean:message key="common.button.back" /></html:submit>
    </div>
    
</html:form>
