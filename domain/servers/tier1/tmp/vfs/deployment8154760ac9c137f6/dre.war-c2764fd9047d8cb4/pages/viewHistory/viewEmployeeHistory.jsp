<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="data_row_even" />
<c:set target="${alternator}" property="string" value="data_row_odd" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="employeeHistory_01.jsp" />
</c:import>
</div>

<div class="dreInstruction">
The following activities took place during the date range starting on ${viewHistoryFormBean.startDate} and ending on ${viewHistoryFormBean.endDate}.
</div>

<h2>Employee History</h2>
<table class="data_table" cellspacing="1" summary="list of all status">
<tr>
    <th class="data_table_header_center" nowrap>Name</th>
    <th class="data_table_header_center" nowrap>&nbsp;&nbsp;License Number&nbsp;&nbsp;</th>
    <th class="data_table_header_center" nowrap>&nbsp;&nbsp;Activity&nbsp;&nbsp;</th>
    <th class="data_table_header_center" nowrap>Date Submitted</th>
    <th class="data_table_header_center" nowrap>Date Due</th>
    <th class="data_table_header_center" nowrap>Date Approved</th>
    <th class="data_table_header_center" nowrap>Result</th>
</tr>
<c:choose>
    <c:when test="${history.historicalRequest.size() gt 0}" >
        <c:forEach items="${history.historicalRequest}" var="action">
        <!-- ========================================================================= -->
        <tr class="${alternator.nextString}">
            <td class="data" nowrap>${action.name}</td>
            <td class="data" nowrap>${action.licenseNumber}</td>
            <td class="data" nowrap>${action.actionTypeID}</td>
            <td class="data" nowrap>${action.dateSubmitted}</td>
            <td class="data" nowrap>${action.dateDue}</td>
            <td class="data" nowrap>${action.dateProcessed}</td>
            <td class="data" nowrap>${action.result}</td>
        </tr>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <!-- ========================================================================= -->
        <tr class="${alternator.nextString}">
            <td class="data" nowrap>None</td>
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
<html:form action="/services/DRENavigation">
    <html:submit property="home" styleClass="button" accesskey="a" tabindex="1"><bean:message key="common.button.home" /></html:submit>
	&nbsp;
    <html:submit property="submit.employeehistory" styleClass="button" accesskey="a" tabindex="2">View Another Date Range</html:submit>
</html:form>
