<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h2><bean:message key="common.title.currinfo" /></h2>
<c:set var="license" value="${licenseeDetail.licenseDetail}" scope="request"/>
<c:import url="/pages/licenseInfo.jsp" />
<p>
<form>
<center>
    <input type="button" accesskey="a" tabindex="1" onClick="window.close()" value="Close Window" class="button">
</center>
</form>
</p>