<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="dataReviewSection2">Miscellaneous Information</div>
<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
<table class="dataReview">
    <tr>
        <td class="dataReviewLabel">
            Is this a Home Office?<bean:message key="common.label.sep" />
        </td>
        <td class="dataReviewData">
            <c:out value="${brokerAuditFormBean.homeOffice.answer}"/>
        </td>
    </tr>
</table>
<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
<table class="dataReview" >
    <tr>
        <td class="dataReviewLabel">
            Number of salespersons and associate brokers licensed to the brokerage<bean:message key="common.label.sep" />
    		<br><span class="dreExampleText">Do <em>not</em> include the Designated Broker.</span>
        </td>
        <td valign="top" class="dataReviewData">
            <c:out value="${brokerAuditFormBean.numLicensedEmployees}"/>
        </td>
    </tr>
</table>
<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
<table class="dataReview" >
    <tr>
        <td class="dataReviewLabel">
            Number of unlicensed employees to the brokerage<bean:message key="common.label.sep" />
            <br><span class="dreExampleText">Part-time and full-time.</span>
        </td>
        <td valign="top" class="dataReviewData">
            <c:out value="${brokerAuditFormBean.numUnlicensedEmployees}"/>
        </td>
    </tr>
</table>
<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
<table class="dataReview" >
    <tr>
        <td class="dataReviewLabel">
            Average number of Sales and Lease transactions handled per year<bean:message key="common.label.sep" />
        </td>
        <td valign="top" class="dataReviewData">
            <c:out value="${brokerAuditFormBean.numSalesLeases}"/>
        </td>
    </tr>
</table>
<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
<table class="dataReview">
    <tr>
        <td class="dataReviewLabel">
            The broker maintains one or more general trust accounts<bean:message key="common.label.sep" />
        </td>
        <td class="dataReviewData">
            <c:out value="${brokerAuditFormBean.generalTrustAccount.answer}"/>
        </td>
    </tr>
</table>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
<table class="dataReview">
    <tr>
        <td class="dataReviewLabel">
            The brokerage conducts<bean:message key="common.label.sep" />
            <br><span class="dreExampleText">(check all that apply)</span>
        </td>
    </tr>
</table>
<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
<table class="dataReview">
    <tr>   
        <td class="dataReviewLabel">
            <c:choose>
                <c:when test="${brokerAuditFormBean.residentialRealEstate}">
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox_sel.gif" alt="Checked">
                </c:when>
                <c:otherwise>
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox.gif" alt="Unchecked">
                </c:otherwise>
            </c:choose>
        </td>
        <td>Residential Real Estate</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">
            <c:choose>
                <c:when test="${brokerAuditFormBean.commercialSales}">
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox_sel.gif" alt="Checked">
                </c:when>
                <c:otherwise>
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox.gif" alt="Unchecked">
                </c:otherwise>
            </c:choose>
        </td>
        <td>Commercial Sales and Leasing</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">
            <c:choose>
                <c:when test="${brokerAuditFormBean.businessBrokerage}">
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox_sel.gif" alt="Checked">
                </c:when>
                <c:otherwise>
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox.gif" alt="Unchecked">
                </c:otherwise>
            </c:choose>
        </td>
        <td>Business Brokerage</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">
            <c:choose>
                <c:when test="${brokerAuditFormBean.farmAndRanch}">
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox_sel.gif" alt="Checked">
                </c:when>
                <c:otherwise>
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox.gif" alt="Unchecked">
                </c:otherwise>
            </c:choose>
        </td>
        <td>Farm and Ranch</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">
            <c:choose>
                <c:when test="${brokerAuditFormBean.residentialPropMgmt}">
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox_sel.gif" alt="Checked">
                </c:when>
                <c:otherwise>
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox.gif" alt="Unchecked">
                </c:otherwise>
            </c:choose>
        </td>
        <td>Residential Property Management</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">
            <c:choose>
                <c:when test="${brokerAuditFormBean.commercialPropMgmt}">
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox_sel.gif" alt="Checked">
                </c:when>
                <c:otherwise>
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox.gif" alt="Unchecked">
                </c:otherwise>
            </c:choose>
        </td>
        <td>Commercial Property Management</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">
            <c:choose>
                <c:when test="${brokerAuditFormBean.newHomeSubdivision}">
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox_sel.gif" alt="Checked">
                </c:when>
                <c:otherwise>
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox.gif" alt="Unchecked">
                </c:otherwise>
            </c:choose>
        </td>
        <td>New Home Subdivision</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">
            <c:choose>
                <c:when test="${brokerAuditFormBean.otherSubdivision}">
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox_sel.gif" alt="Checked">
                </c:when>
                <c:otherwise>
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox.gif" alt="Unchecked">
                </c:otherwise>
            </c:choose>
        </td>
        <td>Other Subdivision/Unsubdivided Land</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">
            <c:choose>
                <c:when test="${brokerAuditFormBean.timeshare}">
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox_sel.gif" alt="Checked">
                </c:when>
                <c:otherwise>
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox.gif" alt="Unchecked">
                </c:otherwise>
            </c:choose>
        </td>
        <td>Timeshare</td>
    </tr>
    <tr>
        <td class="dataReviewLabel">
            <c:choose>
                <c:when test="${brokerAuditFormBean.otherBrokerageType}">
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox_sel.gif" alt="Checked">
                </c:when>
                <c:otherwise>
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox.gif" alt="Unchecked">
                </c:otherwise>
            </c:choose>
        </td>
        <td>Other</td>
    </tr>
</table>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
<table class="dataReview" >
    <tr>
        <td class="dataReviewLabel">
            If "Other" was selected, then list the other types of business below<bean:message key="common.label.sep" />
        </td>
        <td class="dataReviewData">
            <c:out value="${brokerAuditFormBean.otherBrokerTypeText}"/>
        </td>
    </tr>
</table>
