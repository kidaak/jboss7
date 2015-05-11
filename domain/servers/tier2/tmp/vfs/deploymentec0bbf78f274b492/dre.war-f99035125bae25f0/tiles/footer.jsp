<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="houston-util" prefix="util" %>

<table class="noprint" border="0" cellspacing="0" cellpadding="0" width="100%" bgcolor="#ffffff">
  <tr>
    <td bgcolor="#FFFFFF"><img src="htdocs/images/spacer.gif" height="3" width="1" border="0" alt=""></td>
  </tr>
  <tr>
    <td bgcolor="#666666"><img src="htdocs/images/spacer.gif" height="1" width="1" border="0" alt=""></td>
  </tr>
  <tr>
    <td bgcolor="#CCCCCC" align="center">
        <html:link action="/92privacyPolicy.do" styleClass="grayText"><bean:message key="nav.privacy"/></html:link>
        <img src="htdocs/images/icon_pipe_gray.gif" height="15" width="32" border="0" align="middle" alt="">
        <a href="<util:propertyMgr key="Usability.URL" />" class="grayText"><bean:message key="nav.usuability" /></a>
        <img src="htdocs/images/icon_pipe_gray.gif" height="15" width="32" border="0" align="middle" alt="">
        <a href="<util:propertyMgr key="AcceptableUse.URL" />" class="grayText"><bean:message key="nav.acceptable" /></a>
        <img src="htdocs/images/icon_pipe_gray.gif" height="15" width="32" border="0" align="middle" alt="">
        <a href="<util:propertyMgr key="ContactUs.URL" />" class="grayText"><bean:message key="nav.contact"/></a>
        <img src="htdocs/images/icon_pipe_gray.gif" height="15" width="32" border="0" align="middle" alt="">
        <html:link action="/80help.do" styleClass="grayText"><bean:message key="nav.help"/></html:link>
    </td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF" valign="middle" align="center" class="grayTextDark" height="21">
      <bean:message key="common.copyright"/>
    </td>
  </tr>
</table>
<!-- /footer nav and copyright -->
