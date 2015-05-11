<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table class="dataReview">
<c:choose>
    <c:when test="${!empty userInfo.userDetail.licenseDetail.employmentDetail}">
        <tr>
            <td class="dataReviewSection" colspan="2"><bean:message key="common.title.name" /></td>
        </tr>
        <tr>
            <td class="dataReviewLabel"><bean:message key="common.label.legal" /><bean:message key="common.label.sep" /></td>
            <td class="dataReviewData"><c:out value="${userInfo.userDetail.licenseDetail.employmentDetail.employer.legalName}" /></td>
        </tr>
        <tr>
            <td class="dataReviewLabel">DBA<bean:message key="common.label.sep" /></td>
            <td class="dataReviewData"><c:out value="${userInfo.userDetail.licenseDetail.employmentDetail.employer.DBAName}" /></td>
        </tr>
        <tr>
            <td class="dataReviewLabel">License Number<bean:message key="common.label.sep" /></td>
            <td class="dataReviewData"><c:out value="${userInfo.userDetail.licenseDetail.employmentDetail.employer.licenseNumber}" /></td>
        </tr>
        <tr>
            <td class="dataReviewLabel">Employment Type<bean:message key="common.label.sep" /></td>
            <td class="dataReviewData"><c:out value="${userInfo.userDetail.licenseDetail.employmentDetail.employmentTypeDescription}" /></td>
        </tr>
        <tr>
            <td class="dataReviewSection" colspan="2">Contact Information</td>
        </tr>
        <tr>
            <td class="dataReviewLabel">Phone Number<bean:message key="common.label.sep" /></td>
            <td class="dataReviewData"><c:out value="${userInfo.userDetail.licenseDetail.employmentDetail.employer.phoneNumber}" /></td>
        </tr>
        <tr>
            <td class="dataReviewSection" colspan="2">Mailing Address</td>
        </tr>
        <tr>
            <td class="dataReviewLabel">Address Line 1<bean:message key="common.label.sep" /></td>
            <td class="dataReviewData"><c:out value="${userInfo.userDetail.licenseDetail.employmentDetail.employer.mailingAddress.line1}" />
        </td>
        </tr>
        <tr>
            <td class="dataReviewLabel">Address Line 2<bean:message key="common.label.sep" /></td>
            <td class="dataReviewData"><c:out value="${userInfo.userDetail.licenseDetail.employmentDetail.employer.mailingAddress.line2}" /></td>
        </tr>
        <tr>
            <td class="dataReviewLabel">County<bean:message key="common.label.sep" /></td>
            <td class="dataReviewData"><c:out value="${userInfo.userDetail.licenseDetail.employmentDetail.employer.mailingAddress.county}" /></td>
        </tr>
        <tr>
            <td class="dataReviewLabel">City<bean:message key="common.label.sep" /></td>
            <td class="dataReviewData"><c:out value="${userInfo.userDetail.licenseDetail.employmentDetail.employer.mailingAddress.city}" /></td>
        </tr>
        <tr>
            <td class="dataReviewLabel">State<bean:message key="common.label.sep" /></td>
            <td class="dataReviewData"><c:out value="${userInfo.userDetail.licenseDetail.employmentDetail.employer.mailingAddress.state}" /></td>
        </tr>
        <tr>
            <td class="dataReviewLabel">ZIP Code<bean:message key="common.label.sep" /></td>
            <td class="dataReviewData"><c:out value="${userInfo.userDetail.licenseDetail.employmentDetail.employer.mailingAddress.ZIPCode}" /></td>
        </tr>
    </c:when>
    <c:otherwise>
        <tr>
            <td class="dataReviewLabel">No Employing Broker</td>
            <td class="dataReviewData"></td>
        </tr>
    </c:otherwise>
</c:choose>
</table>