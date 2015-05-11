<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="houston-util" prefix="util" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html locale="true">
<head>
<base href='<util:propertyMgr key="StaticPath"/>'>
<title><tiles:getAsString name="browserTitle"/></title>
<tiles:get name="tile.metaInfo"/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0" marginwidth="0" marginheight="0" bgcolor="#FFFFFF">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr valign="top" >
    <td bgcolor="black" valign="top" height="450">
        <table border="0" cellpadding="10" cellspacing="1" width="100%" height="100%">
        <tbody>
        <tr valign="top">
            <td class="blackText12" bgcolor="white" valign="top" align="left">
                <!-- Content: Start -->
                <tiles:get name="tile.content"/>
                <!-- Content: End -->
            </td>
        </tr>
        </tbody>
        </table>
    </td>
</tr>
</table>

</html:html>