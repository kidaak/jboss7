<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table class="dataReview" >
    <tr>
        <td class="dataReviewSection" colspan="2"><bean:message key="common.title.lic" /></td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Name<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            ${license.personalDetail.lastName},
            ${license.personalDetail.firstName}<c:if test="${!empty license.personalDetail.middleName}">, ${license.personalDetail.middleName}</c:if>
        </td>
    </tr>
    <tr>
        <td class="dataReviewLabel">License Number<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.licenseNumber}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Type<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            ${license.landType}  ${license.licenseType}
        </td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Status<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.licenseStatus}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Expiration Date<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.expireDate}</td>
    </tr>
    <tr>
        <td class="dataReviewSection" colspan="2"><bean:message key="common.title.contact" /></td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="common.label.email" /><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.email}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel"><bean:message key="common.label.phonehome" /><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homePhone}</td>
    </tr>
    <tr>
        <td class="dataReviewSection" colspan="2">Home Address</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Address Line 1<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homeAddress.line1}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Address Line 2<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homeAddress.line2}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">County<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homeAddress.county}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">City<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homeAddress.city}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">State<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homeAddress.state}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">ZIP Code<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homeAddress.ZIPCode}</td>
    </tr>
    <tr>
        <td class="dataReviewSection" colspan="2">Mailing Address</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Address Line 1<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homeMailingAddress.line1}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">Address Line 2<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homeMailingAddress.line2}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">County<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homeMailingAddress.county}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">City<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homeMailingAddress.city}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">State<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homeMailingAddress.state}</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">ZIP Code<bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">${license.personalDetail.homeMailingAddress.ZIPCode}</td>
    </tr>
</table>