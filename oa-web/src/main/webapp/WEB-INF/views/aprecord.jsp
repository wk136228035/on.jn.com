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
						<div class="col-lg-8"></div>
						<span class="col-lg-8" style="padding-left:888px"><button type="button"
								class="btn btn-outline btn-primary">新增</button>
							<button type="button" class="btn btn-outline btn-primary">修改</button>
						<span>
					</div>
					<hr/>
					<table class="col-lg-12" border="1">
						<thead style="font-size: 18;font-weight: bold">
								<td align="center"><input type="radio" class="employee_id" /></td>
								<td align="center">姓名</td>
								<td align="center">奖罚</td>
								<td align="center">缘由</td>
								<td align="center">内容</td>
								<td align="center">发起时间</td>
								<td align="center">结束时间</td>
						</thead>
						<tbody id="tbodyId">
							<c:forEach items="${list}" var="aprecord">
								<tr>
									<td align="center"><input type="radio" class="aprecord_id" value="${aprecord.id}" /></td>
									<td align="center">${aprecord.employeeId}</td>
									<td align="center" class="type">${aprecord.type}</td>
									<td align="center">${aprecord.description}</td>
									<td align="center">${aprecord.main}</td>
									<td align="center"><fmt:formatDate type="both" 
            								value="${aprecord.created}" /></td>
									<td align="center"><fmt:formatDate type="both" 
            								value="${aprecord.updated}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(function(){
		type();
	})
	
	function type(){
		$(".type").each(function(){
			var type = $(this).text();
			$(this).text((type==1)?"奖励":"惩罚");
		})
	}
</script>
