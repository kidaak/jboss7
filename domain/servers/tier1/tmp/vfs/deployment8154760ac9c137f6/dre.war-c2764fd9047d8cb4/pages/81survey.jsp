<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="dreInstructionConfig">
<c:import url="/pages/dynamicContent.jsp">
    <c:param name="page" value="81survey_01.jsp" />
</c:import>
</div>

<html:form action="submitSurvey" method="post">

  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
  </tr>
  <tr>
    <td>
      <table border="0" cellspacing="0" cellpadding="0">
      <tr>

        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
        <td align="right" valign="top">
          <label for="findOut">How did you find out about&nbsp;&nbsp;&nbsp;<br> online Real Estate Licensing:</label>&nbsp;&nbsp;
        </td>
        <td>
            <html:radio property="findOut" tabindex="1" value="1" styleId="findOut" />Radio
            <br>
            <html:radio property="findOut" tabindex="2" value="2" styleId="findOut" />Television
            <br>
            <html:radio property="findOut" tabindex="3" value="6" styleId="findOut" />Search Engine
            <br>
            <html:radio property="findOut" tabindex="4" value="3" styleId="findOut" />Newspaper/Print Media
        </td>
        <td valign="top">
            <html:radio property="findOut" tabindex="5" value="5" styleId="findOut" />Internet
            <br>
            <html:radio property="findOut" tabindex="6" value="4" styleId="findOut" />Mail
            <br>
            <html:radio property="findOut" tabindex="7" value="7" styleId="findOut" />Other
        </td>
      </tr>
      <tr>
        <td colspan="4"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="right" valign="top">
          <label for="satisfied">How satisfied were you using&nbsp;&nbsp;&nbsp;<br> online Real Estate Licensing:</label>&nbsp;&nbsp;
        </td>
        <td colspan="2">
            <html:radio property="satisfied" tabindex="8" value="1" styleId="satisfied" />Very Satisfied
            <br>
            <html:radio property="satisfied" tabindex="9" value="2" styleId="satisfied" />Somewhat Satisfied
            <br>
            <html:radio property="satisfied" tabindex="10" value="3" styleId="satisfied" />Not Satisfied
        </td>
      </tr>
      <tr>

        <td colspan="4"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
      </tr>
      <tr>
        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
        <td nowrap align="right">
          <label for="easy">Was the application easy to use?</label>&nbsp;&nbsp;
        </td>
        <td colspan="2">
            <html:radio property="easy" tabindex="11" value="1" styleId="easy" />Yes
            &nbsp;&nbsp;&nbsp;
            <html:radio property="easy" tabindex="12" value="0" styleId="easy" />No
        </td>
      </tr>
      <tr>
        <td colspan="4"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
      </tr>
      <tr>
        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
        <td nowrap align="right">
          <label for="help">Was the help easy to find?</label>&nbsp;&nbsp;
        </td>
        <td colspan="2">
            <html:radio property="help" tabindex="13" value="1" styleId="help" />Yes
            &nbsp;&nbsp;&nbsp;
            <html:radio property="help" tabindex="14" value="0" styleId="help" />No
        </td>
      </tr>
      <tr>
        <td colspan="4"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
      </tr>
      <tr>
        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
        <td nowrap align="right">
          <label for="helpful">Was the help useful?</label>&nbsp;&nbsp;
        </td>
        <td colspan="2">
            <html:radio property="helpful" tabindex="15" value="1" styleId="helpful" />Yes
            &nbsp;&nbsp;&nbsp;
            <html:radio property="helpful" tabindex="16" value="0" styleId="helpful" />No
        </td>
      </tr>
      <tr>
        <td colspan="4"><img src="htdocs/images/spacer.gif" width="10" height="5" alt=""></td>
      </tr>
      <tr>
        <td><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
        <td align="right" valign="top" nowrap>
          <label for="comment">Please give us your comments about&nbsp;&nbsp;&nbsp;<br> online Real Estate Licensing:</label>&nbsp;&nbsp;
        </td>
        <td colspan="2">
            <html:textarea property="comment" tabindex="17" cols="55" rows="8" styleId="comment"><bean:message key="p81.survey.defaultcomments"/></html:textarea>
        </td>
      </tr>
      <tr>
        <td colspan="4"><img src="htdocs/images/spacer.gif" width="10" height="10" alt=""></td>
      </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td><img src="htdocs/images/spacer.gif" width="20" height="20" alt=""></td>
  </tr>
  <tr>
    <td>
      
        <html:submit property="submit.next" tabindex="18" styleClass="button">Submit Your Survey Responses</html:submit>
        &nbsp;
        <html:submit property="home" tabindex="19" styleClass="button">Return to Home</html:submit>
    </td>
  </tr>
  </table>
</html:form>