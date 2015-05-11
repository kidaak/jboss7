<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="data_row_even" />
<c:set target="${alternator}" property="string" value="data_row_odd" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="30viewStatus_01.jsp" />
</c:import>
</div>
<br>
<table class="data_table" cellspacing="1" summary="list of all transactions that are pending">
<tr>
    <th class="data_table_header_center" nowrap>Name</th>
    <th class="data_table_header_center" nowrap>&nbsp;&nbsp;License Number&nbsp;&nbsp;</th>
    <th class="data_table_header_center" width="140" nowrap>Action</th>
    <th class="data_table_header_center" nowrap>&nbsp;&nbsp;Date Submitted&nbsp;&nbsp;</th>
    <th class="data_table_header_center" nowrap>&nbsp;&nbsp;Date Due&nbsp;&nbsp;</th>
</tr>
<c:if test="${!empty userInfo.userDetail.pendingChange}">
    <c:forEach items="${userInfo.userDetail.pendingChange}" var="action">
    <!-- ========================================================================= -->
    <tr class="<c:out value="${alternator.nextString}"/>">
        <td class="data" nowrap><c:out value="${action.name}" /></td>
        <td class="data" nowrap><c:out value="${action.licenseNumber}" /></td>
        <td class="data" nowrap><c:out value="${action.actionTypeID}" /></td>
        <td class="data" nowrap><c:out value="${action.dateSubmitted}" /></td>
        <td class="data" nowrap>&nbsp;<c:out value="${action.dateDue}" />&nbsp;</td>
    </tr>
    </c:forEach>
</c:if>
<c:if test="${empty userInfo.userDetail.pendingChange}">
    <tr class="<c:out value="${alternator.nextString}"/>">
        <td class="data" nowrap>None</td>
        <td class="data" nowrap>&nbsp;</td>
        <td class="data" nowrap>&nbsp;</td>
        <td class="data" nowrap>&nbsp;</td>
        <td class="data" nowrap>&nbsp;</td>
    </tr>
</c:if>
</table>
<br>
<html:form action="/services/DRENavigation">
    <html:submit property="home" styleClass="button" accesskey="a" tabindex="1"><bean:message key="common.button.home" /></html:submit>
</html:form>
