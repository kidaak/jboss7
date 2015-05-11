<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
    <c:when test="${empty param.startIndex}">
        <c:set var="startIndex" value="0"/>
    </c:when>
    <c:otherwise>
        <c:set var="startIndex" value="${param.startIndex}"/>
    </c:otherwise>
</c:choose>
<c:choose>
    <c:when test="${empty param.endIndex}">
    <%  int length = ((com.ibm.azportal.dre.struts.views.BrokerAuditAnswerView[]) request.getAttribute("brokerAuditAnswers")).length;
        pageContext.setAttribute("endIndex", Integer.toString(length - 1)); %>            
    </c:when>
    <c:otherwise>
        <c:set var="endIndex" value="${param.endIndex}"/>
    </c:otherwise>
</c:choose>



<c:forEach var="answer" items="${brokerAuditAnswers}" begin="${startIndex}" end="${endIndex}" varStatus="status">
    <c:choose>
        <c:when test="${answer.no}">
            <tr>
                <td class="dataReviewLabel" valign="top"><span class="explain">No</span></td>
                <td class="dataReviewData">
                    <c:import url="/pages/dynamicContent.jsp">
                        <c:param name="page" value="${param.questionPrefix}${status.index + 1}.jsp"/>
                    </c:import>
                    <br><span class="explain"><c:out value="${answer.explanation}"/></span>
                </td>
            </tr>
        </c:when>
        <c:otherwise>
            <tr>
                <td class="dataReviewLabel" valign="top">
                    <c:choose>
                        <c:when test="${(empty answer.answer) or answer.NA}">
                            N/A
                        </c:when>
                        <c:otherwise>
                            Yes
                        </c:otherwise>
                    </c:choose>
                </td>
                <td class="dataReviewData">
                    <c:import url="/pages/dynamicContent.jsp">
                        <c:param name="page" value="${param.questionPrefix}${status.index + 1}.jsp"/>
                    </c:import>
                </td>
            </tr>
        </c:otherwise>
    </c:choose>
</c:forEach>
