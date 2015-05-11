<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="390baAdditionalInfo_01.jsp" />
</c:import>
</div>

<html:form action="/audit/390additionalInfo">
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
    <html:hidden property="page" value="390"/>
    <input type="hidden" name="saveForm"/>
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="f3">
        <div class="fc31">
            <label for="comments"><bean:message key="p390.label.comments" /><bean:message key="common.label.sep" /></label>
        </div>
        <div class="fc32">
            <html:textarea property="additionalComments" cols="75" rows="8" styleId="comments"></html:textarea>
        </div>
    </div>
    
    
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="fb1">
        <html:submit property="submit.next" styleClass="button100"><bean:message key="common.button.continue" /></html:submit>
        &nbsp;&nbsp;&nbsp;
        <html:submit property="submit.previous" styleClass="button100"><bean:message key="common.button.back" /></html:submit>
    </div>
    
</html:form>