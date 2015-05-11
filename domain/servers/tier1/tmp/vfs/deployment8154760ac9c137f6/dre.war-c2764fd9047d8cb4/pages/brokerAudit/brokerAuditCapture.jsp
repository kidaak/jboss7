<%@ taglib uri="houston-util" prefix="util" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="com.ibm.azportal.dre.struts.actions.audit.ReviewBrokerAudit400Action"%>
<%@ page import="com.ibm.azportal.dre.struts.forms.BrokerAuditFormBean"%>

<%
String sessionID = request.getParameter("sessionID");
BrokerAuditFormBean formBean = ReviewBrokerAudit400Action.deserializeFormBean(sessionID);
request.setAttribute("brokerAuditFormBean", formBean);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href='<util:propertyMgr key="StaticPath"/>'>
<title>Broker Audit</title>


<style>
table, tr, td, select, input, form, li, textarea {
    font-family: arial, sans-serif; font-size: 12px; }

/* TBD - remove this */
.blackText12 {
color: #000000; font-weight: normal; font-size: 12px; font-family: verdana, arial, helvetica, sans-serif;  text-decoration: none }


/* subtitle within a form */
DIV.dataReviewSection
{
    padding: 8px 0px 0px 0px;
    margin: 0px;
    color: #006699;
    font-weight: bold;
}

/* subtitle within a form - for the broker audit review page, we need a little more space */
DIV.dataReviewSection2
{
    padding: 25px 0px 8px 0px;
    margin: 0px;
    color: #006699;
    font-weight: bold;
    font-size: large;
}

/* for the "existing data" */
TABLE.dataReview,
TD.dataReviewData
{
    padding: 0px;
    margin: 0px;
}

TD.dataReviewLabel
{
    text-align: right;
    padding: 0px 10px 0px 30px;
    margin: 0px;
}

TD.dataReviewSection
{
    padding: 8px 0px 0px 0px;
    margin: 0px;
    color: #006699;
    font-weight: bold;
}

/* This is used on the data review page for the Broker Audit questions. */
SPAN.explain {
    color: red;
}
    
TABLE.dataTableReview
{
    xpadding: 0px 4px 0px 4px;
    FONT: "Verdana", "Arial","sans-serif";
    COLOR: black;
    BACKGROUND-COLOR: white;
    xborder: 1px solid #333366;
    margin: 0px 0px 0px 20px;
}

TH.dataTableReviewHeaderCenter
{
    padding: 2px 4px 2px 4px;
    text-align: center;
    border: 1px solid #333366;
}

TD.dataTableReviewCell
{
    padding: 2px 4px 2px 4px;
    border: 1px solid #333366;
}

H2 {
    color: #006699; font-weight: normal; font-size: 18px;
    font-family: "Futura Md BT", "Trebuchet MS", arial, helvetica, sans-serif;
    text-decoration: underline;
    margin: 8px 0px 8px 0px;
}
</style>

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
                <c:import url="/pages/brokerAudit/400baAffirm.jsp"/>
                <!-- Content: End -->
            </td>
        </tr>
        </tbody>
        </table>
    </td>
</tr>
</table>

</html>