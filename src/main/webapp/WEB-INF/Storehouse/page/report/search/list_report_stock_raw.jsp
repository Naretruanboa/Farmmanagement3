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
				    	<th>ชื่อวัตถุดิบ</th>			      
				        <th>จำนวนคงคลัง</th>
				        <th>หน่วย</th>
				      </tr>
				</thead> 
				
				 	<tbody style="text-align: center;" > 
						<c:forEach items="${rawList}" var="raw">
						<tr>
							<td><%=i++%></td>						
				    		<td>${raw.name }</td>
				        	<td>
				        		<c:choose>
									<c:when test="${raw.quantity != null}">
										${raw.quantity }
									</c:when>
									<c:otherwise>
										0
									</c:otherwise>
								</c:choose>
				        	
				        	</td>	
				        	<td>${raw.unitRawMaterial.value }</td>	
						</tr>
						</c:forEach>
					</tbody>
<input type="hidden" id="count" value="${count}">
<input type="hidden" id="countPage" value="${countPage}"/>
<input type="hidden" id="Page" value="${page}"/>