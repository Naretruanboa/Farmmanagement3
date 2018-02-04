<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page1");
	a=(a-1)*10;
int i=1+a; 
%>
<c:forEach items="${List }"  var="listt">
						<tr>
							<td><%=i++%></td>						
				    		<td>${listt.name }</td>	   
				    		<td>${listt.typeTool.value }</td>	   		
				        	<td>${listt.quantityBroken }</td>
				        	<td>${listt.quantity }</td>
				        	<td>${listt.unitTool.value }</td>	
				        	<td>
				        		<button type="button" class="btn btn-warning " data-toggle="modal" data-target="#myModal" 
							data-id1="${listt.id }" data-name="${listt.name }" data-beforequantity="${listt.quantity }">ส่งซ่อม
							</button>
				        	</td>	
				        
						</tr>
						</c:forEach>
<input type="hidden" id="countPage1" value="${count1}"/>
<input type="hidden" id="Page1" value="${page1}"/>						