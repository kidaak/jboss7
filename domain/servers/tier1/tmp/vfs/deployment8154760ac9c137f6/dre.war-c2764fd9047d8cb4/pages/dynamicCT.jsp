<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



    <c:catch var="exception">
        <%= request.getAttribute("VALUE") %>
    </c:catch>

