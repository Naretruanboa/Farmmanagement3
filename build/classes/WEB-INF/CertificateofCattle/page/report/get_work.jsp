<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/WEB-INF/includes.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%int i=1; %>



	<!--************************ โคพัน ***********************************-->
											
								
<c:if test="${type==2}">
<table class="table table-striped table-hover  table-bordered">
		<thead>
					
						<th><center>ลำดับที่</center></th>
						<th><center>ล็อตที่</center></th>
						<th><center>หมายเลขโค</center></th>
						<th><center>ชื่อโค</center></th>
						  <th><center>ผู้ประมูล</center></th>
				        <th><center>ราคาสิ้นสุด</center></th>
				        <th><center>ราคาเปอร์เซ็นต์</center></th>
				        <th><center>ราคาหักเปอร์เซ็นต์</center></th>
				      
				        
				   </tr>
		</thead>
		<tbody>
			  <c:forEach items="${Worklist}" var="w">   
				     <tr>
				     		<td><div align="center"><%=i++ %></div></td>
						    <td><div align="center">${w.lot}</div></td>
						     <td><div align="center">${w.privateNo}</div></td>
						    <td><div align="center">${w.name}</div></td>
						    <td><div align="center"><input type="text" id="bidder" name="bidder" value="${w.bidder}" class="form-control" placeholder="ผู้ประมูล" style="width: 180px;"/></div></td></div></td>
				        	<td><div align="center">
				        	<input type="hidden" id="c_id" value="${w.id }"  name="c_id" class="form-control">
				        	<input type="text" id="Eprice" name="Eprice" value="${w.strainEndPrice }" class="form-control" placeholder="ราคาสิ้นสุด" style="width: 100px;"/></div></td>
				        	<td><center><input type="text" id="percen" name="percen" class="form-control" value="${w.strainPercen}"  placeholder="ราคาหักเปอร์เซ็นต์" style="width: 100px;" readonly/></center></td>
				        	<td><center><input type="text" id="percen" name="percen" class="form-control" value="${w.strainExcise}" placeholder="ราคาหักเปอร์เซ็นต์" style="width: 100px;" readonly/></center></td>
				         </tr>
				     
			  </c:forEach>
			   		<tr>
				      <td colspan="8"><br></td>
				      </tr>
		</tbody>
			</table>
</c:if>






<!--************************ โคขุน ***********************************-->
											
											
<c:if test="${type==3}">
<table class="table table-striped table-hover  table-bordered">
		<thead>
					<tr>
						<th><center>ลำดับที่</center></th>
						<th><center>ล็อตที่</center></th>
						<th><center>จำนวน</center></th>
						<th><center>สายพันธุุ์</center></th>
						  <th><center>ผู้ประมูล</center></th>
				        <th><center>ราคาสิ้นสุด</center></th>
				         <th><center>ราคาเปอร์เซ็นต์</center></th>
				        <th><center>ราคาหักเปอร์เซ็นต์</center></th>

				        
				   </tr>
		</thead>
		<tbody>
			  <c:forEach items="${Worklist}" var="w">   
				     <tr>
				     		<td><div align="center"><%=i++ %></div></td>
						    <td><div align="center">${w.lot}</div></td>
						     <td><div align="center">${w.quantity}</div></td>
						    <td><div align="center">${w.gene}</div></td>
						    <td><div align="center"><input type="text" id="bidder" name="bidder" value="${w.bidder}" class="form-control" placeholder="ผู้ประมูล" style="width: 180px;"/></div></td></div></td>
				        	<td><div align="center">
				        	<input type="hidden" id="c_id" value="${w.id }"  name="c_id" class="form-control">
				        	<input type="text" id="Eprice" value="${w.endPrice }"  name="Eprice" class="form-control" placeholder="ราคาสิ้นสุด" style="width: 100px;""/></div></td>
				        	<td><center><input type="text" id="percen" name="percen" class="form-control" value="${w.totalPercen}"  placeholder="ราคาหักเปอร์เซ็นต์" style="width: 100px;" readonly/></center></td>
				        	<td><center><input type="text" id="percen" name="percen" class="form-control" value="${w.totalExcise}"  placeholder="ราคาหักเปอร์เซ็นต์" style="width: 100px;" readonly/></center></td>
							
				      </tr>
				     
			  </c:forEach>
			   <tr>
				      <td colspan="8">
				      <br></td>
				      </tr>
		</tbody>
			</table>

</c:if>
 <input type="hidden" name="type" id="type" value="${type}"/>
 <input type="hidden" name="num" id="num" value="${Worklist.size()}"/>


