<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<p class="dreInstruction">
The system is temporarily unavailable.  Please try again later.
</p>
<logic:messagesPresent>
    <div class="errorMessage">
        <html:messages id="msg">
            <p><bean:write name="msg"/></p>
        </html:messages>
    </div>
</logic:messagesPresent>