<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script language="JavaScript">
<!--
var page_submitted = false;

function submitForm() {
    var buttonId = "submitButton";
    var textId = "submitText";

    if ( page_submitted ) {
        return false;
    } else {
        page_submitted = true;
    }

    var button = (document.getElementById) ? document.getElementById(buttonId) : (document.all) ? document.all[buttonId]: (document.layers)? document.layers[buttonId]: null;
    var text = (document.getElementById) ? document.getElementById(textId) : (document.all) ? document.all[textId]: (document.layers)? document.layers[textId]: null;

    if (!button) return;

    var cntnt = "<span class='errorMessage'><b>Your request is being processed.<b></span>";

    if (typeof button.innerHTML != "undefined") {
        button.style.visibility='hidden';
        text.innerHTML = cntnt;
    } 

    return true;
}
//-->
</script>

<logic:messagesPresent>
    <div class="errorMessage">
        <bean:message key="errors.validation"/>
        <ul>
            <html:messages id="msg">
                <li><bean:write name="msg"/></li>
            </html:messages>
        </ul>
    </div>
</logic:messagesPresent>

<html:form action="/services/payWorkflow" onsubmit="return submitForm()">
<input type="hidden" name="stepIndex" value="<c:out value="${workflow.currentStepIndex}" />" />
<div class="dreInstructionConfig">
    <c:import url="/pages/dynamicContent.jsp">
        <c:param name="page" value="62payCollect_01.jsp" />
    </c:import>
</div>

<c:set var="currentStepNum"><c:out value='${workflow.currentStepIndex}' /></c:set>
<c:if test="${!empty workflow.step[currentStepNum].stepMessage}">
    <div class="dreInstructionDyn">
        <c:out value="${workflow.step[currentStepNum].stepMessage}" escapeXml="false" />
    </div>
</c:if>

<h2><bean:message key='p60.title.summary'/></h2>
<c:import url="/pages/listCharges.jsp" />

<h2><bean:message key='p62.title.payment'/></h2>
<img src="htdocs/images/spacer.gif" width="20" height="50" alt=""/>
<img src="htdocs/images/cards.gif" width="206" height="36" alt="credit card images"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
    <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""/></td>
</tr>
<tr>
    <td>
        <table border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td colspan="3"><bean:message key="p62.creditcards" /></td>
        </tr>
        <!-- ============================================ -->
        <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
        <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
         <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
        <tr>
          
            <td colspan="3" valign="top"><h3><bean:message key="p62.help.address" /></h3>
            
            </td>
        </tr>
        <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
        <!-- ============================================ -->
        <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap align="right" valign="top">
                <label for="name">
                    <bean:message key="p62.label.fname" />
                </label>
                <bean:message key="common.label.sep" />&nbsp;&nbsp;
                <br/>
                
            </td>
            <td><html:text property="fname" size="20" maxlength="50" styleId="name" /></td>
        </tr>
         <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
        <!-- ============================================ -->
         <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap align="right" valign="top">
                <label for="name">
                    <bean:message key="p62.label.lname" />
                </label>
                <bean:message key="common.label.sep" />&nbsp;&nbsp;
                <br/>
                
            </td>
            <td><html:text property="lname" size="20" maxlength="50" styleId="name" /></td>
        </tr>
        <!-- ============================================ -->
        <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap align="right" valign="top">
                <label for="address">
                    <bean:message key="p62.label.address" />
                </label>
                <bean:message key="common.label.sep" />&nbsp;&nbsp;
                <br/>
    
                <span class="dreExampleText">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </span>
            </td>
            <td><html:text property="address" size="35" maxlength="50" styleId="add1" /></td>
        </tr>
        <!-- ============================================ -->
         <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap align="right" valign="top">
                <label for="city">
                    <bean:message key="p62.label.city" />
                </label>
                <bean:message key="common.label.sep" />&nbsp;&nbsp;
                <br/>
            </td>
            <td><html:text property="city" size="15" maxlength="15" styleId="name" /></td>
        </tr>
        <!-- ============================================ -->
        <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
        <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap align="right" valign="top">
                <label for="state">
                    <bean:message key="p62.label.state" />
                </label>
                <bean:message key="common.label.sep" />&nbsp;&nbsp;
                <br/>
            </td>
            <td>
            	<html:select property="state" styleId="state">
                        <html:option value="">-- Select --</html:option>
                        <%@ include file="/pages/stateList.jsp" %>
                </html:select>
            </td>
        </tr>
        <!-- ============================================ -->  
         <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
        <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap align="right" valign="top">
                <label for="zip">
                    <bean:message key="p62.label.zip" />
                </label>
                <bean:message key="common.label.sep" />&nbsp;&nbsp;
                <br/>
            </td>
            <td>
            	<html:text property="zip" size="12" maxlength="20" styleId="zip" />
            </td>
        </tr>
         <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
        
              <tr>
          
            <td colspan="3" valign="top"><h3>Please enter credit card information</h3>
            
            </td>
        </tr>
        <!-- ============================================ -->   
                <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap align="right" valign="top">
                <label for="name">
                    <bean:message key="p62.label.name" />
                </label>
                <bean:message key="common.label.sep" />&nbsp;&nbsp;
                <br/>
                
            </td>
            <td><html:text property="name" size="20" maxlength="50" styleId="name" /></td>
        </tr>
         <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
        <!-- ============================================ -->
        <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap align="right" valign="top">
                <label for="state">
                    <bean:message key="p62.label.cardtype" />
                </label>
                <bean:message key="common.label.sep" />&nbsp;&nbsp;
                <br/>
            </td>
            <td>
            	<html:select property="cardType" styleId="state">
                        <html:option value="">-- Select --</html:option>
                        <html:option value="VISA">VISA</html:option>
                        <html:option value="American Express">American Express</html:option>
                        <html:option value="Master Card">Master Card</html:option>
                        <html:option value="Discover">Discover</html:option>
                </html:select>
            </td>
        </tr>
        <!-- ============================================ -->    
         <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>              
        <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap align="right" valign="top">
                <label for="creditcard">
                    <bean:message key="p62.label.card" />
                </label>
                <bean:message key="common.label.sep" />&nbsp;&nbsp;
                <br/>
                <span class="dreExampleText">
                    <bean:message key="p62.help.card" />&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
            </td>
            <td><html:text property="accountNumber" size="20" maxlength="16" styleId="name" /></td>
        </tr>
        <!-- ============================================ -->
         <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
        <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap align="right" valign="top">
                <label for="csv">
                    <bean:message key="p62.label.csv" />
                </label>
                <bean:message key="common.label.sep" />&nbsp;&nbsp;
                <br/>
                <span class="dreExampleText">
                    <bean:message key="p62.help.csv" />&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
            </td>
            <td><html:text property="csv" size="4" maxlength="4" styleId="name" /></td>
        </tr>
        <!-- ============================================ -->
        <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
        <tr>
            <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
            <td nowrap align="right" valign="top">
                <label for="month">
                    <bean:message key="p62.label.expdate" />
                </label>
                <bean:message key="common.label.sep" />&nbsp;&nbsp;
                <br/>
                <span class="dreExampleText">
                    <label for="year"><bean:message key="p62.help.date" /></label>&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
            </td>
            <td><html:text property="month" size="3" maxlength="2" styleId="month" /> / <html:text property="year" size="5" maxlength="4" styleId="year" /></td>
        </tr>
        <!-- ============================================ -->
        <tr>
            <td colspan="3"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
        </tr>
        </table>
    </td>
</tr>
</table>

<div class="inputButtons">
    <table cellspacing="0" cellpadding="0" border="0">
        <tr>
            <td>
                <div id="submitButton">
                    <html:submit property="submit.next" styleClass="button100" accesskey="a"><bean:message key="common.button.continue"/></html:submit>
                    &nbsp;
                    <html:cancel styleClass="button100" accesskey="a"><bean:message key="common.button.cancel"/></html:cancel>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id="submitText" class="errorTitle" style=""></div>
            </td>
        </tr>
    </table>
</div>

</html:form>