<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--c:if test="${brokerAuditFormBean.residentialPropMgmt or brokerAuditFormBean.commercialPropMgmt}"-->
    <div class="dataReviewSection2">Property Management Properties</div>

    <!--c:if test="${brokerAuditFormBean.residentialPropMgmt}"-->
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
        <table class="dataReview">
            <tr>
                <td rowspan="8" width="20px"></td>
                <td><h2><bean:message key="p260.title.residential" /></h2></td>
            </tr>
            <tr>
                <td class="dataReviewLabel">
                    <bean:message key="p260.label.singleFamilyHomes" /><bean:message key="common.label.sep" />
                </td>
                <td class="dataReviewData">
                    <c:choose>
                        <c:when test="${!empty brokerAuditFormBean.numSingleFamilyHomes}">
                            <c:out value="${brokerAuditFormBean.numSingleFamilyHomes}"/>
                        </c:when>
                        <c:otherwise>
                            0
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <td class="dataReviewLabel">
                    <bean:message key="p260.label.multiFamilyUnits" /><bean:message key="common.label.sep" />
                </td>
                <td class="dataReviewData">
                    <c:choose>
                        <c:when test="${!empty brokerAuditFormBean.numMultiFamilyUnits}">
                            <c:out value="${brokerAuditFormBean.numMultiFamilyUnits}"/>
                        </c:when>
                        <c:otherwise>
                            0
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <td class="dataReviewLabel">
                    <bean:message key="common.label.other" /><bean:message key="common.label.sep" />
                </td>
                <td class="dataReviewData">
                    <c:choose>
                        <c:when test="${!empty brokerAuditFormBean.numResidentialOther}">
                            <c:out value="${brokerAuditFormBean.numResidentialOther}"/>
                        </c:when>
                        <c:otherwise>
                            0
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <td>
                    <h2><bean:message key="p260.title.commercial" /></h2>
                </td>
            </tr>
            <tr>
                <td class="dataReviewLabel">
                    <bean:message key="p260.label.shopping" /><bean:message key="common.label.sep" />
                </td>
                <td class="dataReviewData">
                    <c:choose>
                        <c:when test="${!empty brokerAuditFormBean.numShoppingCenters}">
                            <c:out value="${brokerAuditFormBean.numShoppingCenters}"/>
                        </c:when>
                        <c:otherwise>
                            0
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <td class="dataReviewLabel">
                    <bean:message key="p260.label.comm" /><bean:message key="common.label.sep" />
                </td>
                <td class="dataReviewData">
                    <c:choose>
                        <c:when test="${!empty brokerAuditFormBean.numCommericalBuildings}">
                            <c:out value="${brokerAuditFormBean.numCommericalBuildings}"/>
                        </c:when>
                        <c:otherwise>
                            0
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <td class="dataReviewLabel">
                    <bean:message key="common.label.other" /><bean:message key="common.label.sep" />
                </td>
                <td class="dataReviewData">
                    <c:choose>
                        <c:when test="${!empty brokerAuditFormBean.numCommercialOther}">
                            <c:out value="${brokerAuditFormBean.numCommercialOther}"/>
                        </c:when>
                        <c:otherwise>
                            0
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    <!--/c:if-->
<!--/c:if-->
