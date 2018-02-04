<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>	
				   <c:forEach items="${cowshowlist }" var="cow">
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
				    
				   
				  <%--  <td class="text-center"><a href="EditCow1?id=${cow.idcow}"><button type="button" class="btn btn-primary glyphicon glyphicon-pencil">
				        	</button></a></td> --%>
				    <td class="text-center">
				  <a href="Edit1?id=${cow.idcow }"> <button type="button" class="btn btn-warning">
							<span class="glyphicon glyphicon-edit"></span></button></a>
					</td>    
				 <%--        <td class="text-center"><a href="Del_Cow1?id=${cow.idcow}"><button type="button" class="btn btn-danger glyphicon glyphicon-remove" id="del">
				        	</button></a></td> --%>
				        <td class="text-center">
				   <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#del" 
							data-gid="${cow.idcow}"><span class="glyphicon glyphicon-trash"></span>
							</button></td>    
				      <%--   <td><center><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit" data-gname="${type.name}" data-gid="${type.id}">
				        	<span class="glyphicon glyphicon-pencil"></span></button></a></td>
				        
				        <td><center><a href="#"><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#delete">
				        	<span class="glyphicon glyphicon-remove"></span></button></a></center></td> --%>
				        
				        
				      </tr>
				</c:forEach>
	      
	        
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>
