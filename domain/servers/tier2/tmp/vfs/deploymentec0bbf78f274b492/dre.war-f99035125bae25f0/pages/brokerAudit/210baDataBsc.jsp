<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="210baDataBsc_01.jsp" />
</c:import>
</div>


<html:form action="/audit/210baDataBsc">
    <html:hidden property="page" value="210"/>
    <input type="hidden" name="saveForm"/>
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
    <c:set var="brokerAuditAnswer" value="${brokerAuditFormBean.supervisionPolicy}" scope="request"/>

    <c:import url="/pages/brokerAudit/brokerAuditSingleAnswer.jsp">
        <c:param name="propertyName" value="supervisionPolicy" />
        <c:param name="questionPrefix" value="210baDataBsc_q" />
    </c:import>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->

    <div class="fb1">
        <html:submit property="submit.next" styleClass="button100"><bean:message key="common.button.continue" /></html:submit>
        &nbsp;&nbsp;&nbsp;
        <html:submit property="submit.previous" styleClass="button100"><bean:message key="common.button.back" /></html:submit>
    </div>

</html:form>
