<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${!empty workflow}">
    <c:out value="${workflow.workflowDisplayName}" />
</c:if>