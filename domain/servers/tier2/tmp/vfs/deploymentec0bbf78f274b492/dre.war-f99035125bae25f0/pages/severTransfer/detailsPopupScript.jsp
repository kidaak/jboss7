<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script language="javascript">
<!--
function viewDetails(index, list) {
    var windowName = "detail" + index;
    var url = "<c:out value='${pageContext.request.contextPath}' />/services/viewLicenseeDetailSeverTransferEmployeesFunction.do?index=" + index +"&list=" + list;
    window.open( url, windowName, "height=520, width=500, scrollbars, toolbar=false, menubar=false" );
}
//-->
</script>
