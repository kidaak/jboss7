<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<logic:messagesPresent>
<div class="errorMessage"><bean:message key="errors.validation"/>
  <ul>
  <html:messages id="msg">
    <li><bean:write name="msg"/><br></li>
  </html:messages>
  </ul>
</div>
</logic:messagesPresent>

<html:form action="/services/submitEntityCorporationStatusIndividualLicenseRenewFunction" method="post">
<html:hidden property="step" value="9"/>
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="EntityCorporationStatusEntityRenewal_01.jsp" />
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

<table cellpadding="0" cellspacing="1" border="0">
    <tr>
        <td align="right" valign="top" nowrap>
            <html:checkbox property="continueEntityCorporationStatus" value="Y" styleId="status" />
        </td>
        <td nowrap>&nbsp;&nbsp;</td>
        <td valign="bottom" >
            <div class="dreInstructionConfig">
                <label for="status">
                    <c:import url="/pages/dynamicContent.jsp">
                        <c:param name="page" value="EntityCorporationStatusEntityRenewal_02.jsp" />
                    </c:import>
                </label>
            </div>
        </td>
    </tr>
</table>

<br>
<div class="fb1"> 
    <html:submit property="submit.next" styleClass="button100" accesskey="a"><bean:message key="common.button.continue" /></html:submit>
    &nbsp;
    <html:submit property="submit.previous" styleClass="button100" accesskey="a"><bean:message key="common.button.back" /></html:submit>
</div>
</html:form>
