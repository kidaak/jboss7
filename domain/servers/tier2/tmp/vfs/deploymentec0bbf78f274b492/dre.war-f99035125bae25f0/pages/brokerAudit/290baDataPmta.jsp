<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="290baDataPmta_01.jsp" />
</c:import>
</div>


<html:form action="/audit/290baDataPmta">
    <html:hidden property="page" value="290"/>
    <input type="hidden" name="saveForm"/>
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="f3">
        <div class="fc32"><bean:message key="p290.label.q1" /><bean:message key="common.label.sep" /></div>
        <div class="fc31">
            <html:radio property="hasPropMgmtTrustAccounts.answer" value="Y" styleId="q1y"/><label for="q1y"><bean:message key="common.label.yes" /></label>
            <html:radio property="hasPropMgmtTrustAccounts.answer" value="N" styleId="q1n"/><label for="q1n"><bean:message key="common.label.no" /></label>
        </div>
    </div>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="fb1">
        <html:submit property="submit.next" styleClass="button100"><bean:message key="common.button.continue" /></html:submit>
        &nbsp;&nbsp;&nbsp;
        <html:submit property="submit.previous" styleClass="button100"><bean:message key="common.button.back" /></html:submit>
    </div>

</html:form>
