<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div data-ng-controller="IndividualForum">
	<div style="margin-top: 20px">
		<c:if test="${!empty forumList}">
			<c:forEach items="${forumList}" var="forum">
				<div style="background-color: lightgrey" hidden="true">
					<p style="padding: 10px; font-size: large" >
					<input type="number" value="${forum.fid}" id="fid">
					</p>
				</div>
				<div style="background-color: lightgrey">
					<p style="padding: 10px; font-size: large;">
						<strong>${forum.forumName}</strong>
					</p>
				</div>
				<div style="background-color: lightgrey">
					<p style="padding: 10px; font-size: medium">${forum.forumDesc}</p>
				</div>
			</c:forEach>
		</c:if>
	</div>
	<br>
	<sec:authorize access="isAuthenticated()">
	<div class="row">
	<form role="form" data-ng-submit="Comment()">
		<div class=" col-sm-11">
			<input type=text data-ng-model="commentDesc" class="form-control" placeholder="Enter Comment">
		</div>
		<div class=" col-sm-1">
			<button type="submit" data-ng-click="Comment()" class="btn btn-success" style="float: right"  >Comment</button>
		</div>
	</form>
	</div>
	</sec:authorize>
	<script src="${pageContext.request.contextPath}/resources/js/AngularControllers/IndividualForum.js"></script>
</div>