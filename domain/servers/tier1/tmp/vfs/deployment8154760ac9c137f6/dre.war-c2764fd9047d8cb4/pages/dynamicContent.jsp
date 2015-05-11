<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- file://${applicationScope.dynamicContentDir}${param.page} -->
<c:if test="${!empty param.page}">
    <c:catch var="exception">
        <c:import url="/dynamicCT.do?target=${param.page}" />
    </c:catch>
</c:if>
