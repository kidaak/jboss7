<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
    <c:when test="${empty questionIndex}">
        <c:set var="questionIndex" value="1"/>
    </c:when>
    <c:otherwise>
        <c:set var="questionIndex" value="${param.questionIndex}"/>
    </c:otherwise>
</c:choose>

<div class="f3">
    <div class="fc32">	 
        <c:import url="/pages/dynamicContent.jsp">
            <c:param name="page" value="${param.questionPrefix}${questionIndex}.jsp"/>
        </c:import>
    </div>
    <div class="fc31">
        <input type="radio" name="<c:out value="${param.propertyName}"/>.answer" value="Y" id="q<c:out value="${questionIndex}"/>y" <c:if test="${brokerAuditAnswer.yes}">checked</c:if>><label for="q<c:out value="${questionIndex}"/>y">Yes</label>
        <input type="radio" name="<c:out value="${param.propertyName}"/>.answer" value="N" id="q<c:out value="${questionIndex}"/>n" <c:if test="${brokerAuditAnswer.no}">checked</c:if>><label for="q<c:out value="${questionIndex}"/>n">No</label>
        <c:if test="${empty param.hideNA}">
            <input type="radio" name="<c:out value="${param.propertyName}"/>answer" value="N/A" id="q<c:out value="${questionIndex}"/>na" <c:if test="${brokerAuditAnswer.NA}">checked</c:if>><label for="q<c:out value="${questionIndex}"/>na">N/A</label>
        </c:if>
    </div>

    <c:if test="${brokerAuditAnswer.no}">
        <label for="q<c:out value="${questionIndex}"/>e">Explanation:</label><br>
        <textarea name="<c:out value="${param.propertyName}"/>.explanation" cols="80" rows="10" id="q<c:out value="${questionIndex}"/>e" wrap="virtual"><c:out value="${brokerAuditAnswer.explanation}"/></textarea>
    </c:if>
</div>