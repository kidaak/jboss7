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
    <c:param name="page" value="11resetPassword_01.jsp" />
</c:import>
</div>

<html:form action="/resetPassword">
    <input type="hidden" name="step" value="1" />
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
    </tr>
    <tr>
    <td>
        <table border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap align="right" valign="top"><label for="num"><bean:message key="challenge.fieldLabel.num" /><bean:message key='common.label.sep'/></label>&nbsp;&nbsp;
                <br><span class="dreExampleText"><bean:message key='common.help.licnum'/>&nbsp;&nbsp;&nbsp;&nbsp;</span>
            </td>
            <td><html:text property="licenseNum" size="20" styleId="num" /></td>            
        </tr>
        <!-- ============================================ -->
        <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
        <tr>
            <td colspan="3">
                <table>
                <tr>
                    <td valign="top">
                        <html:submit property="submit.next" styleClass="button" accesskey="a"><bean:message key="p11.label.submit" /></html:submit>
                        </html:form>
                    </td>
                    <td valign="top">
                        <html:form action="/home">
                            <html:submit property="home" styleClass="button"><bean:message key="common.button.login" /></html:submit>
                        </html:form>
                    </td>
                </tr>
                </table>
            </td>
        </tr>
        </table>
    </td>
</tr>
</table>