<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html:form action="/services/reviewChangePersonalInfoFunction">
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />

<div class="dreInstructionConfig">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="ReviewChangePersonalInformation_01.jsp" />
    </c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

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
                <td><c:out value="${changePersonalInfoFormBean.nickname}" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="email"><bean:message key="common.label.email" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    <br><span class="dreExampleText"><bean:message key="common.help.email" />&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    </td>
                <td><c:out value="${changePersonalInfoFormBean.emailAddress}" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="phone"><bean:message key="common.label.phone" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    <br><span class="dreExampleText"><bean:message key="common.help.phone" />&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    </td>
                <td><c:out value="${changePersonalInfoFormBean.phoneNumber}" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td class="dataReviewSection" colspan="2"><bean:message key="common.title.homeadd" /></td></tr>
            <tr><td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="add1"><bean:message key="common.label.add1" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                </td>
                <td><c:out value="${changePersonalInfoFormBean.homeAddress.line1}" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="add2"><bean:message key="common.label.add2" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><c:out value="${changePersonalInfoFormBean.homeAddress.line2}" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="county"><bean:message key="common.label.county" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td>
                    <c:out value="${changePersonalInfoFormBean.homeAddress.county}" />
                </td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="city"><bean:message key="common.label.city" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><c:out value="${changePersonalInfoFormBean.homeAddress.city}" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="state"><bean:message key="common.label.state" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td>
                    <c:out value="${changePersonalInfoFormBean.homeAddress.state}" />
                </td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="zip"><bean:message key="common.label.zip" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;</td>
                <td><c:out value="${changePersonalInfoFormBean.homeAddress.ZIPCode}" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td class="dataReviewSection" colspan="2"><bean:message key="common.title.mailadd" /></td></tr>
            <tr><td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="add1"><bean:message key="common.label.add1" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><c:out value="${changePersonalInfoFormBean.mailingAddress.line1}" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="add2"><bean:message key="common.label.add2" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><c:out value="${changePersonalInfoFormBean.mailingAddress.line2}" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="county"><bean:message key="common.label.county" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td>
                    <c:out value="${changePersonalInfoFormBean.mailingAddress.county}" />
                </td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="city"><bean:message key="common.label.city" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><c:out value="${changePersonalInfoFormBean.mailingAddress.city}" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="state"><bean:message key="common.label.state" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td>
                    <c:out value="${changePersonalInfoFormBean.mailingAddress.state}" />
                </td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td nowrap align="right" valign="top"><label for="zip"><bean:message key="common.label.zip" /><bean:message key="common.label.sep" /></label>&nbsp;&nbsp;
                    </td>
                <td><c:out value="${changePersonalInfoFormBean.mailingAddress.ZIPCode}" /></td>
            </tr>
            <!-- ============================================ -->
            <tr><td colspan="2"><img src="htdocs/images/spacer.gif" width="10" height="20" alt=""></td></tr>
            <!-- ============================================ -->
            <tr>
                <td colspan="2">
                    <html:submit property="submit.next" styleClass="button100" accesskey="a" tabindex="1"><bean:message key="common.button.continue" /></html:submit>
                    &nbsp;
                    <html:submit property="submit.previous" styleClass="button100" accesskey="a" tabindex="2"><bean:message key="common.button.back" /></html:submit>
                </td>
            </tr>
        </table>
        </td>
    </tr>
</table>

</html:form>