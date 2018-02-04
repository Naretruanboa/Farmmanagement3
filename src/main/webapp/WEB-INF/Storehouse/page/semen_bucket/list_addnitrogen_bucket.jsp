<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>  
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${BucList}" var="bucket">
<fmt:parseDate value="${bucket.dayInN}" pattern="yyyy-MM-dd" var="dayInN" />
<fmt:parseDate value="${bucket.dayExpN}" pattern="yyyy-MM-dd" var="dayExpN" />
			    	<tr>
			    		<td><%=i++%></td>
						<td>${bucket.number}</td>
						<td>${bucket.name } ขนาด ${bucket.size } ลิตร</td>
						<td>${bucket.place}</td>
						<td><fmt:formatDate value="${dayInN}" pattern="dd-MM-yyyy"/></td>   
						<td><fmt:formatDate value="${dayExpN}" pattern="dd-MM-yyyy"/></td>   
						<td>
							<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#myModal" 
							data-id1="${bucket.id }" data-dayInN="${bucket.dayInN }" data-dayExpN="${bucket.dayExpN }">
								<i class="glyphicon glyphicon-plus-sign"></i>
							</button>
						</td>
				   		
				          
				 	</tr>   
</c:forEach>
<tr>
<td colspan="9"><br></td>
</tr>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>