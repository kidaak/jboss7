<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="120baDataNum_01.jsp" />
</c:import>
</div>

<html:form action="/audit/120baDataNum">
    <html:hidden property="page" value="120"/>
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
    <input type="hidden" name="saveForm"/>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="f2">
        <div class="fc21">
            Is this your Residence?<bean:message key="common.label.sep" />
        </div>
        <div class="fc22">
            <html:radio property="homeOffice.answer" value="Y" styleId="homeY"/> <label for="homeY"><bean:message key="common.label.yes" /></label>
            <html:radio property="homeOffice.answer" value="N" styleId="homeN"/> <label for="homeN"><bean:message key="common.label.no" /></label>
        </div>
    </div>
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="f2">
        <div class="fc21">
            <label for="numPeopleLic">Number of salespersons and associate brokers licensed to the brokerage<bean:message key="common.label.sep" /></label>
            <br><span class="dreExampleText">Do <em>not</em> include the Designated Broker.</span>
        </div>
        <div class="fc22">
            <html:text property="numLicensedEmployees" maxlength="6" size="6" styleId="numPeopleLic"/>
        </div>
    </div>
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="f2">
        <div class="fc21">
            <label for="numPeopleUnlic">Number of unlicensed employees at the brokerage<bean:message key="common.label.sep" /></label>
            <br><span class="dreExampleText">Part-time and full-time.</span>
        </div>
        <div class="fc22">
            <html:text property="numUnlicensedEmployees" maxlength="6" size="6" styleId="numPeopleUnlic"/>
        </div>
    </div>
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="f2">
        <div class="fc21">
            <label for="numTrans">Average number of Sales and Lease transactions handled per year<bean:message key="common.label.sep" /></label>
        </div>
        <div class="fc22">
            <html:text property="numSalesLeases" maxlength="6" size="6" styleId="numTrans"/>
        </div>
    </div>
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="f2">
        <div class="fc21">
            The broker maintains one or more general trust accounts<bean:message key="common.label.sep" />
        </div>
        <div class="fc22">
            <html:radio property="generalTrustAccount.answer" value="Y" styleId="q1y"/> <label for="q1y"><bean:message key="common.label.yes" /></label>
            <html:radio property="generalTrustAccount.answer" value="N" styleId="q1n"/> <label for="q1n"><bean:message key="common.label.no" /></label>
        </div>
    </div>
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="f1" style="height:17em">
        <div class="fc11">
            <label for="bizType">The brokerage conducts<bean:message key="common.label.sep" /></label>
            <br><span class="dreExampleText">(check all that apply)</span>
        </div>
        <div class="fc12">
            <html:checkbox property="residentialRealEstate" value="true"/>Residential Real Estate<br>
            <html:checkbox property="commercialSales" value="true"/>Commercial Sales and Leasing<br>
            <html:checkbox property="businessBrokerage" value="true"/>Business Brokerage<br>
            <html:checkbox property="farmAndRanch" value="true"/>Farm and Ranch<br>
            <html:checkbox property="residentialPropMgmt" value="true"/>Residential Property Management<br>
            <html:checkbox property="commercialPropMgmt" value="true"/>Commercial Property Management<br>
            <html:checkbox property="newHomeSubdivision" value="true"/>New Home Subdivision<br>
            <html:checkbox property="otherSubdivision" value="true"/>Other Subdivision/Unsubdivided Land<br>
            <html:checkbox property="timeshare" value="true"/>Timeshare<br>
            <html:checkbox property="otherBrokerageType" value="true"/>Other<br>
        </div>
    </div>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="f1"  style="height:1em">
        <div class="fc12">
            <label for="otherBiz">If "Other" was selected, then list the other types of business below<bean:message key="common.label.sep" /></label>
        </div>
        </div>
    <div class="f1" style="height:1em">
        <div class="fc12">
            <html:text property="otherBrokerTypeText" size="60" maxlength="200" styleId="otherBiz" />
        </div>
    </div>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="fb1">
        <html:submit property="submit.next" styleClass="button100"><bean:message key="common.button.continue" /></html:submit>
        &nbsp;&nbsp;&nbsp;
        <html:submit property="submit.previous" styleClass="button100"><bean:message key="common.button.back" /></html:submit>
    </div>

</html:form>