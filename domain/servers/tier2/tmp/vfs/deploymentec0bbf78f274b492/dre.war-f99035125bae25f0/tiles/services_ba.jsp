<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="houston-util" prefix="util" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="servicesOdd" />
<c:set target="${alternator}" property="string" value="servicesEven" />

<table class="noprint" width="210" border="0" cellspacing="0" cellpadding="0">
<tr valign="top">
<td colspan="2" class="appTitle" align="right" valign="top"><img src="htdocs/images/label_left.gif" height="19" width="4" border="0" alt="">&nbsp;<bean:message key='nav.steps'/></td>
<td><img src="htdocs/images/spacer.gif" height="19" width="1" border="0" alt=""></td></tr>

<tr class="appTitle"><td colspan="3"><img src="htdocs/images/spacer.gif" height="1" width="1" border="0" alt=""></td></tr>
<tr><td colspan="3"><img src="htdocs/images/spacer.gif" height="1" width="1" border="0" alt=""></td></tr>

<!-- // = = = = = = = = = = = = = = = = = = -->

<c:if test="${!empty workflow}">
<c:forEach items="${workflow.step}" var="step">
<!-- // = = = = = = = = = = = = = = = = = = -->
    <tr><td class="servicesDivider" colspan="3" height="2"><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>
    <tr>
    <td class="<c:out value="${alternator.nextString}"/>">&nbsp;</td>
    <td class="<c:out value="${alternator.currentString}"/>" colspan=2>
        <c:choose>
            <c:when test="${step.status eq 'Current'}">
                <img style="margin: 0px 6px 0px 10px;" border="0" src="htdocs/images/icon_arrowBlue.gif" width="9" height="9" alt="">
            </c:when>
            <c:when test="${step.status eq 'Complete'}">
                <img style="margin: 0px 6px 0px 10px;" border="0" src="htdocs/images/blue_check.gif" width="9" height="9" alt="">
            </c:when>
            <c:when test="${step.status eq 'Error'}">
                <img style="margin: 0px 6px 0px 10px;" border="0" src="htdocs/images/icon_stop.gif" width="9" height="9" alt="">
            </c:when>
            <c:otherwise>
                <img style="margin: 0px 6px 0px 10px;" border="0" src="htdocs/images/spacer.gif" width="9" height="9" alt="">
            </c:otherwise>
        </c:choose>
        <span class="step"><c:out value="${step.stepDisplayName}" /></span>
    </td>
    </tr>
</c:forEach>
</c:if>

<!-- // = = = = = = = = = = = = = = = = = = -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>
<tr>
<td class="<c:out value="${alternator.nextString}"/>">&nbsp;</td>
<td class="<c:out value="${alternator.currentString}"/>" colspan=2>
<a class="<c:out value="${alternator.currentString}"/>" href="<c:url value="/80help.do"/>"><bean:message key='nav.help'/></a>
</td>
</tr>
<!-- // = = = = = = = = = = = = = = = = = = -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>
<tr>
<td class="<c:out value="${alternator.nextString}"/>">&nbsp;</td>
<td class="<c:out value="${alternator.currentString}"/>" colspan=2>
<a class="<c:out value="${alternator.currentString}"/>" href="<c:url value="/home.do"/>">Quit</a>
</td>
</tr>

<tr><td bgcolor="black" colspan="5"><img src="htdocs/images/spacer.gif" width="1" height="1" border="0" alt=""></td></tr>
<tr><td bgcolor="white" colspan="5"><img src="htdocs/images/spacer.gif" width="1" height="5" border="0" alt=""></td></tr>

<tr valign="top">
<td colspan="2" class="appTitle" align="right" valign="top"><img src="htdocs/images/label_left.gif" alt="" border="0" height="19" width="4">&nbsp;Broker Audit</td>
<td><img src="htdocs/images/spacer.gif" alt="" border="0" height="19" width="1"></td></tr>

<tr class="appTitle"><td colspan="3"><img src="htdocs/images/spacer.gif" alt="" border="0" height="1" width="1"></td></tr>
<tr><td colspan="3"><img src="htdocs/images/spacer.gif" alt="" border="0" height="1" width="1"></td></tr>


<!-- // ----------------------------------------------------- -->
<tr><td class="servicesDivider" colspan="3" height="2"><img src="htdocs/images/spacer.gif" alt="" border="0" height="2" width="1"></td></tr>

<!-- // ----------------------------------------------------- -->
<tr height="120px">
<td class="servicesOdd">&nbsp;</td>
<td class="servicesOdd" colspan="2" valign="top">
At any time, you may save your responses to the Broker Audit Declaration.
<form action="save.do">
   <input type="button" class="button" value="Save Current Values" title="Save current values" onClick="document.brokerAuditFormBean.saveForm.value='Y'; document.brokerAuditFormBean.submit();">
</form>
<c:if test="${!empty brokerAuditFormBean.lastUpdateFormatted}">
        Date of last save: <c:out value="${brokerAuditFormBean.lastUpdateFormatted}"/>
</c:if>

</td>
</tr>

<!-- // = = = = = = = = = = = = = = = = = = -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>

<tr class="servicesDivider"><td colspan="3"><img src="htdocs/images/spacer.gif" height="1" width="1" border="0" alt=""></td></tr>

<!-- yellow column to the bottom of the screen -->
<tr><td class="servicesColumn" colspan="3" valign="bottom"><img src="htdocs/images/spacer.gif" height="70" width="1" border="0" alt=""></td></tr>
<!-- /yellow col -->

<!-- find by category table: control row -->
<tr><td class="servicesColumn"><img src="htdocs/images/spacer.gif" height="1" width="10" border="0" alt=""></td><td class="servicesColumn"><img src="htdocs/images/spacer.gif" height="1" width="210" border="0" alt=""></td><td class="servicesColumn"><img src="htdocs/images/spacer.gif" height="1" width="1" border="0" alt=""></td></tr>
<!-- /find by category table: control row -->
</table>
