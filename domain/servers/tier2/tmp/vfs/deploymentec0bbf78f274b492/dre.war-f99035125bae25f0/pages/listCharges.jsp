<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<table class="data_table" summary="list of fees" cellspacing="1">
<tbody>
<tr>
    <th class="data_table_header_center" nowrap="nowrap" width="180">Description</th>
    <th class="data_table_header_center" nowrap="nowrap" width="80">Quantity</th>
    <th class="data_table_header_center" nowrap="nowrap" width="80">Amount</th>
</tr>
<!-- ========================================================================= -->
<c:forEach items="${workflowOrder.products}" var="product">
<tr class="data_row_even">
    <td class="data" nowrap="nowrap"><c:out value="${product.description}" /></td>
    <td class="data" nowrap="nowrap" align="right"><c:out value="${product.quantity}" /></td>
    <td class="data_right" nowrap="nowrap">
        <fmt:formatNumber type="currency" value="${product.amount / 100}" maxFractionDigits="2" minFractionDigits="2" />
    </td>
</tr>
</c:forEach> 
<!-- ========================================================================= -->
<tr><td class="data" colspan="2" height="2" nowrap="nowrap"><img src="htdocs/images/spacer.gif" alt="" border="0" height="1" width="1"></td></tr>
<!-- ========================================================================= -->
<tr class="data_row_odd">
    <td class="data" nowrap="nowrap">Total</td>
    <td class="data" nowrap="nowrap"></td>
    <td class="data_right" nowrap="nowrap">
        <fmt:formatNumber type="currency" value="${workflowOrder.totalAmount / 100}" maxFractionDigits="2" minFractionDigits="2" />
    </td>
</tr>
</tbody>
</table>
