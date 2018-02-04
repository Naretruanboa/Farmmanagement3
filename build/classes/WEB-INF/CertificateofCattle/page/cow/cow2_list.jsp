<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>	
				 <c:forEach items="${cowstrainlist }" var="cow">
				      <tr>
				    <td class="text-center"><%=i++ %></td>
				    <td class="text-center">${cow.name}</td>
				    <td class="text-center">${cow.age}</td>
				    <td class="text-center">${cow.gene}</td>
				   <c:if test="${cow.sex=='male'}">
					<td class="text-center">เพศผู้</td>
				</c:if>
				<c:if test="${cow.sex=='female'}">
					<td class="text-center">เพศเมีย</td>
				</c:if>
				        <td><center><a href="Edit2?id=${cow.idcow }"><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#edit">
				        	<span class="glyphicon glyphicon-edit"></span></button></a></center></td>
				        
				        
				        	        <td class="text-center">
				   <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#del" 
							data-gid="${cow.idcow}"><span class="glyphicon glyphicon-trash"></span> 
							</button></td>    	
				      <%--   <td><center><a href="Del_Cow2?id=${cow.idcow}"><button type="button" class="btn btn-danger">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></center></td> --%>
				        
				      </tr>
				</c:forEach>
	      
	        
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>
