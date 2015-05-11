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

<c:if test="${!empty summary}">
<div class="dreInstructionDyn">
    <span class="errorMessage">
        <c:out value="${summary.message}" escapeXml="false" />
    </span>
</div>
</c:if>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="07email_1.jsp" />
</c:import>
</div>

<html:form action="/submitRequiredInfoEmail">
<input type="hidden" name="step" value="2" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
    </tr>
    <tr>
        <td>
        <table border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
                <td nowrap align="right" valign="top"><label for="name"><bean:message key="common.label.email" /><bean:message key='common.label.sep'/></label>&nbsp;&nbsp;
                    <br><span class="dreExampleText"><bean:message key='common.help.email'/>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </td>
                <td><html:text property="email" size="20" styleId="name" /></td>
            </tr>
            <tr>
                <td colspan="3"><img src="htdocs/images/spacer.gif" width="20" height="20" alt=""></td>
            </tr>
            <tr>
                <td colspan="3">
                   <html:submit property="submit.next" styleClass="button" accesskey="a" tabindex="1"><bean:message key="common.button.continue" /></html:submit>
                </td>
            </tr>
        </table>
        </td>
    </tr>
</table>
</html:form>