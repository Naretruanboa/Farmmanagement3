<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>    
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>		
				<thead >
								<tr>
									<th>ลำดับที่</th>
									<th>รายการ</th>
									<th>จำนวน</th>
									<th>หน่วย</th>
								</tr>
							</thead> 
								<tbody style="text-align: center;">
									<c:forEach items="${MedList }" var="medim" >

									<tr>
									<td><%=i++%></td>
									<td>${medim.medicine.tradeName }</td>
									<td>${medim.quantity }</td>
									<td>${medim.medicine.unitMedicine.value }</td>
									</tr>
</c:forEach>
								</tbody>				
<input type="hidden" id="count" value="${count}">
<input type="hidden" id="countPage" value="${countPage}"/>
<input type="hidden" id="Page" value="${page}"/>