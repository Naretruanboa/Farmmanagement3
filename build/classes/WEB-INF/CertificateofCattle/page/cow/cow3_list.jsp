<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>	
			
<c:forEach items="${cowfattenlist }" var="cow">
				      <tr>
				       <td class="text-center"><%=i++ %></td>
				     <td class="text-center">${cow.quantity}</td>
				      <td class="text-center">${cow.lot}</td>
				    <td class="text-center">${cow.gene}</td>
				   
				       <td class="text-center">
				  <a href="Edit3?id=${cow.id}"> <button type="button" class="btn btn-warning">
							<span class="glyphicon glyphicon-edit"></span></button></a>
						</td>    
							
					   <td class="text-center">
					   <a href="fatten_list?id=${cow.id}"><button type="button" class="btn btn-info">
				        	<span class="glyphicon glyphicon-list"></span></button></a>
				        	</td>		
							
				        <td class="text-center">
				   <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#del" 
							data-gid="${cow.id}"><span class="glyphicon glyphicon-trash"></span>
							</button></td>    	
				        
				      </tr>
			</c:forEach>
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>

