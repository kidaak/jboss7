<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<logic:messagesPresent>
<div class="errorMessage"><bean:message key="errors.validation"/>
  <ul>
  <html:messages id="msg">
    <li><bean:write name="msg"/><br></li>
  </html:messages>
  </ul>
</div>
</logic:messagesPresent>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="myHistoryInput_01.jsp" />
</c:import>
</div>

<html:form action="/services/viewPersonalHistory">
<input type="hidden" name="step" value="1"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
    <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
</tr>
<tr>
    <td>
    <table border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
        <td nowrap align="right" valign="top">
            <label for="startdate"><bean:message key="p54.label.startDate" /><bean:message key='common.label.sep'/></label>&nbsp;&nbsp;
            <br><span class="dreExampleText"><bean:message key='common.help.date'/>&nbsp;&nbsp;&nbsp;&nbsp;</span>
        </td>
        <td><html:text property="startDate" size="15" styleId="startdate" maxlength="10" /></td>
    </tr>
    <!-- ============================================ -->
    <tr><td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
    <!-- ============================================ -->
    <tr>
        <td><img src="htdocs/images/spacer.gif" width="10" height="10"	alt=""></td>
        <td nowrap align="right" valign="top">
            <label for="enddate"><bean:message key="p54.label.endDate" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
            <br><span class="dreExampleText"><bean:message key="common.help.date" />&nbsp;&nbsp;&nbsp;&nbsp;</span>
        </td>
        <td><html:text property="endDate" size="15" styleId="enddate" maxlength="10" /></td>
    </tr>

    <tr>
        <td colspan="3"><img src="htdocs/images/spacer.gif" width="20" height="20" alt=""></td>
    </tr>
    <tr>
        <td colspan="3">
           <html:submit property="submit.next" styleClass="button100"><bean:message key="common.button.continue" /></html:submit>
        </td>
    </tr>
    </table>
    </td>
</tr>
</table>
</html:form>