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

<html:form action="/services/selectInactiveOfficeIndividualRenewLicenseFunction">
    <html:hidden property="step" value="6"/>
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

    <div class="dreInstructionConfig">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="SelectInactiveOfficesToRenewEntityRenewal_01.jsp" />
    </c:import>
    </div>
    
    <c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
    <c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
        <div class="dreInstructionDyn">
            <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
        </div>
    </c:if>
    
    <c:if test="${!empty renewLicenseFormBean.inactiveOfficeList}">
        <h2>Inactive Offices</h2>
        <table class="data_table" cellspacing="1">
            <tr>
                <th class="data_table_header_center" nowrap><input type="checkbox" name="selectall" onchange="javascript:selectAll(this);"></th>
                <th class="data_table_header_center" nowrap>&nbsp;License Number</th>
                <th class="data_table_header_center" nowrap>&nbsp; Office Number &nbsp;</th>
                <th class="data_table_header_center" nowrap>&nbsp;Address</th>
                <th class="data_table_header_center" nowrap>&nbsp;City</th>
            </tr>
            <logic:iterate id="inactiveOfficeList" name="renewLicenseFormBean" property="inactiveOfficeList">
                <tr class="${alternator.nextString}">
                    <logic:equal name="inactiveOfficeList" property="office.isSelectable" value="true">
                        <td class="data" nowrap><html:checkbox name="inactiveOfficeList" property="selected" indexed="true" value="Y" /></td>
                    </logic:equal>
                    <logic:notEqual name="inactiveOfficeList" property="office.isSelectable" value="true">
                        <td class="data" nowrap></td>
                    </logic:notEqual>
                    <td class="data" nowrap><bean:write name="inactiveOfficeList" property="office.licenseNumber" /></td>
                    <td class="data" nowrap align="center"><bean:write name="inactiveOfficeList" property="office.officeNumber" /></td>
                    <td class="data" nowrap><bean:write name="inactiveOfficeList" property="office.address" /></td>
                    <td class="data" nowrap><bean:write name="inactiveOfficeList" property="office.city" /></td>
                </tr>
            </logic:iterate>
        </table>
    </c:if>

    <br>
    <html:submit property="submit.next" styleClass="button100" accesskey="a"><bean:message key="common.button.continue" /></html:submit>

</html:form>
