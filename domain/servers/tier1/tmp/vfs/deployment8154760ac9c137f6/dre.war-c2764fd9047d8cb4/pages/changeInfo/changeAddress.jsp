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

<logic:present name="summary">
    <div class="errorMessage">
        <c:out value="${summary.message}" escapeXml="false" />
    </div>
</logic:present>

<html:form action="/services/submitChangePersonalInfoFunction" method="post">
<input type="hidden" name="step" value="1" />
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="ChangePersonalInformation_01.jsp" />
    </c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<html:hidden property="homeAddress.addressID" />
<html:hidden property="mailingAddress.addressID" />
<html:hidden property="emailRequired" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
    </tr>
    <tr>
        <td>
        <table border="0" cellspacing="0" cellpadding="0">
            <!-- ============================================ -->
            <tr><td class="dataReviewSection" colspan="2"><bean:message key="common.title.contact" /></td></tr>
            <tr><td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="nick"><bean:message key="common.label.nickname" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                </td>
                <td><html:text property="nickname" size="40" styleId="nick" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="email"><bean:message key="common.label.email" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    <br><span class="dreExampleText"><bean:message key="common.help.email" />&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    </td>
                <td><html:text property="emailAddress" size="40" styleId="email" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="phone"><bean:message key="common.label.phone" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    <br><span class="dreExampleText"><bean:message key="common.help.phone" />&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    </td>
                <td><html:text property="phoneNumber" size="14" maxlength="18" styleId="phone" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td class="dataReviewSection" colspan="2"><bean:message key="common.title.homeadd" /></td></tr>
            <tr><td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="add1"><bean:message key="common.label.add1" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                </td>
                <td><html:text property="homeAddress.line1" size="35" maxlength="50" styleId="add1" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="add2"><bean:message key="common.label.add2" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><html:text property="homeAddress.line2" size="35" maxlength="50" styleId="add2" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="county"><bean:message key="common.label.county" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td>
                    <html:select property="homeAddress.county" styleId="county">
                        <html:option value="">-- Select --</html:option>
                        <html:options name="azCounties" />
                    </html:select>
                </td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="city"><bean:message key="common.label.city" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><html:text property="homeAddress.city" size="35" maxlength="50" styleId="city" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="state"><bean:message key="common.label.state" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td>
                    <html:select property="homeAddress.state" styleId="state">
                        <html:option value="">-- Select --</html:option>
                        <%@ include file="/pages/stateList.jsp" %>
                    </html:select>
                </td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="zip"><bean:message key="common.label.zip" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><html:text property="homeAddress.ZIPCode" size="12" maxlength="20" styleId="zip" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td class="dataReviewSection" colspan="2"><bean:message key="common.title.mailadd" /></td></tr>
            <tr><td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td align="right" nowrap="nowrap" valign="top"><html:checkbox property="homeAsMailngAddress" value="true" />&nbsp;&nbsp; </td>
                <td>Check here if home and mailing address are the same.</td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" alt="" height="5" width="10"></td></tr>
            <tr>
                <td nowrap align="right" valign="top"><label for="add1"><bean:message key="common.label.add1" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><html:text property="mailingAddress.line1" size="35" maxlength="50" styleId="add1" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="add2"><bean:message key="common.label.add2" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><html:text property="mailingAddress.line2" size="35" maxlength="50" styleId="add2" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="county"><bean:message key="common.label.county" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td>
                    <html:select property="mailingAddress.county" styleId="county">
                        <html:option value="">-- Select --</html:option>
                        <html:options name="azCounties" />
                    </html:select>
                </td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="city"><bean:message key="common.label.city" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><html:text property="mailingAddress.city" size="35" maxlength="50" styleId="city" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="state"><bean:message key="common.label.state" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td>
                    <html:select property="mailingAddress.state" styleId="state">
                        <html:option value="">-- Select --</html:option>
                        <%@ include file="/pages/stateList.jsp" %>
                    </html:select>
                </td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="zip"><bean:message key="common.label.zip" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><html:text property="mailingAddress.ZIPCode" size="12" maxlength="20" styleId="zip" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="20" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td colspan="2">
                <html:submit property="submit.next" styleClass="button100" accesskey="a"><bean:message key="common.button.continue" /></html:submit>
            </td>
            </tr>
        </table>
        </td>
    </tr>
</table>
</html:form>