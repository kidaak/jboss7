<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="180baDataEd_01.jsp" />
</c:import>
</div>


<html:form action="/audit/180baDataEd">
    <html:hidden property="page" value="180"/>
    <input type="hidden" name="saveForm"/>
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.earnestDepositAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswer.jsp">
        <c:param name="propertyName" value="earnestDepositAnswers" />
        <c:param name="questionPrefix" value="180baDataEd_q" />
    </c:import>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    
    <div class="fb1">
        <html:submit property="submit.next" styleClass="button100"><bean:message key="common.button.continue" /></html:submit>
        &nbsp;&nbsp;&nbsp;
        <html:submit property="submit.previous" styleClass="button100"><bean:message key="common.button.back" /></html:submit>
    </div>

</html:form>
