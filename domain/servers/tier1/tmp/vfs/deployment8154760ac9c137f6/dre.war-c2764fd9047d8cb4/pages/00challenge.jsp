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

<div class="dreInstruction">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="00challenge_1.jsp" />
    </c:import>
</div>


<html:form action="/logon" method="post">
    <input type="hidden" name="step" value="1">
    <table border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
        </tr>
        <tr valign="top">
            <td>
                <h3>Login with password</h3>
                <table border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                    <tr>
                        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
                        <td nowrap align="right" valign="top"><label for="num"><bean:message key="challenge.fieldLabel.num" /><bean:message key='common.label.sep'/></label>&nbsp;&nbsp;
                            <br><span class="dreExampleText"><bean:message key='common.help.licnum'/>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                        </td>
                        <td><html:text property="licenseNumber1" size="20" styleId="num" /></td>
                    </tr>
                    <tr>
                        <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
                    </tr>
                    <tr>
                        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
                        <td nowrap align="right" valign="top"><label for="pword"><bean:message key="challenge.fieldLabel.password" /><bean:message key='common.label.sep'/></label>&nbsp;&nbsp;
                        </td>
                        <td><html:password property="password" size="12" styleId="pword" />
                        	<!--<br><html:link action="/showPasswordReset"><bean:message key="challenge.forgot" /></html:link> -->
                        </td>	
                    </tr>
                    <tr>
                        <td colspan="3"><img src="htdocs/images/spacer.gif" width="20" height="20" alt=""></td>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="submit" class="button" value="Login" />
                        </td>
                    </tr>
                </table>
            </td>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap>
                <h3>Login for the first time, or password reset</h3>
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
                        <td nowrap align="right" valign="top"><label for="num"><bean:message key="challenge.fieldLabel.num" /><bean:message key='common.label.sep'/></label>&nbsp;&nbsp;
                            <br><span class="dreExampleText"><bean:message key='common.help.licnum'/>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                        </td>
                        <td><html:text property="licenseNumber2" size="20" styleId="num" /></td>
                    </tr>
                    <!-- ============================================ -->
                    <tr>
                        <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
                    </tr>
                    <tr>
                        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
                        <td nowrap align="right" valign="top"><label for="ssn"><bean:message key="challenge.fieldLabel.ssn" /><bean:message key='common.label.sep'/></label>&nbsp;&nbsp;
                            <br><span class="dreExampleText"><bean:message key='common.help.ssn'/>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                        </td>
                        <td><html:text property="ssn" size="4" maxlength="4" styleId="ssn" /></td>
                    </tr>
                    <!-- ============================================ -->
                    <tr>
                        <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
                    </tr>
                    <tr>
                        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
                        <td nowrap align="right" valign="top"><label for="dob"><bean:message key="challenge.fieldLabel.dob" /><bean:message key='common.label.sep'/></label>&nbsp;&nbsp;
                            <br><span class="dreExampleText"><bean:message key='common.help.date'/>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                        </td>
                        <td><html:text property="birthDate" size="10" maxlength="10" styleId="dob" /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</html:form>