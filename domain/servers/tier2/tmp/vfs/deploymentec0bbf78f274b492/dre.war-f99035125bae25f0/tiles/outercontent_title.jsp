<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<!-- outer content area -->
<table border="0" cellspacing="0" cellpadding="0" width="100%" bgcolor="#ffffff" bordercolor=blue>
    <tr valign=top align=left>
        <td id="main" height="100%" valign=top align=left>
        <!-- content area here -->
          <table border="0" cellpadding="0" cellspacing="0" width="100%" bordercolor=red align=left>
            <tbody>
              <tr valign="top" align=left>
                <td valign="top">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" align=left>
                    <tr valign="top" align=left>
                            <td class="appTitle3" valign="top" align="right" width="3" height=3><img src="htdocs/images/topleft.gif" width="3" height="3" border="0" alt=""></td>
                            <td class="appTitle3" align=left width=5 height=3><img src="htdocs/images/spacer.gif" width="1" height="3" border="0" alt=""></td>
                            <td class="appTitle3" align=left height=3 width="100%"><img src="htdocs/images/spacer.gif" width="1" height="1" border="0" alt=""></td>
                            <td class="appTitle3" bgcolor="black" width="1" height=3 ><img src="htdocs/images/spacer.gif" width="1" height="1" border="0" alt=""></td>
                    </tr>
                    <tr valign="top" align=left>
                      <td class="appTitle" background="htdocs/images/left.gif" width="3"><img src="htdocs/images/spacer.gif" width="3" height="1" border="0" alt=""></td>
                      <td class="appTitle" width=5><img src="htdocs/images/spacer.gif" width="5" height="1" border="0" alt=""></td>
                      <td class="appTitle">
                        <% // this section prints business_name / project_name or
                           //                     operator_last_name / project_name
                        %>
                        <bean:write name="subtitle" scope="request"/><br>
                            <span class="adeqUserID">
                            <bean:write name="smartNOIFormBean" property="operator.businessName"/>
                            <logic:empty name="smartNOIFormBean" property="operator.businessName">
                                <bean:write name="smartNOIFormBean" property="operator.name.lastName"/>
                            </logic:empty>
                            <logic:notEmpty name="smartNOIFormBean" property="projectName">
                                / <bean:write name="smartNOIFormBean" property="projectName"/>
                            </logic:notEmpty>
                            </span>
                        </td>
                        <td class="appTitle" bgcolor="black" width="1"><img src="htdocs/images/spacer.gif" width="1" height="1" border="0" alt=""></td>
                     </tr>
                </table>
                </td>
              </tr>
              <tr valign="top">
                <td height="1" class="appTitle1"><img src="htdocs/images/spacer.gif" height="1" width="1" alt=""></td>
              </tr>
              <tr valign="top">
                <td bgcolor="black" valign="top">
                <table border="0" cellpadding="10" cellspacing="1" width="100%">
                  <tbody>
                    <tr valign="top">
                      <td class="blackText12" width="+ mainWidth +" height="' + mainHeight + '" bgcolor="white" valign="top" align="left">
                      <!-- Content: Start -->
