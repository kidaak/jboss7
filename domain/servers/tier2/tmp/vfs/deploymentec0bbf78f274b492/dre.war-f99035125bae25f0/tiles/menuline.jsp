<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table class="dreMenuline" width="100%" border="0" cellspacing="0" cellpadding="0" bordercolor="black">
  <tr bgcolor="#000000">
    <td colspan="7"><img src="htdocs/images/spacer.gif" height="1" border="0" width="1" alt=""></td>
    <td><img src="htdocs/images/spacer.gif" height="1" border="0" width="1" alt=""></td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td colspan="7"><img src="htdocs/images/spacer.gif" height="1" border="0" width="1" alt=""></td>
    <td><img src="htdocs/images/spacer.gif" height="1" border="0" width="1" alt=""></td>
  </tr>
  <tr class="dreMenuline">
    <td class="dreMenuline" align="right">
      <img src="htdocs/images/spacer.gif" height="1" width="5" border="0" align="middle" alt=""><img src="htdocs/images/icon_dots.gif" height="16" width="16" align="middle" border="0" alt="">
    </td>
    <td class="dreMenuline">
<c:if test="${ !empty userInfo }">
      <html:link action="/home" styleClass="dreMenuline" ><bean:message key="nav.home"/></html:link>
</c:if>
<c:if test="${ empty userInfo }">
      <html:link action="/index" styleClass="dreMenuline" ><bean:message key="nav.home"/></html:link>
</c:if>
    </td>
    <td class="dreMenuline" align="right">
      <img src="htdocs/images/spacer.gif" height="1" width="20" border="0" align="middle" alt=""><img src="htdocs/images/icon_dots.gif" height="16" width="16" align="middle" border="0" alt="">
    </td>
    <td class="dreMenuline" align="left">
      <html:link action="/82faq" styleClass="dreMenuline"><bean:message key="nav.faqs"/></html:link>
    </td>
<c:if test="${ !empty userInfo }">
    <td class="dreMenuline" align="right">
      <img src="htdocs/images/spacer.gif" height="1" width="20" border="0" align="middle" alt=""><img src="htdocs/images/icon_dots.gif" height="16" width="16" align="middle" border="0" alt="">
    </td>
    <td class="dreMenuline" align="left">
      <html:link action="/logoff" styleClass="dreMenuline"><bean:message key="nav.logoff"/></html:link>
    </td>
    <td class="dreMenuline">
      <img src="htdocs/images/spacer.gif" height="1" width="5" border="0" align="middle" alt="">
    </td>
    <td class="dreMenuline" width="100%" align="right">
        &nbsp;
        <c:out value="${userInfo.userDetail.licenseDetail.licenseNumber}" /> - <c:out value="${userInfo.userDetail.licenseDetail.personalDetail.lastName}" />
        &nbsp;
        &nbsp;
    </td>
</c:if>
<c:if test="${ empty userInfo }">
    <td class="dreMenuline" width="100%">
      <img src="htdocs/images/spacer.gif" height="1" width="5" border="0" align="middle" alt="">
    </td>
    <td class="dreMenuline" width="100%">
      <img src="htdocs/images/spacer.gif" height="1" width="5" border="0" align="middle" alt="">
    </td>
    <td class="dreMenuline" width="100%">
      <img src="htdocs/images/spacer.gif" height="1" width="5" border="0" align="middle" alt="">
    </td>
    <td class="dreMenuline" width="100%">
      <img src="htdocs/images/spacer.gif" height="1" width="5" border="0" align="middle" alt="">
    </td>
</c:if>
<%----------------------------------------------------------------------------%>
  </tr>
  <tr bgcolor="#666666">
    <td colspan="7"><img src="htdocs/images/spacer.gif" height="1" border="0" width="1" alt=""></td>
    <td><img src="htdocs/images/spacer.gif" height="1" border="0" width="1" alt=""></td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td colspan="7"><img src="htdocs/images/spacer.gif" height="1" border="0" width="1" alt=""></td>
    <td><img src="htdocs/images/spacer.gif" height="1" border="0" width="1" alt=""></td>
  </tr>
  <!-- nav control row -->
  <tr bgcolor="#FFFFFF">
    <td><img src="htdocs/images/spacer.gif" width="21" border="0" height="4" alt=""></td>
    <td><img src="htdocs/images/spacer.gif" width="36" border="0" height="4" alt=""></td>
    <td><img src="htdocs/images/spacer.gif" width="36" border="0" height="4" alt=""></td>
    <td><img src="htdocs/images/spacer.gif" width="36" border="0" height="4" alt=""></td>
    <td><img src="htdocs/images/spacer.gif" width="36" border="0" height="4" alt=""></td>
    <td><img src="htdocs/images/spacer.gif" width="127" border="0" height="4" alt=""></td>
    <td><img src="htdocs/images/spacer.gif" width="5" border="0" height="4" alt=""></td>
    <td><img src="htdocs/images/spacer.gif" width="1" border="0" height="4" alt=""></td>
  </tr>
  <!-- /nav control row -->
  <!-- /header navigation -->
</table>
