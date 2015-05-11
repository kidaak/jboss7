<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="license" value="${userInfo.userDetail.licenseDetail}" scope="request" />

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="110baData_01.jsp" />
</c:import>
</div>


<table class="dataReview" >
    <tr>
        <td class="dataReviewSection" colspan="2">Business Information</td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="ba.p110.label.brokerName"/><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            <c:out value="${license.personalDetail.lastName}"/>,
            <c:out value="${license.personalDetail.firstName}"/>
            <c:out value="${license.personalDetail.middleName}"/>
        </td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="ba.p110.label.license"/><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            <c:out value="${license.licenseNumber}"/>
        </td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="ba.p110.label.businessName"/><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            <c:out value="${license.employmentDetail.employer.legalName}"/> / <c:out value="${license.employmentDetail.employer.DBAName}"/>
        </td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="ba.p110.label.brokerageLicense"/><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            <c:out value="${license.employmentDetail.employer.licenseNumber}"/>
        </td>
    </tr>
    <tr>
        <td class="dataReviewSection" colspan="2">Business Address</td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="ba.p110.label.brokerPhone"/><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            <c:out value="${license.employmentDetail.employer.phoneNumber}"/>
        </td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="common.label.add1"/><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            <c:out value="${license.employmentDetail.employer.businessAddress.line1}"/>
        </td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="common.label.add2"/><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            <c:out value="${license.employmentDetail.employer.businessAddress.line2}"/>
        </td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="common.label.city"/><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            <c:out value="${license.employmentDetail.employer.businessAddress.city}"/>
        </td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="common.label.state"/><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            <c:out value="${license.employmentDetail.employer.businessAddress.state}"/>
        </td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="common.label.zip"/><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            <c:out value="${license.employmentDetail.employer.businessAddress.ZIPCode}"/>
        </td>
    </tr>
</table>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
<html:form action="/audit/110baData">
<html:hidden property="page" value="110"/>
<input type="hidden" name="saveForm"/>
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
<div class="fb1">
    <html:submit styleClass="button100" property="submit.next"><bean:message key="common.button.continue" /></html:submit>
</div>
</html:form>
