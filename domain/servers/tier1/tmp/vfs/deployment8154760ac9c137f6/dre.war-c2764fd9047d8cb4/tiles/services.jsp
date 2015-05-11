<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="houston-util" prefix="util" %>

<jsp:useBean id="alternator" class="com.ibm.gs.houston.jsp.beans.StringAlternator" />
<c:set target="${alternator}" property="string" value="servicesOdd" />
<c:set target="${alternator}" property="string" value="servicesEven" />

<table class="noprint" width="210" border="0" cellspacing="0" cellpadding="0">
<tr valign="top">
<td colspan="2" class="appTitle" align="right" valign="top"><img src="htdocs/images/label_left.gif" height="19" width="4" border="0" alt="">&nbsp;<bean:message key='nav.services'/></td>
<td><img src="htdocs/images/spacer.gif" height="19" width="1" border="0" alt=""></td></tr>

<tr class="appTitle"><td colspan="3"><img src="htdocs/images/spacer.gif" height="1" width="1" border="0" alt=""></td></tr>
<tr><td colspan="3"><img src="htdocs/images/spacer.gif" height="1" width="1" border="0" alt=""></td></tr>

<!-- // = = = = = = = = = = = = = = = = = = -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>

<tr>
<td class="<c:out value="${alternator.nextString}"/>">&nbsp;</td>
<td class="<c:out value="${alternator.currentString}"/>" colspan=2>
<a class="<c:out value="${alternator.currentString}"/>" href="<c:url value="/home.do" />"><bean:message key='nav.home'/></a>
</td>
</tr>
<!-- // = = = = = = = = = = = = = = = = = = -->
<!-- 
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>

<tr>
<td class="<c:out value="${alternator.nextString}"/>">&nbsp;</td>
<td class="<c:out value="${alternator.currentString}"/>" colspan=2>

<c:choose>
    <c:when test="${userInfo.userDetail.licenseDetail.licenseType eq 'Broker'}">
        <a class="<c:out value="${alternator.currentString}"/>" href="<c:url value="/services/91brokerTutorial.do"/>"><bean:message key='nav.tutorial'/></a>
    </c:when>
    <c:when test="${userInfo.userDetail.licenseDetail.licenseType eq 'Salesperson'}">
        <a class="<c:out value="${alternator.currentString}"/>" href="<c:url value="/90agentTutorial.do"/>"><bean:message key='nav.tutorial'/></a>
    </c:when>
</c:choose>
</td>
</tr>
-->
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
<a class="<c:out value="${alternator.currentString}"/>" href="<c:url value="/81survey.do"/>"><bean:message key='nav.survey'/></a>
</td>
</tr>
<!-- // = = = = = = = = = = = = = = = = = = -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>
<tr>
<td class="<c:out value="${alternator.nextString}"/>">&nbsp;</td>
<td class="<c:out value="${alternator.currentString}"/>" colspan=2>
<a class="<c:out value="${alternator.currentString}"/>" href="<util:propertyMgr key="DREHome" defaultValue="http://www.azre.gov" />"><bean:message key='nav.gotodre'/></a>
</td>
</tr>
<!-- // = = = = = = = = = = = = = = = = = = -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>
<tr>
<td class="<c:out value="${alternator.nextString}"/>">&nbsp;</td>
<td class="<c:out value="${alternator.currentString}"/>" colspan=2>
<a class="<c:out value="${alternator.currentString}"/>" href="<util:propertyMgr key="PortalHome" defaultValue="http://az.gov" />"><bean:message key='nav.gotoaays'/></a>
</td>
</tr>
<!-- // = = = = = = = = = = = = = = = = = = -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>
<tr>
<td class="<c:out value="${alternator.nextString}"/>">&nbsp;</td>
<td class="<c:out value="${alternator.currentString}"/>" colspan=2>
<a class="<c:out value="${alternator.currentString}"/>" href="<c:url value="/logoff.do"/>"><bean:message key='nav.logoff'/></a>
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
