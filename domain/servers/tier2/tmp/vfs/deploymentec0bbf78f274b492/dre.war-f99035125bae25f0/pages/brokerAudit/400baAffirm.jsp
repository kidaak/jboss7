<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@page import="com.ibm.gs.houston.struts.util.MultiPageProcessor"%>
<%@page import="com.ibm.azportal.dre.struts.forms.BrokerAuditFormBean"%>

<%
if (request.getParameter("sessionID") == null) {
    MultiPageProcessor pageProcessor = (MultiPageProcessor)request.getSession().getAttribute("brokerAuditFormBean.pageProcessor");
    BrokerAuditFormBean formBean = (BrokerAuditFormBean)request.getSession().getAttribute("brokerAuditFormBean");
    formBean.clearUnusedData(pageProcessor.getPageHistory());
}
%>

<c:choose>
    <c:when test="${!empty confirmationNumber}">
    <!--BADFORMSTART-->
        <div class="dreInstructionConfig">
            <c:import url="/pages/dynamicContent.jsp">
                <c:param name="page" value="401baAffirm_01.jsp" />
            </c:import>
        </div>
    </c:when>
    <c:otherwise>
        <div class="dreInstructionConfig">
            <c:import url="/pages/dynamicContent.jsp">
                <c:param name="page" value="400baAffirm_01.jsp" />
            </c:import>
        </div>
    </c:otherwise>
</c:choose>



<h2>Broker Audit Declaration</h2>

<c:set var="license" value="${brokerAuditFormBean.userInfo.userDetail.licenseDetail}" scope="request" />

<!-- 110 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Business Information</div>
<table class="dataReview" >
    <tr>
        <td class="dataReviewLabel"><bean:message key="ba.p110.label.brokerName"/><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            <!-- html:text property="companyInfo.phonePrefix" styleId="nameBroker" size="35" maxlength="35"/ -->
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
</table>
<div class="dataReviewSection2">Business Address</div>
<table class="dataReview" >
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

<!-- 120 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<c:import url="/pages/brokerAudit/120baDataNumReview.jsp"/>

<!-- 320 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">General/Sales/Earnest Trust Accounts</div>
<c:set var="trustAccounts" value="${brokerAuditFormBean.trustAccounts}" scope="request"/>
<c:import url="/pages/brokerAudit/trustAccountListReview.jsp"/>

<!-- 210 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Broker Supervision and Control</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswer" value="${brokerAuditFormBean.supervisionPolicy}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditSingleAnswerReview.jsp">
        <c:param name="propertyName" value="supervisionPolicy" />
        <c:param name="questionPrefix" value="210baDataBsc_q" />
        <c:param name="hideNA" value="true" />
    </c:import>
</table>

<!-- 260 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<c:import url="/pages/brokerAudit/260baDataPmnReview.jsp"/>

<!-- 290 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Property Management Trust Account</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswer" value="${brokerAuditFormBean.hasPropMgmtTrustAccounts}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditSingleAnswerReview.jsp">
        <c:param name="propertyName" value="hasPropMgmtTrustAccounts" />
        <c:param name="questionPrefix" value="290baDataPmta_q" />
        <c:param name="hideNA" value="true" />
    </c:import>
</table>

<!-- 300 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Property Management Trust Accounts</div>
<c:set var="trustAccounts" value="${brokerAuditFormBean.propMgmtTrustAccounts}" scope="request"/>
<c:import url="/pages/brokerAudit/trustAccountListReview.jsp"/>


<!-- 130 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">General Records Compliance</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.generalRecordsComplianceAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="generalRecordsComplianceAnswers" />
        <c:param name="questionPrefix" value="130baDataGrc_q" />
    </c:import>
</table>

<!-- 140 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Broker Review</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.brokerReviewAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="brokerReviewAnswers" />
        <c:param name="questionPrefix" value="140baDataBr_q" />
    </c:import>
</table>

<!-- 150 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Employment and Compensation</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.employmentAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="employmentAnswers" />
        <c:param name="questionPrefix" value="150baDataEc_q" />
    </c:import>
</table>

<!-- 160 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Disclosures</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.disclosureAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="disclosureAnswers" />
        <c:param name="questionPrefix" value="160baDataD_q" />
    </c:import>
</table>

<!-- 170 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Sales/Lease Transaction Records</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.salesTransactionAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="salesTransactionAnswers" />
        <c:param name="questionPrefix" value="170baDataSltr_q" />
    </c:import>
</table>

<!-- 180 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Earnest Deposits</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.earnestDepositAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="earnestDepositAnswers" />
        <c:param name="questionPrefix" value="180baDataEd_q" />
    </c:import>
</table>

<!-- 191 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">General/Sales/Earnest Trust Account</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.earnestTrustAccountAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="earnestTrustAccountAnswers" />
        <c:param name="questionPrefix" value="191baDataGsetaCont_q" />
    </c:import>
</table>

<!-- 200 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Delegation of Authority</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.delegationAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="delegationAnswers" />
        <c:param name="questionPrefix" value="200baDataDa_q" />
    </c:import>
</table>

<!-- 230 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Broker Supervision Policy</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.supervisionPolicyAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="supervisionPolicyAnswers" />
        <c:param name="questionPrefix" value="230baDataBsp_q" />
    </c:import>
</table>

<!-- 270 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Property Management Agreements</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.propMgmtAgreementAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="propMgmtAgreementAnswers" />
        <c:param name="questionPrefix" value="270baDataPma_q" />
        <c:param name="endIndex" value="8" />
    </c:import>

    <tr>
        <td class="dreInstruction" colspan="2">
            <c:import url="/pages/dynamicContent.jsp">
                <c:param name="page" value="270baDataPma_02.jsp" />
            </c:import>
        </td>
    </tr>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="propMgmtAgreementAnswers" />
        <c:param name="questionPrefix" value="270baDataPma_q" />
        <c:param name="startIndex" value="9" />
    </c:import>
</table>

<!-- 280 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Property Management Records</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.propMgmtRecordAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="propMgmtRecordAnswers" />
        <c:param name="questionPrefix" value="280baDataPmr_q" />
    </c:import>
</table>

<!-- 330 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Property Management Trust Account Questions</div>
<table class="dataReview" >
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.propMgmtTrustAccountAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswerReview.jsp">
        <c:param name="propertyName" value="propMgmtTrustAccountAnswers" />
        <c:param name="questionPrefix" value="330baDataPmtaq_q" />
    </c:import>
</table>

<!-- 390 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->

<div class="dataReviewSection2">Additional Information</div>
<table class="dataReview">
    <tr>
        <td class="dataReviewLabel"><bean:message key="p390.label.comments" /><bean:message key="common.label.sep" /></td>
        <td class="dataReviewData">
            <c:out value="${brokerAuditFormBean.additionalComments}"/>
        </td>
    </tr>
</table>

<div class="dataReviewSection2">Audit Declaration Affirmation</div>

<c:choose>
    <c:when test="${empty confirmationNumber}">
        <html:form action="/audit/400baAffirm">
            <html:hidden property="page" value="400"/>
            <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
            <input type="hidden" name="saveForm"/>

            <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
            <div class="f3">
                <div class="fc32">
                    <div class="dreInstructionConfig">
                        <c:import url="/pages/dynamicContent.jsp">
                            <c:param name="page" value="400baAffirm_02.jsp" />
                        </c:import>
                    </div>
                </div>

                <div class="fc31">
                    <html:checkbox property="affirmation" value="true" styleId="q1"/>
                </div>
            </div>

            <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
            <div class="fb1">
                <html:submit property="submit.next" styleClass="button100"><bean:message key="common.button.continue" /></html:submit>
        &nbsp;&nbsp;&nbsp;
        <html:submit property="submit.previous" styleClass="button100"><bean:message key="common.button.back" /></html:submit>
            </div>

        </html:form>
    </c:when>
    <c:when test="${!empty confirmationNumber}">
        <html:form action="/audit/401baConfirm">
            <html:hidden property="page" value="401"/>
            <input type="hidden" name="saveForm"/>
            <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

            <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
            <div class="f3">
                <div class="fc32">
                    <div class="dreInstructionConfig">
                        <c:import url="/pages/dynamicContent.jsp">
                            <c:param name="page" value="400baAffirm_02.jsp" />
                        </c:import>
                    </div>
                </div>

                <div class="fc31">
                    <img src="${brokerAuditFormBean.applicationFullUrl}htdocs/images/checkbox_sel.gif" alt="Checked">
                </div>
            </div>
            
            <h2><bean:message key='p22.title.payment'/></h2>
            <div class="dreInstruction">
                Your confirmation number is <c:out value="${confirmationNumber}" />.
                <br>
                Processed date is <fmt:formatDate value="${transactionTime}" type="both" timeZone="America/Phoenix" />.
            </div>
            
            <c:if test="${!empty workflowOrder.products}">
                <c:import url="/pages/listCharges.jsp" />
                <img src="htdocs/images/spacer.gif" width="10" height="10" alt=""><br>
            </c:if>
            
            <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
            <div class="fb1">
                <html:button property="print" styleClass="button100" onclick="javascript: window.print();"><bean:message key="common.button.printReceipt" /></html:button>
                &nbsp; &nbsp; 
                <html:submit property="submit.next" styleClass="button100">Return to Home</html:submit>
                &nbsp;
                <html:submit property="submit.survey" styleClass="button100" accesskey="a"><bean:message key="common.button.takeSurvey" /></html:submit>
            </div>

        </html:form>
        <!--BADFORMEND-->
    </c:when>
</c:choose>
