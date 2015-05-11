<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="260baDataPmn_01.jsp" />
</c:import>
</div>


<html:form action="/audit/260baDataPmn">
    <html:hidden property="page" value="260"/>
    <input type="hidden" name="saveForm"/>
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
    <c:if test="${brokerAuditFormBean.residentialPropMgmt}">
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
        <h2><bean:message key="p260.title.residential" />
        </h2>
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
        <div class="f4">
            <div class="fc11">
                <label for="r1"><bean:message key="p260.label.singleFamilyHomes" /><bean:message key="common.label.sep" /></label>
            </div>
            <div class="fc12">
                <html:text property="numSingleFamilyHomes" maxlength="6" size="6" styleId="r1"/>
            </div>
        </div>
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
        <div class="f4">
            <div class="fc11">
                <label for="r2"><bean:message key="p260.label.multiFamilyUnits" /><bean:message key="common.label.sep" /></label>
            </div>
            <div class="fc12">
                <html:text property="numMultiFamilyUnits" maxlength="6" size="6" styleId="r2"/>
            </div>
        </div>
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
        <div class="f4">
            <div class="fc11">
                <label for="r3"><bean:message key="common.label.other" /><bean:message key="common.label.sep" /></label>
            </div>
            <div class="fc12">
                <html:text property="numResidentialOther" maxlength="6" size="6" styleId="r3"/>
            </div>
        </div>
    </c:if>

    <c:if test="${brokerAuditFormBean.commercialPropMgmt}">

        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
        <h2><bean:message key="p260.title.commercial" />
        </h2>
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
        <div class="f4">
            <div class="fc11">
                <label for="c1"><bean:message key="p260.label.shopping" /><bean:message key="common.label.sep" /></label>
            </div>
            <div class="fc12">
                <html:text property="numShoppingCenters" maxlength="6" size="6" styleId="c1"/>
            </div>
        </div>
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
        <div class="f4">
            <div class="fc11">
                <label for="c2"><bean:message key="p260.label.comm" /><bean:message key="common.label.sep" /></label>
            </div>
            <div class="fc12">
                <html:text property="numCommericalBuildings" maxlength="6" size="6" styleId="c2"/>
            </div>
        </div>
        <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
        <div class="f4">
            <div class="fc11">
                <label for="c3"><bean:message key="common.label.other" /><bean:message key="common.label.sep" /></label>
            </div>
            <div class="fc12">
                <html:text property="numCommercialOther" maxlength="6" size="6" styleId="c3"/>
            </div>
        </div>
    </c:if>


<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
<div class="fb1">
    <html:submit property="submit.next" styleClass="button100"><bean:message key="common.button.continue" /></html:submit>
    &nbsp;&nbsp;&nbsp;
    <html:submit property="submit.previous" styleClass="button100"><bean:message key="common.button.back" /></html:submit>
</div>

</html:form>
