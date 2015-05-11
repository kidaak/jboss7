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
<div class="f3">
    <div class="fc32">	 
        <c:import url="/pages/dynamicContent.jsp">
            <c:param name="page" value="${param.questionPrefix}${status.index + 1}.jsp"/>
        </c:import>
    </div>
    <div class="fc31">
        <input type="radio" name="<c:out value="${param.propertyName}"/>[<c:out value="${status.index}"/>].answer" value="Y" id="q<c:out value="${status.index + 1}"/>y" <c:if test="${answer.yes}">checked</c:if>><label for="q<c:out value="${status.index + 1}"/>y">Yes</label>
        <c:if test="${empty param.hideNo}">
            <input type="radio" name="<c:out value="${param.propertyName}"/>[<c:out value="${status.index}"/>].answer" value="N" id="q<c:out value="${status.index + 1}"/>n" <c:if test="${answer.no}">checked</c:if>><label for="q<c:out value="${status.index + 1}"/>n">No</label>
        </c:if>
        <c:if test="${empty param.hideNA}">
            <input type="radio" name="<c:out value="${param.propertyName}"/>[<c:out value="${status.index}"/>].answer" value="N/A" id="q<c:out value="${status.index + 1}"/>na" <c:if test="${answer.NA}">checked</c:if>><label for="q<c:out value="${status.index + 1}"/>na">N/A</label>
        </c:if>
    </div>

    <c:if test="${answer.no}">
        <label for="q<c:out value="${status.index + 1}"/>e">Explanation:</label><br>
        <textarea name="<c:out value="${param.propertyName}"/>[<c:out value="${status.index}"/>].explanation" cols="80" rows="10" id="q<c:out value="${status.index + 1}"/>e" wrap="virtual"><c:out value="${answer.explanation}"/></textarea>
    </c:if>
</div>
</c:forEach>