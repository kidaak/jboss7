<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html:form action="/services/reviewChangeEmploymentFunction">
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="ReviewChangeEmployer_01.jsp" />
</c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<c:if test="${!empty userInfo.userDetail.licenseDetail.employmentDetail}">
    <h2>Sever Notification</h2>
    <div class="dreInstructionConfig">
        <c:import url="/pages/dynamicContent.jsp">
            <c:param name="page" value="AttestationSeverEmployment_01.jsp" />
        </c:import>
    </div>
</c:if>

<h2>Employment Information</h2>
<table border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
    </tr>
    <tr>
        <td class="dataReviewSection" colspan="2"><bean:message key="common.title.name" /></td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="common.label.legal" /><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.legalName}" /></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">DBA<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.DBAName}" /></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">License Number<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.licenseNumber}" /></td>
    </tr>
    <tr>
        <td class="dataReviewSection" colspan="2">Contact Information</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Phone Number<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.phoneNumber}"/></td>
    </tr>
    <tr>
        <td class="dataReviewSection" colspan="2">Mailing Address</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Address Line 1<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.mailingAddress.line1}"/></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Address Line 2<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.mailingAddress.line2}"/></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">County<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.mailingAddress.county}"/></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">City<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.mailingAddress.city}"/></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">State<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.mailingAddress.state}"/></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">ZIP Code<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.mailingAddress.ZIPCode}"/></td>
    </tr>
<c:if test="${!empty changeEmploymentFormBean.requestedEmployer.requestedEmployer.businessAddress}">
    <tr>
        <td class="dataReviewSection" colspan="2">Business Address</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Address Line 1<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.businessAddress.line1}"/></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Address Line 2<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.businessAddress.line2}"/></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">County<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.businessAddress.county}"/></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">City<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.businessAddress.city}"/></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">State<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.businessAddress.state}"/></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">ZIP Code<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData"><c:out value="${changeEmploymentFormBean.requestedEmployer.requestedEmployer.businessAddress.ZIPCode}"/></td>
    </tr>
</c:if>

            
    <!-- ============================================ -->
    <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="20" alt=""></td></tr>
    <!-- ============================================ -->
    <tr>
        <td colspan="2">
            <html:submit property="submit.next" styleClass="button100" accesskey="a" tabindex="1"><bean:message key="common.button.continue" /></html:submit>
            &nbsp; 
            <html:submit property="submit.previous" styleClass="button100" accesskey="a" tabindex="2"><bean:message key="common.button.back" /></html:submit>
        </td>
    </tr>
</table>

</html:form>