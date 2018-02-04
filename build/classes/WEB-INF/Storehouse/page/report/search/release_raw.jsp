<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/includes.jsp"%>   
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>	
<thead>
	<tr>
		<th>ลำดับที่</th>
		<th>รายการ</th>
		<th>จำนวน</th>
		<th>หน่วย</th>
	</tr>
</thead>
<tbody style="text-align: center;">
<c:forEach items="${RawList }" var="rawim">
	<tr>
		<td><%=i++%></td>
		<td>${rawim.rawMaterial.name }</td>
		<td>${rawim.quantity }</td>
		<td>${rawim.rawMaterial.unitRawMaterial.value }</td>
	</tr>
</c:forEach>
</tbody>
<input type="hidden" id="count" value="${count}">
<input type="hidden" id="countPage" value="${countPage}"/>
<input type="hidden" id="Page" value="${page}"/>