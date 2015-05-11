<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
    <c:when test="${empty questionIndex}">
        <c:set var="questionIndex" value="1"/>
    </c:when>
    <c:otherwise>
        <c:set var="questionIndex" value="${param.questionIndex}"/>
    </c:otherwise>
</c:choose>

<c:choose>
    <c:when test="${brokerAuditAnswer.no}">
        <tr>
            <td class="dataReviewLabel" valign="top"><span class="explain">No</span></td>
            <td class="dataReviewData">
                <c:import url="/pages/dynamicContent.jsp">
                    <c:param name="page" value="${param.questionPrefix}${questionIndex}.jsp"/>
                </c:import>
                <br><span class="explain"><c:out value="${brokerAuditAnswer.explanation}"/></span>
            </td>
        </tr>
    </c:when>
    <c:otherwise>
        <tr>
            <td class="dataReviewLabel" valign="top">
                <c:choose>
                    <c:when test="${(empty brokerAuditAnswer.answer) or brokerAuditAnswer.NA}">
                        N/A
                    </c:when>
                    <c:otherwise>
                        Yes
                    </c:otherwise>
                </c:choose>
            </td>
            <td class="dataReviewData">
                <c:import url="/pages/dynamicContent.jsp">
                    <c:param name="page" value="${param.questionPrefix}${questionIndex}.jsp"/>
                </c:import>
            </td>
        </tr>
    </c:otherwise>
</c:choose>
