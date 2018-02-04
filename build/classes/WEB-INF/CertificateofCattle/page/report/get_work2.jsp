<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%int i=1; %>



	<!--************************ โคพัน ***********************************-->
<c:if test="${type==1}">
<table class="table table-striped table-hover  table-bordered">
		<thead>
					<tr>
						<th><center>ลำดับที่</center></th>
						<th><center>ชื่อโค</center></th>
						<th><center>วันเดือนปีเกิด</center></th>
						<th><center>สายพันธุ์</center></th>
						<th><center>เพศ</center></th>
					

				      
				        
				   </tr>
		</thead>
		<tbody>
			  <c:forEach items="${Worklist}" var="w">   
				     <tr>
				     		<td><div align="center"><%=i++ %></div></td>
						    <td><div align="center">${w.name}</div></td>
						    <td><div align="center">${w.birthday}</div></td>
						    <td><div align="center">${w.gene}</div></td>
							<td><div align="center">${w.sex}</div></td>
				         </tr>
				     
			  </c:forEach>
			   		<tr>
				      <td colspan="8"><br></td>
				      </tr>
		</tbody>
			</table>
</c:if>											
								
<c:if test="${type==2}">
<table class="table table-striped table-hover  table-bordered">
		<thead>
					<tr>
						<th><center>ลำดับที่</center></th>
						<th><center>ล็อตที่</center></th>
						<th><center>หมายเลขโค</center></th>
						<th><center>ชื่อโค</center></th>
						<th><center>วันเกิดโค</center></th>
				      	<th><center>สีโค</center></th>
				        
				   </tr>
		</thead>
		<tbody>
			  <c:forEach items="${Worklist}" var="w">   
				     <tr>
				     		<td><div align="center"><%=i++ %></div></td>
						    <td><div align="center">${w.lot}</div></td>
						     <td><div align="center">${w.privateNo}</div></td>
						    <td><div align="center">${w.name}</div></td>
							<td><div align="center">${w.birthday}</div></td>
							<td><div align="center">${w.color}</div></td>
				         </tr>
				     
			  </c:forEach>
			   		<tr>
				      <td colspan="8"><br></td>
				      </tr>
		</tbody>
			</table>
</c:if>


<c:if test="${type==3}">
<table class="table table-striped table-hover  table-bordered">
		<thead>
					<tr>
						<th><center>ลำดับที่</center></th>
						<th><center>ล็อตที่</center></th>
						<th><center>จำนวน</center></th>
						<th><center>สายพันธุุ์</center></th>
						<th><center>น้ำหนัก</center></th>

				        
				   </tr>
		</thead>
		<tbody>
			  <c:forEach items="${Worklist}" var="w">   
				     <tr>
				     		<td><div align="center"><%=i++ %></div></td>
						    <td><div align="center">${w.lot}</div></td>
						     <td><div align="center">${w.quantity}</div></td>
						    <td><div align="center">${w.gene}</div></td>
						    <td><div align="center">${w.weight}</div></td>
				      </tr>
				     
			  </c:forEach>
			   <tr>
				      <td colspan="8">
				      <br></td>
				      </tr>
		</tbody>
			</table>

</c:if>



<!--************************ โคขุน ***********************************-->
											
											

 <input type="hidden" name="type" id="type" value="${type}"/>
 <input type="hidden" name="num" id="num" value="${Worklist.size()}"/>
  <input type="hidden" name="wId" id="wId" value="${wId}"/>


