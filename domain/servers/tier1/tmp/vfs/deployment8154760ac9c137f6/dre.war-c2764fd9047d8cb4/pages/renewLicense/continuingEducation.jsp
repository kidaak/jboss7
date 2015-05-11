<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
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

<html:form action="/services/submitContinuingEducationRenewLicenseFunction" method="post">
<html:hidden property="step" value="3"/>
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="SubmitContinuingEducation_01.jsp" />
</c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<logic:present name="summary">
    <div class="errorMessage">
        <c:out value="${summary.message}" escapeXml="false" />
    </div>
</logic:present>

<h2><bean:message key="p45.title" /></h2>
<table class="data_table" cellspacing="1" summary="list of all status">
    <tr>
        <th class="data_table_header_center" nowrap><bean:message key="p45.table.title.course" /></th>
        <th class="data_table_header_center" nowrap><bean:message key="p45.table.title.datestart" />
            <br><span class="dreExampleText"><bean:message key="common.help.date" /></span>
        </th>
        <th class="data_table_header_center" nowrap><bean:message key="p45.table.title.datecomp" />
            <br><span class="dreExampleText"><bean:message key="common.help.date" /></span>
        </th>
        <c:if test="${continuingEducationFormBean.hasCourseErrors}">
            <th class="data_table_header_center" nowrap>Error</th>
        </c:if>
    </tr>
    <logic:iterate name="renewLicenseFormBean" property="courses" id="courses">
    <!-- ========================================================================= -->
    <tr class="${alternator.nextString}">
        <td class="data" nowrap><html:text name="courses" property="courseNumber" size="13" maxlength="15" indexed="true" /></td>
        <td class="data" nowrap><html:text name="courses" property="dateStarted" size="13" indexed="true" /></td>
        <td class="data" nowrap><html:text name="courses" property="dateCompleted" size="13" indexed="true" /></td>
        <c:if test="${renewLicenseFormBean.hasCourseErrors}">
            <logic:notEmpty name="courses" property="errorMessage">
                <td class="data" nowrap><span class="dreError"><bean:write name="courses" property="errorMessage" /></span></td>
            </logic:notEmpty>
            <logic:empty name="courses" property="errorMessage">
                <td class="data" nowrap></td>
            </logic:empty>
        </c:if>
    </tr>
    </logic:iterate>
    <!-- ========================================================================= -->
    <tr class="${alternator.nextString}">
        <td class="data" nowrap colspan="3">
            <html:cancel styleClass="button" accesskey="a"><bean:message key="p45.button.add" /></html:cancel>
        </td>
        <!--<td class="data" nowrap>&nbsp;</td>-->
        <c:if test="${renewLicenseFormBean.hasCourseErrors}">
            <td class="data" nowrap>&nbsp;</td>
        </c:if>
    </tr>
    <!-- ========================================================================= -->
</table>
<br>
<html:submit property="submit.next" styleClass="button100" accesskey="a"><bean:message key="common.button.continue" /></html:submit>
&nbsp;
<html:submit property="submit.previous" styleClass="button100" accesskey="a"><bean:message key="common.button.back" /></html:submit>
</html:form>
