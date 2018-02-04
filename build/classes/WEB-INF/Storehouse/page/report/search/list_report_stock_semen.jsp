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
				    	<th>หมายเลขน้ำเชื้อ/ชื่อพ่อพันธุ์</th>
				    	<!-- <th>สายพันธุ์</th>	 -->			      
				        <th>จำนวนคงคลัง</th>
				        <th>หน่วย</th>
				       	        
				      </tr>
				</thead> 
				<tbody style="text-align: center;"> 
					<c:forEach items="${semenList }" var="semen">
						<tr>
							<td><%=i++%></td>						
				    		<td>${semen.nameCattle }</td>	
				    		<%-- <td>${semen.breed.value }</td>--%> 	
				        	<td>${semen.quantity }</td>	
				        	<td>หลอด (โดีส)</td>	
				        	
						</tr>
					</c:forEach>		
				</tbody>
<input type="hidden" id="count" value="${count}">
<input type="hidden" id="countPage" value="${countPage}"/>
<input type="hidden" id="Page" value="${page}"/>