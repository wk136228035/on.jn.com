<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox ">
				<div class="ibox-content col-lg-12">
					<div class="col-lg-12">
						<div class="col-lg-8"><input type="hidden"></div>
						<div class="col-lg-3" align="right"><button type="button"
								class="btn btn-outline btn-primary">新增</button>
							<button type="button" class="btn btn-outline btn-primary">修改</button>
						</div>
					</div>
					<hr/>
					<table class="col-lg-12">
						<thead>
								<td align="center"><input type="checkbox" class="record_id" /></td>
								<td align="center">员工</td>
								<td align="center">职位</td>
								<td align="center">状态</td>
								<td align="center">入职时间</td>
								<td align="center">离职时间</td>
						</thead>
						<tbody id="tbodyId">
							<c:forEach items="${recordList}" var="record">
								<tr>
									<td align="center"><input type="checkbox" class="record_id" value="${record.id}" /></td>
									<td align="center">${record.employeeId}</td>
									<td align="center">${record.employeeJob}</td>
									<td align="center">${record.employeeStatus}</td>
									<td align="center"><fmt:formatDate type="both" 
            								value="${record.employeeCreated}" /></td>
									<td align="center"><fmt:formatDate type="both" 
            								value="${record.employeeUpdated}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
