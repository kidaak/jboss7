<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="houston-util" prefix="util" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html locale="true">
<head>
<base href='<util:propertyMgr key="StaticPath"/>'>
<title><tiles:getAsString name="browserTitle"/></title>
<tiles:get name="tile.metaInfo"/>
</head>

<body topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0" marginwidth="0" marginheight="0" background="htdocs/images/bg_header.gif"
    bgcolor="#FFFFFF">
<tiles:get name="tile.header"/>

<!-- start of main table -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%" class="servicesColumn" valign="top">
      <tiles:get name="tile.headerNav"/>

      <!-- center table -->
      <table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#ffffff" >
      <tr>
          <td valign="top" class="servicesColumn">
            <tiles:get name="tile.nav"/>
          </td>

          <!-- white space -->
          <td rowspan="2" valign=top bgcolor=white>&nbsp;

          </td>
          <td valign="top" width="100%" rowspan="2" bgcolor=white height="100%">

            <!-- outer content area -->
            <table border="0" cellspacing="0" cellpadding="0" width="100%" bgcolor="#ffffff" bordercolor="blue" height="100%">
              <tr valign="top" align="left">
                <td id="main" valign="top" align="left">
                  <!-- content area here -->
                  <table border="0" cellpadding="0" cellspacing="0" width="100%" bordercolor="red" align="left">
                    <tbody>
                    <tr valign="top" align="left">
                      <td valign="top" height="100%">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0" align="left">
                          <tr valign="top" align="left">
                            <td class="appTitle3" valign="top" align="right" width="3" height=3><img src="htdocs/images/topleft.gif" width="3" height="3" border="0" alt=""></td>
                            <td class="appTitle3" align=left width=5 height=3><img src="htdocs/images/spacer.gif" width="1" height="3" border="0" alt=""></td>
                            <td class="appTitle3" align=left height=3 width="100%"><img src="htdocs/images/spacer.gif" width="1" height="1" border="0" alt=""></td>
                            <td class="appTitle3" bgcolor="black" width="1" height=3 ><img src="htdocs/images/spacer.gif" width="1" height="1" border="0" alt=""></td>
                          </tr>
                          <tr valign="top" align=left>
                            <td class="appTitle" width="3"><img src="htdocs/images/spacer.gif" width="3" height="1" border="0" alt=""></td>
                            <td class="appTitle" width=5><img src="htdocs/images/spacer.gif" width="5" height="1" border="0" alt=""></td>
                            <td class="appTitle">
                              <tiles:importAttribute name="contentTitle" scope="request"/>
                              <tiles:get name="tile.title"/>
                            </td>
                            <td class="appTitle" bgcolor="black" width="1" height="1"><img src="htdocs/images/spacer.gif" width="1" height="1" border="0" alt=""></td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr valign="top">
                      <td height="1" class="appTitle1"><img src="htdocs/images/spacer.gif" height="1" width="1" alt=""></td>
                    </tr>
                    <tr valign="top" >
                        <td bgcolor="white" valign="top" height="450">
                          <table border="0" cellpadding="10" cellspacing="1" width="100%" height="100%">
                          <tbody>
                            <tr valign="top">
                              <td class="blackText12" bgcolor="white" valign="top" align="left">
                                <%-- include messages --%>
                                <tiles:insert attribute="tile.messages" ignore="true"/>
                                
                                <!-- Content: Start -->
                                <tiles:get name="tile.content"/>
                                <!-- Content: End -->
                              </td>
                            </tr>
                          </tbody>
                          </table>
                        </td>
                    </tr>
                    </tbody>
                  </table>
                <!-- end of content area here -->
                </td>
              </tr>
            </table>
          <!-- end of outer content area -->
          </td>
          <!-- white space -->
          <td valign="top" rowspan="2" bgcolor=white>&nbsp;

          </td>
        </tr>

        <!-- this is the yellow image on the left -->
        <tr>
          <td class="servicesColumn" valign="bottom">&nbsp;</td>
        </tr><!-- /control row -->
      </table><!-- end of center table -->
    </td>
  </tr>
</table><!-- end of main table -->

<tiles:get name="tile.footer"/>

</html:html>