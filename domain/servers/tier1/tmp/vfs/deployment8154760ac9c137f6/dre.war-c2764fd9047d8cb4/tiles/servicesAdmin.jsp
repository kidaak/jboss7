<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="houston-util" prefix="util" %>

<table width="210" border="0" cellspacing="0" cellpadding="0">
<tr valign="top">
<td colspan="2" class="appTitle" align="right" valign="top"><img src="htdocs/images/label_left.gif" height="19" width="4" border="0" alt="">&nbsp;Services</td>
<td><img src="htdocs/images/spacer.gif" height="19" width="1" border="0" alt=""></td></tr>

<tr class="appTitle"><td colspan="3"><img src="htdocs/images/spacer.gif" height="1" width="1" border="0" alt=""></td></tr>
<tr><td colspan="3"><img src="htdocs/images/spacer.gif" height="1" width="1" border="0" alt=""></td></tr>

<!-- // ----------------------------------------------------- -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>

<!-- // ----------------------------------------------------- -->
<tr>
<td class="servicesOdd">&nbsp;</td>
<td class="servicesOdd" colspan=2>
<html:link action="/990editConfig" styleClass="servicesOdd"><bean:message key="nav.config"/></html:link>
</td>

<!-- // ----------------------------------------------------- -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>

<!-- // ----------------------------------------------------- -->
<tr>
<td class="servicesEven">&nbsp;</td>
<td class="servicesEven" colspan=2>
<html:link action="/95report" styleClass="servicesEven"><bean:message key="nav.surveyReport"/></html:link>
</td>

</tr>
<!-- // ----------------------------------------------------- -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>

<!-- // ----------------------------------------------------- -->
<tr>
<td class="servicesOdd">&nbsp;</td>
<td class="servicesOdd" colspan=2>
<html:link action="/80help" styleClass="servicesOdd"><bean:message key='nav.help'/></html:link>
</td>
</tr>

<!-- // ----------------------------------------------------- -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>

<!-- // -----------------------------------------------------
<tr>
<td class="servicesEven">&nbsp;</td>
<td class="servicesEven" colspan=2>
<html:link styleClass="servicesEven" action="/90AgentTutorial.do"><bean:message key='nav.tutorial'/></html:link>
</td>
</tr>-->

<!-- // ----------------------------------------------------- -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>

<!-- // ----------------------------------------------------- -->
<tr>
<td class="servicesOdd">&nbsp;</td>
<td class="servicesOdd" colspan=2>
<html:link styleClass="servicesOdd" action="/02main.do"><bean:message key='nav.gotodre'/></html:link>
</td>
</tr>

<!-- // ----------------------------------------------------- -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>

<!-- // ----------------------------------------------------- -->
<tr>
<td class="servicesEven">&nbsp;</td>
<td class="servicesEven" colspan=2>
<a class="servicesEven" href="<util:propertyMgr key="PortalHome"/>"><bean:message key='nav.gotoaays'/></a>
</td>
</tr>


<!-- // ----------------------------------------------------- -->
<tr><td class="servicesDivider" colspan=3 height=2><img src="htdocs/images/spacer.gif" height="2" width="1" border="0" alt=""></td></tr>





<tr class="servicesDivider"><td colspan="3"><img src="htdocs/images/spacer.gif" height="1" width="1" border="0" alt=""></td></tr>

<!-- yellow column to the bottom of the screen -->
<tr><td class="servicesColumn" colspan="3" valign="bottom"><img src="htdocs/images/spacer.gif" height="70" width="1" border="0" alt=""></td></tr>
<!-- /yellow col -->

<!-- find by category table: control row -->
<tr><td class="servicesColumn"><img src="htdocs/images/spacer.gif" height="1" width="10" border="0" alt=""></td><td class="servicesColumn"><img 
src="htdocs/images/spacer.gif" height="1" width="210" border="0" alt=""></td><td class="servicesColumn"><img src="htdocs/images/spacer.gif" height="1" width="1" border="0" alt=""></td></tr>
<!-- /find by category table: control row -->
</table>
