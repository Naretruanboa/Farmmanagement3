<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/includes.jsp"%>
<%
int a = (int)request.getAttribute("page");
	a=(a-1)*10;
int i=1+a; 
%>	
				     <c:forEach items="${festivitylist}" var="f"> 
				    <tr>
				    <td class="text-center"><%=i++ %></td>
				    <c:if test="${authId==1||authId==2}">
				     <td class="text-center">
				<%--   <select name="check" id="check" class="form-control">
		
				  	<option value="1" <c:if test="${f.newStatus==1}">selected</c:if>>ON</option>
				  	<option value="0" <c:if test="${f.newStatus==0}">selected</c:if>>OFF</option>

				  </select> --%>
				  	
				    <input type="hidden" name="id" id="id" value="${f.id}"/>
					<input type="hidden" name="check" id="check[${f.id }]" value="0" <c:if test="${f.newStatus==1}">disabled</c:if>/>
				  <input type="checkbox" name="check" onclick="Javascript: if(this.checked){document.getElementById('check[${f.id }]').disabled = true;}else{document.getElementById('check[${f.id }]').disabled = false;}" 
				  value="1" <c:if test="${f.newStatus==1}">checked</c:if>/>
				
				  </td>
				  </c:if>
				     <td class="text-center">${f.title}</td>
				    <td class="text-center">${f.typeName}</td>	    
				     <td class="text-center">${f.gene}</td>	    				    
				     <td class="text-center">${f.SWork}</td>
		
				        	<c:if test="${authId==1||authId==2}">
			        <td><center><a href="Edit_Work?id=${f.id}"><button type="button" class="btn btn-warning">
				   	<span class="glyphicon glyphicon-edit"></span></button></a></center></td>
				   	
				         <td class="text-center">
				   <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#del" 
							data-gid="${f.id}">
							<span class="glyphicon glyphicon-trash"></span></button></td>    	
				   	
				        	</c:if>
			
			        <td><center><a href="cow_addWork${f.typeId}?gene=${f.gene}&id=${f.id}"><button type="button" class="btn btn-success">
				        	<span class="glyphicon glyphicon-plus-sign"></span></button></a></center></td>
				      </tr>
				
	        	</c:forEach>
	        		  <input type="hidden" name="num" id="num" value="${num}"/>
	      
	        
<input type="hidden" id="countPage" value="${count}"/>
<input type="hidden" id="Page" value="${page}"/>
