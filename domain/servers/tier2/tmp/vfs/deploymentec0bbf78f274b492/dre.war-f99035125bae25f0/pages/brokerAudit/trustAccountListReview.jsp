<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table class="dataTableReview" cellspacing="0" summary="list of all General/Sales/Earnest Trust Accounts">
    <tr>
        <th class="dataTableReviewHeaderCenter" ><bean:message key="p320.title.taTitle" /></th>
        <th class="dataTableReviewHeaderCenter" >&nbsp;<bean:message key="p320.title.name" />&nbsp;</th>
        <th class="dataTableReviewHeaderCenter"       ><bean:message key="p320.title.add" /></th>
        <th class="dataTableReviewHeaderCenter" >&nbsp;<bean:message key="p320.title.num" />&nbsp;</th>
    </tr>
    <c:choose>
        <c:when test="${!empty trustAccounts}">
            <c:forEach var="trustAccount" items="${trustAccounts}">
            <tr>
                <td class="dataTableReviewCell" ><c:out value="${trustAccount.title}"/></td>
                <td class="dataTableReviewCell" ><c:out value="${trustAccount.institutionName}"/></td>
                <td class="dataTableReviewCell" ><c:out value="${trustAccount.institutionAddress}"/></td>
                <td class="dataTableReviewCell" ><c:out value="${trustAccount.accountNumber}"/></td>
            </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <tr>
                <td class="dataTableReviewCell" >None</td>
                <td class="dataTableReviewCell" >None</td>
                <td class="dataTableReviewCell" >None</td>
                <td class="dataTableReviewCell" >None</td>
            </tr>
        </c:otherwise>
    </c:choose>
</table>