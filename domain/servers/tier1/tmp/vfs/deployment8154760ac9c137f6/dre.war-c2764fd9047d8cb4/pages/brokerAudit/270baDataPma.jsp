<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="270baDataPma_01.jsp" />
</c:import>
</div>


<html:form action="/audit/270baDataPma">
    <html:hidden property="page" value="270"/>
    <input type="hidden" name="saveForm"/>
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
    <c:set var="brokerAuditAnswers" value="${brokerAuditFormBean.propMgmtAgreementAnswers}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditAnswer.jsp">
        <c:param name="propertyName" value="propMgmtAgreementAnswers" />
        <c:param name="questionPrefix" value="270baDataPma_q" />
        <c:param name="endIndex" value="10" />
        <c:param name="hideNA" value="true" />
    </c:import>

    <div class="dreInstruction">
        <c:import url="/pages/dynamicContent.jsp">
            <c:param name="page" value="270baDataPma_02.jsp" />
        </c:import>
    </div>

    <c:import url="/pages/brokerAudit/brokerAuditAnswer.jsp">
        <c:param name="propertyName" value="propMgmtAgreementAnswers" />
        <c:param name="questionPrefix" value="270baDataPma_q" />
        <c:param name="startIndex" value="11" />
        <c:param name="hideNo" value="true" />
    </c:import>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    
    <div class="fb1">
        <html:submit property="submit.next" styleClass="button100"><bean:message key="common.button.continue" /></html:submit>
        &nbsp;&nbsp;&nbsp;
        <html:submit property="submit.previous" styleClass="button100"><bean:message key="common.button.back" /></html:submit>
    </div>

</html:form>
