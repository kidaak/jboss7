<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="houston-util" prefix="util" %>


<logic:present parameter="description">
    <bean:parameter id="description" name="description"/>
    <meta name="Description" content='<bean:write name="description"/>'>
</logic:present>

<logic:present parameter="keywords">
    <bean:parameter id="keywords" name="keywords"/>
    <meta name="Keywords" content='<bean:write name="keywords"/>'>
</logic:present>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <meta http-equiv="cache-control" content="no-cache"/>
    <link rel="stylesheet" href="htdocs/commonfiles/globalStyles.css" type="text/css" media="screen">
    <link rel="stylesheet" href="htdocs/commonfiles/globalStyles-print.css" type="text/css" media="print">
    <script language="JavaScript" type="text/JavaScript" src="htdocs/commonfiles/azUtils.js"></script>
    <link rel="SHORTCUT ICON" href="<util:propertyMgr key="StaticPath" defaultValue="http://az.gov/app/realEstate/"/>htdocs/images/favicon.ico">
    <script language="JavaScript1.1">
        function selectAll(field) {
            for (i = 0; i < field.form.elements.length; i++) {
                if (field.form.elements[i].type == "checkbox") {
                    field.form.elements[i].checked = field.checked;
                }
            }
        }
    </script>
	