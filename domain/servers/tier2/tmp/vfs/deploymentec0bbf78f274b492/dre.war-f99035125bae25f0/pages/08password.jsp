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
    <c:param name="page" value="08password_01.jsp" />
</c:import>
</div>

<html:form action="/submitRequiredInfoPassword">
<input type="hidden" name="step" value="3" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
    </tr>
    <tr>
        <td>
        <table border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
                <td nowrap align="right" valign="top"><label for="password"><bean:message key="common.label.password" /><bean:message key='common.label.sep'/></label>&nbsp;&nbsp;
                </td>
                <td><html:password property="passwordInfo.password" size="20" styleId="password" /></td>
            </tr>
            <tr>
                <td colspan="3"><img src="htdocs/images/spacer.gif" width="20" height="10" alt=""></td>
            </tr>
            <tr>
                <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
                <td nowrap align="right" valign="top"><label for="retype"><bean:message key="common.label.retype.password" /><bean:message key='common.label.sep'/></label>&nbsp;&nbsp;
                </td>
                <td><html:password property="retypePassword" size="20" styleId="retype" /></td>
            </tr>
            <tr>
                <td colspan="3"><img src="htdocs/images/spacer.gif" width="20" height="10" alt=""></td>
            </tr>
            <tr>
                <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
                <td nowrap align="right" valign="top"><label for="passphrasequestion"><bean:message key="common.label.passphrase" /><bean:message key='common.label.sep'/></label>&nbsp;&nbsp;
                </td>
                <td><html:select property="passwordInfo.passwordHintQuestionID" styleId="passphrasequestion">
                        <html:optionsCollection name="userInfo" property="userDetail.sessionDetail.passwordHintQuestion" label="passwordHintQuestion" value="passwordHintQuestionID" />
                    </html:select>
                </td>
            </tr>
            <tr>
                <td colspan="3"><img src="htdocs/images/spacer.gif" width="20" height="10" alt=""></td>
            </tr>
            <tr>
                <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
                <td nowrap align="right" valign="top"><label for="passphraseanswer"><bean:message key="common.label.passphrase.answer" /><bean:message key='common.label.sep'/></label>&nbsp;&nbsp;
                </td>
                <td><html:text property="passwordInfo.passwordHintAnswer" size="20" styleId="passphraseanswer" /></td>
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