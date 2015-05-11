<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="320baDataGsetaList_01.jsp" />
</c:import>
</div>


<html:form action="/audit/320baDataGsetaList">
    <html:hidden property="page" value="320"/>
    <input type="hidden" name="saveForm"/>
    <input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <table class="data_table2" cellspacing="1" summary="list of all status">
        <tr>
            <th class="data_table_header_center2" nowrap><bean:message key="p320.title.taTitle" /></th>
            <th class="data_table_header_center2" nowrap><bean:message key="p320.title.name" /></th>
            <th class="data_table_header_center2"       ><bean:message key="p320.title.add" /></th>
            <th class="data_table_header_center2" nowrap><bean:message key="p320.title.num" /></th>
        </tr>
         <logic:iterate name="brokerAuditFormBean" property="trustAccounts" id="trustAccounts">
         <tr>
            <td class="data" nowrap><html:text name="trustAccounts" property="title" size="22" maxlength="40" indexed="true"/></td>
            <td class="data" nowrap><html:text name="trustAccounts" property="institutionName" size="25" maxlength="30" indexed="true"/></td>
            <td class="data" nowrap><html:text name="trustAccounts" property="institutionAddress" size="48" maxlength="50" indexed="true"/></td>
            <td class="data" nowrap><html:text name="trustAccounts" property="accountNumber" size="10" maxlength="20" indexed="true"/></td>
         </tr>
         </logic:iterate>
        <!-- ========================================================================= -->
         <tr>
            <td class="data" colspan="4"><html:cancel styleClass="button"><bean:message key="p320.button.another"/></html:cancel></td>
         </tr>
        <!-- ========================================================================= -->
    </table>

    <!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  -->
    <div class="fb1">
        <html:submit property="submit.next" styleClass="button100"><bean:message key="common.button.continue" /></html:submit>
        &nbsp;&nbsp;&nbsp;
        <html:submit property="submit.previous" styleClass="button100"><bean:message key="common.button.back" /></html:submit>
    </div>

</html:form>